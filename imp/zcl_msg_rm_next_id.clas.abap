class ZCL_MSG_RM_NEXT_ID definition
  public
  inheriting from /BOBF/CL_LIB_D_SUPERCL_SIMPLE
  final
  create public .

public section.

  methods /BOBF/IF_FRW_DETERMINATION~EXECUTE
    redefinition .
protected section.
private section.
ENDCLASS.



CLASS ZCL_MSG_RM_NEXT_ID IMPLEMENTATION.


METHOD /bobf/if_frw_determination~execute.

  LOOP AT it_key INTO DATA(ls_key).

    DATA lv_next_id TYPE i.

    CALL FUNCTION 'NUMBER_GET_NEXT'
      EXPORTING
        nr_range_nr             = '1'
        object                  = 'ZMSG_RM'
      IMPORTING
        number                  = lv_next_id
      EXCEPTIONS
        interval_not_found      = 1
        number_range_not_intern = 2
        object_not_found        = 3
        quantity_is_0           = 4
        quantity_is_not_1       = 5
        interval_overflow       = 6
        buffer_overflow         = 7.

    IF sy-subrc NE 0.
      IF eo_message IS INITIAL.
        eo_message = /bobf/cl_frw_message_factory=>create_container( ).
      ENDIF.

      eo_message->add_message(
        EXPORTING
          is_msg       = VALUE #(
                          msgid = sy-msgid
                          msgno = sy-msgno
                          msgty = sy-msgty
                          msgv1 = sy-msgv1
                          msgv2 = sy-msgv2
                          msgv3 = sy-msgv3
                          msgv4 = sy-msgv4
                          )
          iv_node      = is_ctx-node_key
          iv_key       = ls_key-key
      ).

    ELSE.
      io_modify->update(
          iv_node           = is_ctx-node_key
          iv_key            = ls_key-key
          is_data           = NEW zmsg_rm_d_root( id = lv_next_id )
          it_changed_fields = VALUE #( ( zif_msg_rm_room_c=>sc_node_attribute-root-id ) )
      ).
    ENDIF.

  ENDLOOP.

ENDMETHOD.
ENDCLASS.
