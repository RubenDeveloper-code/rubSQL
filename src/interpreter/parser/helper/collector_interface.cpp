#include "collector_interface.h"
#include "collector.hpp"
#include "types.h"
template <class T> void collection<T>::append_element(void *new_data) {
      data.push_back(static_cast<T *>(new_data));
}
void *init_collection(TYPE_COLLECTOR type, void *first_element) {
      collection_base *container;
      if (type == C_WTKVAL) {
            container = new collection<token_value>();

      } else if (type == C_COLUMN_INFO) {
            container = new collection<column_info>();
      } else if (type == C_EMPTY) {
            container = nullptr;
      }
      return container;
}

void append_data_collection(void *collector, void *data) {
      collection_base *collection = static_cast<collection_base *>(collector);
      collection->append_element(data);
}
