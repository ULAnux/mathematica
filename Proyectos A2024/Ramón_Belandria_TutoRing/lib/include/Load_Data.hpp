#pragma once

#include <Lesson.hpp>

static std::vector<Lesson> lessons;

static std::vector<std::string> lecturesLD;

static std::vector<std::string> partialAnswerslD;

static std::vector<Answer> answerslD;

static std::vector<Question> questionslD;

static void load_data();

static void load_lectures();

static void load_partialAnswers();

static void load_answers();

static void load_questions();

void load_data()
{
    load_lectures();
    load_questions();
    std::vector<Question> currentQ;
    
    
    currentQ = {questionslD[0], questionslD[1], questionslD[2]};
    lessons.emplace_back(Lecture("Anillos", lecturesLD[0]), currentQ, 0, true);
    currentQ.clear();

    currentQ = {questionslD[3], questionslD[4], questionslD[5]};
    lessons.emplace_back(Lecture("Tipos especiales de anillos", lecturesLD[1]), currentQ, 0, false);
    currentQ.clear();

    currentQ = {questionslD[6], questionslD[7]};
    lessons.emplace_back(Lecture("Subanillos", lecturesLD[2]), currentQ, 0, false);
    currentQ.clear();

    currentQ = {questionslD[8], questionslD[9]};
    lessons.emplace_back(Lecture("Divisores de cero", lecturesLD[3]), currentQ, 0, false);
    currentQ.clear();

    currentQ = {questionslD[10], questionslD[11]};
    lessons.emplace_back(Lecture("Dominio Integral", lecturesLD[4]), currentQ, 0, false);
    currentQ.clear();

    currentQ = {questionslD[12], questionslD[13]};
    lessons.emplace_back(Lecture("Sub-dominio", lecturesLD[5]), currentQ, 0, false);
    currentQ.clear();

    currentQ = {questionslD[14], questionslD[15]};
    lessons.emplace_back(Lecture("Cuaternios", lecturesLD[6]), currentQ, 0, false);
    currentQ.clear();

    currentQ = {questionslD[16]};
    lessons.emplace_back(Lecture("Suma de cuaternios", lecturesLD[7]), currentQ, 0, false);
    currentQ.clear();

    currentQ = {questionslD[17]};
    lessons.emplace_back(Lecture("Producto de cuaternios", lecturesLD[8]), currentQ, 0, false);
    currentQ.clear();
}

