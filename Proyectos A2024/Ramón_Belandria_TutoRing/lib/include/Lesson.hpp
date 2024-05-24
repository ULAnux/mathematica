#pragma once

#include <Lecture.hpp>
#include <Question.hpp>
#include <fstream>

static std::ifstream fin;
static std::ofstream fout;

class Lesson
{
private:

    Lecture lecture;
    std::vector<Question> questions;
    size_t currentPoints;
    bool unlocked;
    size_t maxPoints;

public:

    Lesson(const Lecture& l, const std::vector<Question>& q, const size_t cP = 0, const bool ul = false);

    size_t show_lesson();

    std::string interruption(const std::vector<std::string>& selectedAnswers);

    std::string exit();

    void delete_all_answers();

    std::string post_question_menu(Question& question, const bool final_question, const bool firstQuestion);

    Question operator[] (size_t question_index);

    void set_current_points();

    size_t current_points();

    void unlock();

    bool is_unlocked();

    size_t Max_Points();
};