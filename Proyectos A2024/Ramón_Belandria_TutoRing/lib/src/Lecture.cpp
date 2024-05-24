#include <Lecture.hpp>

Lecture::Lecture(const std::string& ti,const std::string& tex): tittle{ti}, text{tex}{/*empty*/}

size_t Lecture::show_element() noexcept
{
    bool invalid = false;
    size_t selectedOption;
    system("clear");
    do
    {
        std::cout << tittle << ": " << std::endl;
        std::cout << text << std::endl;
        std::cout << "Ingrese el número correspondiente a la opción deseada" << std::endl;
        std::cout << "0: Volver al menú de opción                                         1: Ejercicios" << std::endl;
        std::string input;
        std::cin >> input;
        if(input.size() != 1 || !isdigit(input[0]) || (input != "0" && input != "1"))
        {
            system("clear");
            std::cout << "Opción no válida" << std::endl;
            continue;
        }
        selectedOption = std::stoul(input);
        invalid = false;
    } while (invalid);
    return selectedOption;
}