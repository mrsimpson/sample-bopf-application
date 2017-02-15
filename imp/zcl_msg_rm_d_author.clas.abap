class ZCL_MSG_RM_D_AUTHOR definition
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



CLASS ZCL_MSG_RM_D_AUTHOR IMPLEMENTATION.


  METHOD /bobf/if_frw_determination~execute.
    DATA lr_node_data TYPE REF TO data.
    CASE is_ctx-node_key.
      WHEN zif_msg_room_c=>sc_node-root.
        lr_node_data = NEW zmsg_rm_s_root( owner = sy-uname ).
      WHEN zif_msg_room_c=>sc_node-post.
        lr_node_data = NEW zmsg_rm_s_post( author = sy-uname ).
      WHEN OTHERS.
        ASSERT 1 = 0. "unknown node
    ENDCASE.

    LOOP AT it_key INTO DATA(ls_key).
      io_modify->update(
        EXPORTING
          iv_node           = is_ctx-node_key    " Node
          iv_key            = ls_key-key    " Key
*              iv_root_key       = iv_root_key    " NodeID
          is_data           = lr_node_data
*              it_changed_fields = it_changed_fields    " List of Names (e.g. Fieldnames)
      ).
    ENDLOOP.
  ENDMETHOD.
ENDCLASS.