void load_lectures()
{
    lecturesLD.push_back("Un anillo se puede definir como un conjunto con dos operarciones\n");
    lecturesLD[0] += "a las que llamaremos + y *. Para todo: a, b y c; se\n";
    lecturesLD[0] += "cumplen las siguientes propiedades:\n";
    lecturesLD[0] += '\n';
    lecturesLD[0] += "-El anillo es un conjunto cerrado, es decir\n";
    lecturesLD[0] += "    a + b y a * b pertenecen al anillo.\n";
    lecturesLD[0] += "-Se cumple la propiedad asociativa para ambos operandos, es decir:\n";
    lecturesLD[0] += "    (a + b) + c = a + (b + c)\n";
    lecturesLD[0] += "-El operando * cumple con la propiedad distributiva respecto a +,\n";
    lecturesLD[0] += " tanto por la izquierda como por la derecha, es decir:\n";
    lecturesLD[0] += "    ·a * (b + c) = a * b + a + a * c\n";
    lecturesLD[0] += "    ·(b + c) * a = b * a + c * a\n";
    lecturesLD[0] += "-El operando +, cumple con la propiedad conmutativa:\n";
    lecturesLD[0] += "    a + b = b + a\n";
    lecturesLD[0] += "-El operando + está dotado de un elemento llamado:\n";
    lecturesLD[0] += " identidad, al cual llamaremos: I_0, este elemento cumple que*\n";
    lecturesLD[0] += "    a + I_0 = a\n";
    lecturesLD[0] += "-El operando +, está dotado de un elemento llamado inverso, nos\n";
    lecturesLD[0] += " referiremos al inverso de a, como -a; y se cumple que:\n";
    lecturesLD[0] += "    a + (-a) = (-a) + a = I_0.\n";

    lecturesLD.push_back("En allgunos anillos, el operando * también cumple con la propiedad\n");
    lecturesLD.back() += "En allgunos anillos, el operando * también cumple con la propiedad\n";
    lecturesLD.back() += "distributiva, es decir:\n";
    lecturesLD.back() += "    a * b = b * a\n";
    lecturesLD.back() += "Dichos anillos se conocen como: anillos conmutativos.\n";
    lecturesLD.back() += "\nLos anillos con unidad son aquellos en los que *\n";
    lecturesLD.back() += "al que llamaremos: I_1, tal que:\n";
    lecturesLD.back() += "    a * I_1 = a\n";
    lecturesLD.back() += "Un elemento r de un anillo es una unidad, si existe un elemento\n";
    lecturesLD.back() += "r⁻¹ tal que:\n";
    lecturesLD.back() += "    r * r⁻¹ = I_1";
    lecturesLD.back() += "\nUn anillo división es aquel en el que que todo elemento distinto\n";
    lecturesLD.back() += "de I_0 es una unidad. Si además, este anillo es conmutativo\n";
    lecturesLD.back() += "se conoce como campo";
    lecturesLD.back() += "\nEl conjunto {0, 1} se conce como: anillo trivial, y\n";
    lecturesLD.back() += "el conjunto {0} se concoce como: anillo 0. A partir de ahora,\n";
    lecturesLD.back() += "no referiremos a I_0 e I_1 como 0 y 1 respectivamente.";

    lecturesLD.push_back("Si S, es un subconjunto no vacío de un anillo R, entonces\n");
    lecturesLD.back() += "si S es un anillo, S es un subanillo de R.";

    lecturesLD.push_back("Un elemento r es llamado: divisor de cero, si 0 es ditinto\n");
    lecturesLD.back() += "de 1, r es distinto de 0 y existe un elemento s, también distinto\n";
    lecturesLD.back() += "de 0, tal que\n";
    lecturesLD.back() += "    r*s = 0";

    lecturesLD.push_back("Podemos definir un dominio integral (ID) como un anillo\n");
    lecturesLD.back() += "que:\n";
    lecturesLD.back() += "-Es conmutativo\n";
    lecturesLD.back() += "-No tiene divisor de cero";

    lecturesLD.push_back("Un subconjunto no vacío S de un ID es un sub-dominio si S\n");
    lecturesLD.back() += "S es un dominio integral si tiene los respectivos operandos\n";

    lecturesLD.push_back("Sean z y w dos números complejos y z* y w* sus conjugados,\n");
    lecturesLD.back() += "los cuaternios son el conjunto de las Matices 2x2 tal que:";
    lecturesLD.back() += "        ┌       ┐   ┌                 ┐\n";
    lecturesLD.back() += "    M = |z     w| = |a+bi         c+di|\n";
    lecturesLD.back() += "        |       |   |                 |\n";
    lecturesLD.back() += "        |-w*   z|   |-c+di        a-bi|\n";
    lecturesLD.back() += "        └       ┘   └                 ┘\n";
    lecturesLD.back() += "Donde a, b, y c son números reales.";

    lecturesLD.push_back("Otra forma de representar los cuaternios, es si definimos las\n");
    lecturesLD.back() += "unidades imaginarias j y k, tal que:\n";
    lecturesLD.back() += "    ·i² = j² = k² = -1\n";
    lecturesLD.back() += "    ·ij = -ji = k\n";
    lecturesLD.back() += "    ·jk = -kj = i\n";
    lecturesLD.back() += "    ·ki = -ik = j\n";
    lecturesLD.back() += "De modo que la suma no es más que una generalización de la suma.\n";
    lecturesLD.back() += "Si a, b, c, d, f, g, h, l; son números reales\n";
    lecturesLD.back() += "    (a+bi+cj+dk) + (f+gi+hj+lk)\n";
    lecturesLD.back() += "    = (a+f)+(b+g)i+(c+h)j+(d+l)k\n";

    lecturesLD.push_back("Con la propiedad distributiva y las definiciones de j y k, es\n");
    lecturesLD.back() += "fácil deducir que, para dos cuaternios con coeficientes reales,\n";
    lecturesLD.back() += "el producto es igual a:";
    lecturesLD.back() += "    (a+bi+cj+dk)*(f+gi+hj+lk) =\n";
    lecturesLD.back() += "     af-bg-ch-dl + (ag+bf+cl-dh)i + (ah-bl+cf+dg)j + (al+bh-cg+df)k\n";
}

