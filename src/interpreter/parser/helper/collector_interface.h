#ifndef __COLLECTOR_INTERFACE_H__
#define __COLLECTOR_INTERFACE_H__
#ifdef __cplusplus
extern "C" {
#endif
#define EMPTY_COLLECTION init_collection(C_EMPTY, NULL);
enum TYPE_COLLECTOR { C_EMPTY, C_WTKVAL, C_COLUMN_INFO };
void *init_collection(enum TYPE_COLLECTOR type, void *first_element);
void append_data_collection(void *collector, void *data);
#ifdef __cplusplus
}
#endif
#endif
