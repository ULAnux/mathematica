#include <Load_Data.hpp>

bool module_unlocked[] = {true, false, false};

size_t main_menu() noexcept;

void check_unlocked_modules();

void check_unlocked_lessons();

size_t current_points_in_module(const size_t index);

size_t max_points_in_module(const size_t index);

static size_t print_menu(const std::string& tittle, const std::vector<std::string>& options) noexcept;

size_t basic_module() noexcept;

size_t medium_module() noexcept;

size_t advanced_module() noexcept;

size_t score() noexcept;

int main()
{
    srand(time(NULL));
    load_data();
    bool open = 1;
    do
    {
        open = main_menu();
    }
    while(open);
    return 0;
}

size_t main_menu() noexcept
{
    bool open = 1;
    check_unlocked_modules();
    std::string mediumModule = "Módulo Medio";
    std::string advancedModule = "Módulo Avanzado";
    if(module_unlocked[1] == false)
    {
        mediumModule += ": Para desbloquear este módulo, se requieren "+std::to_string(max_points_in_module(0)/2)+" puntos en el módulo básico ("+std::to_string(current_points_in_module(0))+")";
    }
    if(module_unlocked[2] == false)
    {
        advancedModule += ": Para desbloquear este módulo, se requieren "+std::to_string(max_points_in_module(1)/2)+" puntos en el módulo medio ("+std::to_string(current_points_in_module(1))+")";
    }
    size_t selectedOption = print_menu("TutoRing:" ,{"Salir", "Módulo Básico", mediumModule, advancedModule, "Puntaje"});
    if(selectedOption == 0){return selectedOption;}
    switch (selectedOption)
    {
    case 1:
        do{open = basic_module();}
        while(open);
        break;
    case 2:
        do {open = medium_module();}
        while(open);
        break;
    case 3:
        do {open = advanced_module();}
        while(open);
        break;
    case 4:
        do{open = score();}
        while(open);
        break;
    }
    return selectedOption;
}

void check_unlocked_modules()
{
    if(lessons[3].is_unlocked())
    {
        module_unlocked[1] = true;
    }
    if(lessons[6].is_unlocked())
    {
        module_unlocked[2] = true;
    }
}

void check_unlocked_lessons()
{
    for(size_t i = 1; i < lessons.size(); ++i)
    {
        size_t currentPoints = lessons[i-1].current_points();
        if(i % 3 != 0 && currentPoints > 0)
        {
            lessons[i].unlock();
            continue;
        }
        currentPoints += lessons[i-2].current_points() + lessons[i-3].current_points();
        size_t minimalPointsToPass = (lessons[i-1].Max_Points() + lessons[i-2].Max_Points() + lessons[i-3].Max_Points())/2;
        if(currentPoints >= minimalPointsToPass && lessons[i-1].current_points() != 0)
        {
            lessons[i].unlock();
        }
    }
}

size_t current_points_in_module(const size_t index)
{
    if(index != 0 && index != 1 && index != 2)
    {
        return 0;
    }
    if(index == 0)
    {
        return lessons[0].current_points() + lessons[1].current_points() + lessons[2].current_points();
    }
    if(index == 1)
    {
        return lessons[3].current_points() + lessons[4].current_points() + lessons[5].current_points();
    }
    return lessons[6].current_points() + lessons[7].current_points() + lessons[8].current_points();
}

size_t max_points_in_module(const size_t index)
{
    if(index != 0 && index != 1 && index != 2)
    {
        return 0;
    }
    if(index == 0)
    {
        return lessons[0].Max_Points() + lessons[1].Max_Points() + lessons[2].Max_Points();
    }
    if(index == 1)
    {
        return lessons[3].Max_Points() + lessons[4].Max_Points() + lessons[5].Max_Points();
    }
    return lessons[6].Max_Points() + lessons[7].Max_Points() + lessons[8].Max_Points();
}

size_t print_menu(const std::string& tittle, const std::vector<std::string>& options) noexcept
{
    system("clear");
    size_t selectedOption;
    bool invalid;
    do
    {
        if(tittle != ""){std::cout << tittle << std::endl;}
        invalid = true;
        std::cout << "Ingrese el número correspondiente a la opción deseada" << std::endl;
        for(size_t i = 1; i < options.size(); ++i)
        {
            std::cout << i << ": " << options[i] << std::endl;
        }
        std::cout << 0 << ": " << options[0] << std::endl;
        std::string input;
        std::cin >> input;
        if(input.size() > 1 || !isdigit(input[0]))
        {
            system("clear");
            std::cout << "Ingrese una opción válida" << std::endl;
            continue;
        }
        selectedOption = std::stoul(input);
        if(selectedOption < 0 || selectedOption >= options.size())
        {
            system("clear");
            std::cout << "No hay opción "<< selectedOption << std::endl;
            continue;
        }
        invalid = false;
    }while(invalid);
    return selectedOption;
}

size_t basic_module() noexcept
{
    check_unlocked_lessons();
    std::string lesson2 = "Lección 2";
    if(!lessons[1].is_unlocked())
    {
        lesson2 += " Completa la lección anterior para desbloquear";
    }
    std::string lesson3 = "Lección 3";
    if(!lessons[2].is_unlocked())
    {
        lesson3 += " Completa las lecciones anteriores para continuar";
    }
    size_t selectedOption = print_menu("Módulo Básico", {"Volver al menú principal", "Lección 1", lesson2, lesson3});
    if(selectedOption == 0){return selectedOption;}
    switch(selectedOption)
    {
        case 1:
            lessons[0].show_lesson();
            break;
        case 2:
            lessons[1].show_lesson();
            break;
        case 3:
            lessons[2].show_lesson();
            break;
    }
    return selectedOption;
}

