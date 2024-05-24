#include <Question.hpp>

Answer::Answer(const std::vector<std::string>& pA, const std::vector<std::string>& iA):
partialAnswers{pA}, incorrectAnswer{iA}{/*empty*/}

Question::Question(const std::string& s, const Answer& a, const Style& stl, const size_t& tp):
statement{s}, answer{a}, style{stl}, currentPoints{tp}
{/*empty*/}

size_t Question::Answer_amount()
{
    return answer.partialAnswers.size();
}

void Question::fill_answers(std::vector<std::string*>& answers)
{
    srand(time(NULL));
    size_t i = Answer_amount();
    size_t j = answer.incorrectAnswer.size();
    while(i != 0 || j != 0)
    {
        while(i == 0 && j != 0)
        {
            answers.push_back(&answer.incorrectAnswer[answer.incorrectAnswer.size()-j]);
            --j;
        }
        if(i == 0 && j == 0)
        {break;}
        while(j == 0 && i != 0)
        {
            answers.push_back(&answer.partialAnswers[Answer_amount()-i]);
            --i;
        }
        if(i == 0 && j == 0)
        {break;}
        size_t k = rand()%2;
        if(k == 0)
        {
            answers.push_back(&answer.partialAnswers[Answer_amount()-i]);
            --i;
        }
        else if(k == 1)
        {
            answers.push_back(&answer.incorrectAnswer[answer.incorrectAnswer.size()-j]);
            --j;
        }
    }
}

Style Question::get_style()
{
    return style;
}

std::vector<std::string> Question::Simple_selection(const bool firstQuestion)
{
    system("clear");
    bool invalid = false;
    std::vector<std::string*> answers;
    fill_answers(answers);
    std::vector<std::string> picked_options;
    do
    {
        std::cout << statement << "\n";
        std::cout << std::endl;
        for(size_t i = 0; i < answers.size(); ++i)
        {
            std::cout << char(i+97) << "): " << *answers[i] << std::endl;
        }
        if(!firstQuestion)
        {std::cout << "1: Pregunta anterior\n";}
        std::cout << "0: Volver al menú de módulo" << std::endl;
        std::string cancel = get_picked_options(picked_options, firstQuestion);
        if(cancel != "")
        {return {cancel};}
        invalid = !validate_selection_options(picked_options, answers);
        if(!invalid)
        {
            break;
        }
        picked_options.clear();
        system("clear");
        std::cout  << "Opción no válida" << std::endl;
    } while (invalid);
    return get_option_answer(picked_options, answers);
}

std::string Question::get_picked_options(std::vector<std::string>& picked_options, const bool firstQuestion)
{
    for(size_t i = 0; i < Answer_amount(); ++i)
    {
        std::string picked_optionI;
        std::cin >> picked_optionI;
        if(picked_optionI == "0" || (picked_optionI == "1" && !firstQuestion)){return picked_optionI;}
        picked_options.push_back(picked_optionI);
    }
    return "";
}

bool Question::validate_selection_options(const std::vector<std::string>& picked_options, const std::vector<std::string*>& answers)
{
    for(size_t i = 0; i < picked_options.size(); ++i)
    {
        if(picked_options[i].size() != 1
            || (int(picked_options[i][0]) < 97 || int(picked_options[i][0]) >= 97 + answers.size()))
        {return false;}
    }
    return true;
}

std::vector<std::string> Question::get_option_answer(const std::vector<std::string>& picked_options, const std::vector<std::string*>& answers)
{
    std::vector<std::string> selection;
    for(size_t i = 0; i < picked_options.size(); ++i)
    {
        selection.push_back(*answers[int(picked_options[i][0])-97]);
    }
    return selection;
}

std::vector<std::string> Question::True_or_false(const bool firstQuestion)
{
    system("clear");
    bool invalid = true;
    std::string selection;
    do
    {
        std::cout << statement << "\n\n";
        std::cout << "V)\n";
        std::cout << "F)\n";
        std::cout << "1: Pregunta anterior\n";
        std::cout << "0: Volver a menú de módulo" << std::endl;
        std::cin >> selection;
        if(selection == "0" || selection == "1")
        {
            return{selection};
        }
        if(selection.size() != 1
            || (selection != "V" && selection != "v" && selection != "F"
            && selection != "f"))
        {
            selection.clear();
            system("clear");
            std::cout << "Opción no válida\n";
            continue;
        }
        invalid = false;
    } while (invalid);
    if(selection == "v")
    {
        selection = "V";
    }
    else if(selection == "f")
    {
        selection = "F";
    }
    return {selection};
}

std::vector<std::string> Question::Manual_completition(const bool firstQuestion)
{
    system("clear");
    bool invalid = true;
    std::vector<std::string> selection;
    do
    {
        std::cout << statement << '\n';
        std::cout << "1: Pregunta anterior\n";
        std::cout << "0: Volver a menú de módulo" << std::endl;
        std::string cancel = get_picked_options(selection, firstQuestion);
        if(cancel != "")
        {
            return {cancel};
        }
        break;
    } while (invalid);
    for(size_t i = 0; i < selection.size(); ++i)
    {
        Capitalyze(selection[i]);
    }
    return selection;
}

void Question::Capitalyze(std::string& selectionI)
{
    unsigned int current = int(selectionI[0]);
    if(current > 96 && current < 123)
    {
        selectionI[0] = char(current - 32);
    }
    for(size_t j = 1; j < selectionI.size(); ++j)
    {
        current = int(selectionI[j]);
        if(current > 64 && current < 91)
        {
            selectionI[j] = char(current + 32);
        }
    }
}

void Question::check_correctAnswers(const std::vector<std::string>& selectedAnswers)
{
    size_t localCurrentPoints = 0;
    for(size_t i = 0; i < Answer_amount(); ++i)
    {
        if(selectedAnswers[i] != answer.partialAnswers[i])
        {
            answer.correctAnswers.push_back(false);
            continue;
        }
        answer.correctAnswers.push_back(true);
        ++localCurrentPoints;
    }
    this->currentPoints = localCurrentPoints;
}

const size_t Question::points()
{
    return currentPoints;
}

std::string Question::current_over_total_points()
{
    std::string result = std::to_string(currentPoints);
    result += "/";
    result += std::to_string(Answer_amount());
    result += "\n";
    return result;
}