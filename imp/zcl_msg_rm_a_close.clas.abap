class ZCL_MSG_RM_A_CLOSE definition
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



CLASS ZCL_MSG_RM_A_CLOSE IMPLEMENTATION.


  method /BOBF/IF_FRW_ACTION~EXECUTE.

    LOOP AT it_key into data(ls_key).
      io_modify->update(
        EXPORTING
          iv_node           = is_ctx-node_key    " Node
          iv_key            = ls_key-key    " Key
          is_data           = new zmsg_rm_s_root( status = '90' ) "todo: constant
          it_changed_fields = value #( ( zif_msg_room_c=>sc_node_attribute-root-status ) )
      ).
    ENDLOOP.

  endmethod.
ENDCLASS.
