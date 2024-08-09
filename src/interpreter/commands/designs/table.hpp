#pragma once

#include "column.hpp"
#include <vector>
struct table_design {
      std::string identifier;
      std::vector<column_design> columns;
};
