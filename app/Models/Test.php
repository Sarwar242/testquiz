<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Test extends Model
{
    use HasFactory;
    protected $fillable = [
        'user_name', 'rating', 'correct_answer', 'total_answer', 'quiz_id'
    ];

    public function quiz(){
        return $this->belongsTo(Quiz::class);
    }
}