size_t medium_module() noexcept
{
    
    if(module_unlocked[1] == false)
    {
        std::cout << "Este módulo está bloqueado" << std::endl;
        return 0;
    }
    check_unlocked_lessons();
    std::string lesson1 = "Lección 1";
    if(!lessons[3].is_unlocked())
    {
        lesson1 += " Completa la lección anterior para desbloquear";
    }
    std::string lesson2 = "Lección 2";
    if(!lessons[4].is_unlocked())
    {
        lesson2 += " Completa la lección anterior para desbloquear";
    }
    std::string lesson3 = "Lección 3";
    if(!lessons[5].is_unlocked())
    {
        lesson3 += " Completa las lecciones anteriores para continuar";
    }
    size_t selectedOption = print_menu("Módulo Medio", {"Volver al menú principal", lesson1, lesson2, lesson3});
    if(selectedOption == 0){return selectedOption;}
    switch(selectedOption)
    {
        case 1:
            lessons[3].show_lesson();
            break;
        case 2:
            lessons[4].show_lesson();
            break;
        case 3:
            lessons[5].show_lesson();
            break;
    }
    return selectedOption;
}

size_t advanced_module() noexcept
{
    if(module_unlocked[2] == false)
    {
        std::cout << " Este módulo está bloqueado" << std::endl;
        return 0;
    }
    check_unlocked_lessons();
    std::string lesson2 = "Lección 2";
    if(!lessons[1].is_unlocked())
    {
        lesson2 += " Completa la lección anterior para desbloquear";
    }
    std::string lesson3 = "Lección 3";
    if(!lessons[2].is_unlocked())
    {
        lesson3 += " Completa las lecciones anteriores para continuar";
    }
    size_t selectedOption = print_menu("Módulo Avanzado", {"Volver al menú principal", "Lección 1", lesson2, lesson3});
    if(selectedOption == 0){return selectedOption;}
    switch(selectedOption)
    {
        case 1:
            lessons[6].show_lesson();
            break;
        case 2:
            lessons[7].show_lesson();
            break;
        case 3:
            lessons[8].show_lesson();
            break;
    }
    return selectedOption;
}

size_t score() noexcept
{
    std::string tittle = "Módulo Básico:\n";
                tittle+= "    Lección 1\n";
                tittle+= "        Pregunta 1: "; tittle += lessons[0][0].current_over_total_points(); tittle += '\n';
                tittle+= "        Pregunta 2: "; tittle += lessons[0][1].current_over_total_points(); tittle += '\n';
                tittle+= "        Pregunta 3: "; tittle += lessons[0][2].current_over_total_points(); tittle += '\n';
                tittle+= "    Lección 2\n";
                tittle+= "        Pregunta 1: "; tittle += lessons[1][0].current_over_total_points(); tittle += '\n';
                tittle+= "        Pregunta 2: "; tittle += lessons[1][1].current_over_total_points(); tittle += '\n';
                tittle+= "        Pregunta 3: "; tittle += lessons[1][2].current_over_total_points(); tittle += '\n';
                tittle+= "    Lección 3\n";
                tittle+= "        Pregunta 1: "; tittle += lessons[2][0].current_over_total_points(); tittle += '\n';
                tittle+= "        Pregunta 2: "; tittle += lessons[2][1].current_over_total_points(); tittle += '\n';
                tittle+= "Módulo Medio:\n";
                tittle+= "    Lección 1\n";
                tittle+= "        Pregunta 1: "; tittle += lessons[3][0].current_over_total_points(); tittle += '\n';
                tittle+= "        Pregunta 2: "; tittle += lessons[3][1].current_over_total_points(); tittle += '\n';
                tittle+= "    Lección 2\n";
                tittle+= "        Pregunta 1: "; tittle += lessons[4][0].current_over_total_points(); tittle += '\n';
                tittle+= "        Pregunta 2: "; tittle += lessons[4][1].current_over_total_points(); tittle += '\n';
                tittle+= "    Lección 3\n";
                tittle+= "        Pregunta 1: "; tittle += lessons[5][0].current_over_total_points(); tittle += '\n';
                tittle+= "        Pregunta 2: "; tittle += lessons[5][1].current_over_total_points(); tittle += '\n';
                tittle+= "Módulo Avanzado\n";
                tittle+= "    Lección 1\n";
                tittle+= "        Pregunta 1: "; tittle += lessons[6][0].current_over_total_points(); tittle += '\n';
                tittle+= "        Pregunta 2: "; tittle += lessons[6][1].current_over_total_points(); tittle += '\n';
                tittle+= "    Lección 2\n";
                tittle+= "        Pregunta 1: "; tittle += lessons[7][0].current_over_total_points(); tittle += '\n';
                tittle+= "    Lección 3\n";
                tittle+= "        Pregunta 1: "; tittle += lessons[8][0].current_over_total_points(); tittle += '\n';
    return print_menu(tittle, {"Volver al menú principal"});
}