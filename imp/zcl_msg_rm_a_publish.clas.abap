class ZCL_MSG_RM_A_PUBLISH definition
  public
  inheriting from /BOBF/CL_LIB_A_SUPERCLASS
  final
  create public .

public section.

  methods /BOBF/IF_FRW_ACTION~EXECUTE
    redefinition .
protected section.
private section.
ENDCLASS.



CLASS ZCL_MSG_RM_A_PUBLISH IMPLEMENTATION.


  METHOD /bobf/if_frw_action~execute.
    DATA lt_root TYPE zmsg_rm_t_root.

    io_read->retrieve(
      EXPORTING
        iv_node                 = is_ctx-node_key    " Node Name
        it_key                  = it_key    " Key Table
        it_requested_attributes = VALUE #( ( zif_msg_rm_room_c=>sc_node_attribute-root-id ) )
      IMPORTING
        et_data                 = lt_root
    ).

    LOOP AT lt_root ASSIGNING FIELD-SYMBOL(<ls_root>).
      io_modify->update(
          iv_node           = is_ctx-node_key    " Node
          iv_key            = <ls_root>-key
          is_data           = NEW zmsg_rm_s_root( publishing_status = 'P' ) "todo: constant interface
          it_changed_fields = VALUE #( ( zif_msg_rm_room_c=>sc_node_attribute-root-publishing_status ) )
      ).

      IF eo_message IS INITIAL.
        eo_message = /bobf/cl_frw_message_factory=>create_container( ).
      ENDIF.

      eo_message->add_cm( NEW zcm_msg_room(
        textid              = zcm_msg_room=>published
        severity            = zcm_msg_room=>co_severity_success
        ms_origin_location  = VALUE #( bo_key    = is_ctx-bo_key
                                      node_key  = is_ctx-node_key
                                      key       = <ls_root>-key )
        id                  = <ls_root>-id
       ) ).

    ENDLOOP.
  ENDMETHOD.
ENDCLASS.
