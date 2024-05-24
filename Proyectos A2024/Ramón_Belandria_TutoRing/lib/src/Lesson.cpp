#include <Lesson.hpp>

Lesson::Lesson(const Lecture& l, const std::vector<Question>& q, const size_t cP, const bool ul):
lecture{l}, questions{q}, currentPoints{cP}, unlocked{ul}
{
    this->maxPoints = questions[0].Answer_amount();
    for(size_t i = 1; i < questions.size(); ++i)
    {
        this->maxPoints += questions[i].Answer_amount();
    }
}

size_t Lesson::show_lesson()
{
    if(unlocked == false)
    {
        std::cout << "Esta lección está bloqueada" << std::endl;
        return 0;
    }
    size_t selectedOption = lecture.show_element();
    if(selectedOption == 0)
    {
        return selectedOption;
    }
    size_t answeredQuestions = 0;
    for(size_t i = 0; i < questions.size();)
    {
        bool firstQuestion = i == 0;
        bool finalQuestion = i == (questions.size() - 1);
        std::vector<std::string> selectedAnswers;
        switch (questions[i].get_style())
        {
        case Style::Simple_selection:
            selectedAnswers = questions[i].Simple_selection(firstQuestion);
            break;
        case Style::True_or_false:
            selectedAnswers = questions[i].True_or_false(firstQuestion);
            break;
        case Style::Manual_completition:
            selectedAnswers = questions[i].Manual_completition(firstQuestion);
            break;
        default:
            break;
        }
        std::string cancel = interruption(selectedAnswers);
        if(cancel == "1")
        {
            questions[i].delete_answer();
            --i;
            continue;
        }
        if(cancel == "0")
        {
            delete_all_answers();
            return 0;
        }
        if(cancel == "00")
        {
            continue;
        }
        questions[i].check_correctAnswers(selectedAnswers);
        cancel = post_question_menu(questions[i],finalQuestion,firstQuestion);
        if(cancel == "n")
        {
            ++i;
            continue;
        }
        if(cancel == "0")
        {
            delete_all_answers();
            return 0;
        }
        questions[i].delete_answer();
        --i;
    }
    set_current_points();
    ++selectedOption;
    return selectedOption;
}

std::string Lesson::interruption(const std::vector<std::string>& selectedAnswers)
{
    const std::vector<std::string> zero = {"0"};
    const std::vector<std::string> previous = {"1"};
    std::string selection;
    if(selectedAnswers == zero)
    {
        return exit();
    }
    if(selectedAnswers == previous)
    {
        return "1";
    }
    return "";
}

std::string Lesson::exit()
{
    system("clear");
    bool invalid = true;
    std::string selection;
    do
    {
        std::cout << "¿Está seguro que desea volver al menú de módulo?\n";
        std::cout << "Aviso: no se guardará el progreso realizado en las preguntas\n";
        std::cout << "0 No\n";
        std::cout << "1 Sí" << std::endl;
        std::cin >> selection;
        if(selection.size() != 1 || (selection != "0" && selection != "1"))
        {
            system("clear");
            std::cout << "Opción no válida\n";
            continue;
        }
        invalid = false;
    } while (invalid);
    if(selection == "0")
    {
        return "00";
    }
    return "0";
}

void Lesson::delete_all_answers()
{
    for(size_t i = 0; i < questions.size(); ++i)
    {questions[i].delete_answer();}
}

std::string Lesson::post_question_menu(Question& question, const bool final_question, const bool firstQuestion)
{
    system("clear");
    std::string input;
    bool invalid = false;
    do
    {
        if(question.points() != question.Answer_amount() && question.Answer_amount() > 1)
        {std::cout << "Respuesta(s) incorrecta(s)\n";}
        else if(question.points() == 0 && question.Answer_amount() == 1)
        {std::cout << "Respuesta incorrecta\n";}
        else if (question.Answer_amount() > 1)
        {std::cout << "Respuestas correctas\n";}
        else{std::cout << "Respuesta correcta\n";}
        std::cout << question.current_over_total_points();
        if(firstQuestion)
        {
            std::cout << "n: Ir a la siguiente pregunta\n";
            std::cout << "0: Volver al menú de módulo";
        }
        else if(final_question)
        {
            std::cout << "n: Volver al menú de módulo\n";
            std::cout << "1: Ir a la pregunta anterior";
        }
        else
        {
            std::cout << "n: Ir a la siguiente pregunta\n";
            std::cout << "1: Ir a la pregunta anterior\n";
            std::cout << "0: Volver al menú de módulo";
        }
    
        std::cout << std::endl;
        std::cin >> input;
        std::string cancel;
        if(input == "0" && !final_question){cancel = exit();}
        invalid = !(input == "n" || (input == "1" && !firstQuestion) || (cancel == "0" && !final_question));
        if(cancel == "00")
        {
            system("clear");
            continue;
        }
        if(!invalid)
        {
            break;
        }
        system("clear");
        std::cout << "Opción no válida\n";
    } while (invalid);
    return input;
}

Question Lesson::operator[] (size_t question_index)
{
    return questions[question_index];
}

void Lesson::set_current_points()
{
    size_t pointsToSet = 0;
    for(size_t i = 0; i < questions.size(); ++i)
    {
        pointsToSet += questions[i].points();
    }
    if(pointsToSet > this->currentPoints)
    {
        this->currentPoints = pointsToSet;
    }
}

size_t Lesson::current_points()
{
    return currentPoints;
}

void Lesson::unlock()
{
    unlocked = true;
}

bool Lesson::is_unlocked()
{
    return unlocked;
}

size_t Lesson::Max_Points()
{
    return maxPoints;
}