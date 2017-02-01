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
    DATA lt_changed_attribute TYPE /bobf/t_frw_name.

    CASE is_ctx-node_key.
      WHEN zif_msg_rm_room_c=>sc_node-root.
        lr_node_data = NEW zmsg_rm_s_root( owner = sy-uname ).
        lt_changed_attribute = VALUE #( ( zif_msg_rm_room_c=>sc_node_attribute-root-owner ) ).
      WHEN zif_msg_rm_room_c=>sc_node-post.
        lr_node_data = NEW zmsg_rm_s_post( author = sy-uname ).
        lt_changed_attribute = VALUE #( ( zif_msg_rm_room_c=>sc_node_attribute-post-author ) ).
      WHEN OTHERS.
        ASSERT 'procedure' = 'not known'.
    ENDCASE.


    LOOP AT it_key INTO DATA(ls_key).
      io_modify->update(
          iv_node           = is_ctx-node_key    " Node
          iv_key            = ls_key-key
          is_data           = lr_node_data
          it_changed_fields = lt_changed_attribute
      ).
    ENDLOOP.

  ENDMETHOD.
ENDCLASS.
