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
            'errors'   => null,
            "data"      => $test
            ],200);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function testCheck(TestRequest $request)
    {
        $validated = $request->validated();
        $correctAnswer=0;
        $totalAnswer=count($validated["answers"]);
        foreach($validated["answers"] as $ans){
            $question = Question::find($ans["question_id"]);
            foreach($question->answers as $answer){
                if($answer->isCorrect && ($answer->answer === $ans["answer"])){
                    $correctAnswer+=1;
                }
            }
        }
        try{
            DB::beginTransaction();
            $test = new Test;
            $test->userName = $validated["userName"];
            $test->rating = $validated["rating"];
            $test->correctAnswer = $correctAnswer;
            $test->totalAnswer = $totalAnswer;
            $test->quiz_id = $validated["quiz_id"];
            $test->save();
            DB::commit();
            return response()->json([
            "success"   => true,
            "errors"   => null,
            "data"      => $test
            ],201);
        }catch(Exception $e){

            \Log::error($e);
            DB::rollback();
            return response()->json([
                "success" => false,
                "errors"   =>  $e,
                "data"    => null,

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
                "errors"   => array("Test not found!"),
                "data"    => null,
            ],404);
        }
        $test->delete();
        return response()->json([
            "success"   => true,
            'errors'   => null,
            "data"      => null,
            ],200);
    }
}
