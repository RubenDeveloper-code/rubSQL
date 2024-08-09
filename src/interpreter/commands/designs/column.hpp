#pragma once

#include "attribute.hpp"
#include "datatypes.hpp"
#include <string>
#include <vector>
struct column_design {
      std::string identifier;
      datatype_design datatype;
      std::vector<attribute_design> attributes;
};
