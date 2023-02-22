<?php

namespace App\Http\Controllers;

use App\Models\Test;
use App\Models\Quiz;
use App\Models\Question;
use App\Models\Answer;
use Illuminate\Http\Request;
use App\Http\Requests\TestRequest;
use DB;
use Exception;

class TestController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $test =Test::all();
        return response()->json([
            "success"   => true,
            'message'   => 'All of the tests!',
            "data"      => $test
            ],200);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function testCheck(TestRequest $request)
    {
        $validated = $request->validated();
        $correct_answer=0;
        $total_answer=count($validated["answers"]);
        foreach($validated["answers"] as $ans){
            $question = Question::find($ans["question_id"]);
            foreach($question->answers as $answer){
                if($answer->is_correct && ($answer->answer === $ans["answer"])){
                    $correct_answer+=1;
                }
            }
        }
        try{
            DB::beginTransaction();
            $test = new Test;
            $test->user_name = $validated["user_name"];
            $test->rating = $validated["rating"];
            $test->correct_answer = $correct_answer;
            $test->total_answer = $total_answer;
            $test->quiz_id = $validated["quiz_id"];
            $test->save();
            DB::commit();
            return response()->json([
            "success"   => true,
            'message'   => 'The Test is over;',
            "data"      => $test
            ],200);
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
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        //
    }
    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Test $test)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy($id)
    {
        $test=Test::find($id);
        if(is_null($test)){
            return response()->json([
                "success" => false,
                'message' => 'The Test does not exists;',
            ],404);
        }
        $test->delete();
        return response()->json([
            "success"   => true,
            'message'   => 'The Test has been deleted successfully;',
            ],200);
    }
}
