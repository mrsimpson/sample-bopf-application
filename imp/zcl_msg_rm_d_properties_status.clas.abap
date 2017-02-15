class ZCL_MSG_RM_D_PROPERTIES_STATUS definition
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



CLASS ZCL_MSG_RM_D_PROPERTIES_STATUS IMPLEMENTATION.


  METHOD /bobf/if_frw_determination~execute.
    DATA lt_root TYPE zmsg_rm_t_root.

    io_read->retrieve(
      EXPORTING
        iv_node                 = is_ctx-node_key    " Node Name
        it_key                  = it_key    " Key Table
*        it_requested_attributes = it_requested_attributes    "todo
      IMPORTING
        et_data                 = lt_root    " Data Return Structure
    ).

    DATA(lo_property_helper) = NEW /bobf/cl_lib_h_set_property(
        is_context = is_ctx
        io_modify  = io_modify
    ).

    LOOP AT lt_root ASSIGNING FIELD-SYMBOL(<ls_root>) WHERE status = '90'.
      lo_property_helper->set_action_enabled(
        EXPORTING
          iv_action_key = zif_msg_room_c=>sc_action-root-close    " Key of the action for which the property is to be set
          iv_key        = <ls_root>-key    " Key of the instance for which the property is to be set
          iv_value      = abap_false    " New value of this property (true/false)
      ).

      lo_property_helper->set_node_update_enabled(
        EXPORTING
          iv_key   = <ls_root>-key    " Key of the instance for which the property is to be set
          iv_value = abap_false    " New value of this property (true/false)
      ).

    ENDLOOP.

  ENDMETHOD.
ENDCLASS.