void load_partialAnswers()
{
    partialAnswerslD.push_back("2");//0
    partialAnswerslD.push_back("V");//1
    partialAnswerslD.push_back("Identidad");//2

    partialAnswerslD.push_back("Unidad");//3
    partialAnswerslD.push_back("V");//4
    partialAnswerslD.push_back("F");//5

    partialAnswerslD.push_back("+ y *");//6
    partialAnswerslD.push_back("F");//7

    partialAnswerslD.push_back("2 y 3");//8
    partialAnswerslD.push_back("Gonales");//9

    partialAnswerslD.push_back("F");//10
    partialAnswerslD.push_back("V");//11

    partialAnswerslD.push_back("F");//12
    partialAnswerslD.push_back("V");//13

    partialAnswerslD.push_back("V");//14
    partialAnswerslD.push_back("división");//15

    partialAnswerslD.push_back("2 + 3i + j -2k");//16

    partialAnswerslD.push_back("-1 + 5i -3j - k");//17
}

void load_answers()
{
    load_partialAnswers();

    std::vector<std::string> pA = {partialAnswerslD[0]};
    std::vector<std::string> iA = {"1", "3", "4"};
    answerslD.push_back(Answer(pA, iA));
    pA.clear();
    iA.clear();

    pA = {partialAnswerslD[1]};
    iA = {};
    answerslD.push_back(Answer(pA, iA));
    pA.clear();
    iA.clear();

    pA = {partialAnswerslD[2]};
    iA = {};
    answerslD.push_back(Answer(pA, iA));
    pA.clear();
    iA.clear();

    pA = {partialAnswerslD[3]};
    iA = {};
    answerslD.push_back(Answer(pA, iA));
    pA.clear();
    iA.clear();

    pA = {partialAnswerslD[4]};
    iA = {};
    answerslD.push_back(Answer(pA, iA));
    pA.clear();
    iA.clear();

    pA = {partialAnswerslD[5]};
    iA = {};
    answerslD.push_back(Answer(pA, iA));
    pA.clear();
    iA.clear();

    pA = {partialAnswerslD[6]};
    iA = {"+ y -", "+ y *", "+ o *"};
    answerslD.push_back(Answer(pA, iA));
    pA.clear();
    iA.clear();

    pA = {partialAnswerslD[7]};
    iA = {};
    answerslD.push_back(Answer(pA, iA));
    pA.clear();
    iA.clear();

    pA = {partialAnswerslD[8]};
    iA = {"1 y 0", "1 y 5", "4 y 2"};
    answerslD.push_back(Answer(pA, iA));
    pA.clear();
    iA.clear();

    pA = {partialAnswerslD[9]};
    iA = {};
    answerslD.push_back(Answer(pA, iA));
    pA.clear();
    iA.clear();

    pA = {partialAnswerslD[10]};
    iA = {};
    answerslD.push_back(Answer(pA, iA));
    pA.clear();
    iA.clear();

    pA = {partialAnswerslD[11]};
    iA = {};
    answerslD.push_back(Answer(pA, iA));
    pA.clear();
    iA.clear();

    pA = {partialAnswerslD[12]};
    iA = {};
    answerslD.push_back(Answer(pA, iA));
    pA.clear();
    iA.clear();

    pA = {partialAnswerslD[13]};
    iA = {};
    answerslD.push_back(Answer(pA, iA));
    pA.clear();
    iA.clear();

    pA = {partialAnswerslD[14]};
    iA = {};
    answerslD.push_back(Answer(pA, iA));
    pA.clear();
    iA.clear();

    pA = {partialAnswerslD[15]};
    iA = {"Cero", "Trivial"};
    answerslD.push_back(Answer(pA, iA));
    pA.clear();
    iA.clear();

    pA = {partialAnswerslD[16]};
    iA = {"-2 + 3i + j - 2k", "2 + 3i + j + 2k", "2 - 3i + j - 2k"};
    answerslD.push_back(Answer(pA, iA));
    pA.clear();
    iA.clear();

    pA = {partialAnswerslD[17]};
    iA = {"-1 + 5i - 3j + k"};
    answerslD.push_back(Answer(pA, iA));
    pA.clear();
    iA.clear();
}

