#pragma once

#include<iostream>
#include<vector>

struct Answer
{
    std::vector<std::string> partialAnswers;
    std::vector<std::string> incorrectAnswer;
    std::vector<bool> correctAnswers;

    Answer(const std::vector<std::string>& pA, const std::vector<std::string>& iA);
};

enum class Style
{
    Simple_selection, True_or_false, Manual_completition
};

class Question
{
private:

    std::string statement;
    Answer answer;
    Style style;
    size_t currentPoints;

public:

    Question(const std::string& s, const Answer& a, const Style& stl, const size_t& cp = 0);

    size_t Answer_amount();

    inline void delete_answer()
    {
        answer.correctAnswers.clear();
    }

    void fill_answers(std::vector<std::string*>& answers);

    Style get_style();

    std::vector<std::string> Simple_selection(const bool firstQuestion);

    std::string get_picked_options(std::vector<std::string>& picked_options, const bool firstQuestion);

    bool validate_selection_options(const std::vector<std::string>& picked_options, const std::vector<std::string*>& answers);

    std::vector<std::string> get_option_answer(const std::vector<std::string>& picked_options, const std::vector<std::string*>& answers);

    std::vector<std::string> True_or_false(const bool firstQuestion);

    std::vector<std::string> Manual_completition(const bool firstQuestion);

    void Capitalyze(std::string& selectionI);

    void check_correctAnswers(const std::vector<std::string>& selectedAnswers);

    const size_t points();

    std::string current_over_total_points();
};