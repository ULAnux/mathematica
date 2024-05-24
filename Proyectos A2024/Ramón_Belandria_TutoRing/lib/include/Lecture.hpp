#pragma once

#include<iostream>

class Lecture
{
private:

    const std::string tittle;
    const std::string text;

public:

    Lecture(const std::string& ti, const std::string& tex);

    size_t show_element() noexcept;
};