void load_questions()
{
    load_answers();

    questionslD.push_back(Question("Los anillos se caracterizan por tener _ operandos", answerslD[0], Style::Simple_selection, 0));
    questionslD.push_back(Question("El conjunto de los naturales es un anillo", answerslD[1], Style::True_or_false, 0));
    questionslD.push_back(Question("El elemento I_0 de + de un anillo se conoce como elemento _________", answerslD[2], Style::Manual_completition, 0));
    
    questionslD.push_back(Question("Si un elemento r tiene un inverso para el producto r⁻¹, entoces r es una ______", answerslD[3], Style::Manual_completition, 0));
    questionslD.push_back(Question("Todos los campos son anillos", answerslD[4], Style::True_or_false, 0));
    questionslD.push_back(Question("Todos los anillos son campos", answerslD[5], Style::True_or_false, 0));

    questionslD.emplace_back("Si un subconjnto S de un anillo se considera un sub anillo es porque tiene los operandos: ", answerslD[6], Style::Simple_selection, 0);
    questionslD.emplace_back("Ningún anillo puede ser un subanillo de sí mismo", answerslD[7], Style::True_or_false, 0);

    questionslD.emplace_back("En el conjunto de los naturales {0, 1, 2, 3, 4, 5} se definen las operaciones suma(+) y producto(*).\nPara mantener el conjuto cerrado se establece que cuando el resultado de la operción sea mayor que 5,\n este se dividirá entre 6 y el residuo será el nuevo resultado.\n¿Cuáles son los divisores cero de este conjunto?", answerslD[8], Style::Simple_selection, 0);
    questionslD.emplace_back("En un anillo compuesto por los vectores {v1, v2, ... , vn}, para que dos vectores sean divisores cero,\n estos deben ser orto_______ entre sí:", answerslD[9], Style::Manual_completition, 0);

    questionslD.emplace_back("Todos los dominios integrales son campos", answerslD[10], Style::True_or_false, 0);
    questionslD.emplace_back("Todos los campos son dominios integrales", answerslD[11], Style::True_or_false, 0);

    questionslD.emplace_back("Los racionales son un subdominio de los enteros", answerslD[12], Style::True_or_false, 0);
    questionslD.emplace_back("Lo opuesto a la afirmación anterior es verdadero", answerslD[13], Style::True_or_false, 0);

    questionslD.emplace_back("Los cuaternios son un subanillo de la matríz 2x2", answerslD[14], Style::True_or_false, 0);
    questionslD.emplace_back("Los cuaternios, son un anillo ...", answerslD[15], Style::Simple_selection, 0);

    questionslD.emplace_back("(2+j-k) + (3i-k) =", answerslD[16], Style::Simple_selection, 0);
    questionslD.emplace_back("(2+j-k) + (3i-k) =", answerslD[17], Style::Simple_selection, 0);
}