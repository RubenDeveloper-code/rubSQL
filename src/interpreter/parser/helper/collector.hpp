#pragma once
#include <vector>

struct collection_base {
      virtual void append_element(void *) = 0;
};

template <class T> struct collection : public collection_base {
      void append_element(void *) override;
      std::vector<T *> data;
};
