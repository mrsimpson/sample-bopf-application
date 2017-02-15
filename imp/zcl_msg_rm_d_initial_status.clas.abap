class ZCL_MSG_RM_D_INITIAL_STATUS definition
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



CLASS ZCL_MSG_RM_D_INITIAL_STATUS IMPLEMENTATION.


  METHOD /bobf/if_frw_determination~execute.
    LOOP AT it_key INTO DATA(ls_key).
      io_modify->update(
        EXPORTING
          iv_node           = is_ctx-node_key    " Node
          iv_key            = ls_key-key
          is_data           = NEW zmsg_rm_s_root( status = '00')    " Data
          it_changed_fields = value #( ( zif_msg_room_c=>sc_node_attribute-root-status ) )
      ).
    ENDLOOP.

  ENDMETHOD.
ENDCLASS.
