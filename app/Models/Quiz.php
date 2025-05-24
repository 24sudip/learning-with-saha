<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Quiz extends Model {
    use HasFactory;
    protected $guarded = [];

    public function questions() {
        return $this->hasMany(McqQuestion::class);
    }

    public function lesson() {
        return $this->belongsTo(Lesson::class);
    }
}
