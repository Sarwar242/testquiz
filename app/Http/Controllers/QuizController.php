<?php

namespace App\Http\Controllers;

use App\Models\Quiz;
use App\Models\Question;
use App\Models\Answer;
use App\Http\Requests\QuizRequest;
use Illuminate\Http\Request;
use DB;
use Exception;

class QuizController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $quiz =Quiz::with('questions.answers')->get();
        return response()->json([
            "success"   => true,
            'message'   => 'All of the Quizzes!',
            "data"      => $quiz
            ],200);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(QuizRequest $request)
    {
        $validated = $request->validated();
        try{
            DB::beginTransaction();

            // Creating quiz first;
            $quiz = new Quiz;
            $quiz->title=$validated["title"];
            $quiz->description=$validated["description"];
            $quiz->is_published=$validated["is_published"];
            $quiz->save();

            // Creating questions under the created quiz
            foreach($validated["questions"] as $question){

                $question3 = new Question;
                $question3->question = $question["question"];
                $question3->is_mandatory=$question["is_mandatory"];
                $question3->quiz_id=$quiz->id;
                $question3->save();


                // Creating answers under questions
                foreach($question["answers"] as $answer){
                    \Log::alert($answer);
                    $answer2 = new Answer;
                    $answer2->answer=$answer["answer"];
                    $answer2->is_correct=$answer["is_correct"];
                    $answer2->question_id=$question3->id;
                    $answer2->save();

                }
            }
            DB::commit();
            $quiz2=Quiz::with('questions.answers')->find($quiz->id);
            return response()->json([
            "success"   => true,
            'message'   => 'The Quiz has been created successfully;',
            "data"      => $quiz2
            ],201);
        }catch(Exception $e){

            \Log::error($e);
            DB::rollback();
            return response()->json([
                "success" => false,
                'message' => 'There has been an error creating the Quiz;',
                "data"    => $e,

            ],400);
        }

    }

    /**
     * Display the specified resource.
     */
    public function show($id)
    {
        $quiz=Quiz::with('questions.answers')->find($id);
        if(is_null($quiz)){
            return response()->json([
                "success" => false,
                'message' => 'The Quiz does not exists;',
            ],404);
        }
        return response()->json([
        "success"   => true,
        'message'   => 'The Quiz details;',
        "data"      => $quiz
        ],200);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Quiz $quiz)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy($id)
    {
        $quiz=Quiz::find($id);
        if(is_null($quiz)){
            return response()->json([
                "success" => false,
                'message' => 'The Quiz does not exists;',
            ],404);
        }
        $quiz->delete();
        return response()->json([
            "success"   => true,
            'message'   => 'The Quiz has been deleted successfully;',
            ],200);
    }
}
