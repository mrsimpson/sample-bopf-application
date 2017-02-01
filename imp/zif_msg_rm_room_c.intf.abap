interface ZIF_MSG_RM_ROOM_C
  public .


  interfaces /BOBF/IF_LIB_CONSTANTS .

  constants:
    BEGIN OF SC_ACTION,
      BEGIN OF POST,
 CREATE_POST                    TYPE /BOBF/ACT_KEY VALUE '0800273B5D421EE6B9F0B18DB683F4C8',
 DELETE_POST                    TYPE /BOBF/ACT_KEY VALUE '0800273B5D421EE6B9F0B18DB68474C8',
 SAVE_POST                      TYPE /BOBF/ACT_KEY VALUE '0800273B5D421EE6B9F0B18DB684F4C8',
 UPDATE_POST                    TYPE /BOBF/ACT_KEY VALUE '0800273B5D421EE6B9F0B18DB68434C8',
 VALIDATE_POST                  TYPE /BOBF/ACT_KEY VALUE '0800273B5D421EE6B9F0B18DB684B4C8',
      END OF POST,
      BEGIN OF ROOT,
 CREATE_ROOT                    TYPE /BOBF/ACT_KEY VALUE '0800273B5D421ED6B9DD4782040F4D1B',
 DELETE_ROOT                    TYPE /BOBF/ACT_KEY VALUE '0800273B5D421ED6B9DD4782040FCD1B',
 LOCK_ROOT                      TYPE /BOBF/ACT_KEY VALUE '0800273B5D421ED6B9DD475A15E62D1B',
 SAVE_ROOT                      TYPE /BOBF/ACT_KEY VALUE '0800273B5D421ED6B9DD478204104D1B',
 UNLOCK_ROOT                    TYPE /BOBF/ACT_KEY VALUE '0800273B5D421ED6B9DD475A15E66D1B',
 UPDATE_ROOT                    TYPE /BOBF/ACT_KEY VALUE '0800273B5D421ED6B9DD4782040F8D1B',
 VALIDATE_ROOT                  TYPE /BOBF/ACT_KEY VALUE '0800273B5D421ED6B9DD478204100D1B',
      END OF ROOT,
    END OF SC_ACTION .
  constants:
    BEGIN OF SC_ACTION_ATTRIBUTE,
        BEGIN OF ROOT,
        BEGIN OF LOCK_ROOT,
 GENERIC                        TYPE STRING VALUE 'GENERIC',
 EDIT_MODE                      TYPE STRING VALUE 'EDIT_MODE',
 ALL_NONE                       TYPE STRING VALUE 'ALL_NONE',
 SCOPE                          TYPE STRING VALUE 'SCOPE',
 FORCE_INVALIDATION             TYPE STRING VALUE 'FORCE_INVALIDATION',
 LOCK_PARAMETER_BUFFER          TYPE STRING VALUE 'LOCK_PARAMETER_BUFFER',
        END OF LOCK_ROOT,
        BEGIN OF UNLOCK_ROOT,
 GENERIC                        TYPE STRING VALUE 'GENERIC',
 EDIT_MODE                      TYPE STRING VALUE 'EDIT_MODE',
 ALL_NONE                       TYPE STRING VALUE 'ALL_NONE',
 SCOPE                          TYPE STRING VALUE 'SCOPE',
 FORCE_INVALIDATION             TYPE STRING VALUE 'FORCE_INVALIDATION',
 LOCK_PARAMETER_BUFFER          TYPE STRING VALUE 'LOCK_PARAMETER_BUFFER',
        END OF UNLOCK_ROOT,
      END OF ROOT,
    END OF SC_ACTION_ATTRIBUTE .
  constants:
    BEGIN OF SC_ALTERNATIVE_KEY,
      BEGIN OF ROOT,
 ID                             TYPE /BOBF/OBM_ALTKEY_KEY VALUE '0800273B5D421EE6B9F208D6C0BBF5C7',
      END OF ROOT,
    END OF SC_ALTERNATIVE_KEY .
  constants:
    BEGIN OF SC_ASSOCIATION,
      BEGIN OF POST,
 MESSAGE                        TYPE /BOBF/OBM_ASSOC_KEY VALUE '0800273B5D421EE6B9F0B18DB68394C8',
 PROPERTY                       TYPE /BOBF/OBM_ASSOC_KEY VALUE '0800273B5D421EE6B9F0B18DB683D4C8',
 TO_PARENT                      TYPE /BOBF/OBM_ASSOC_KEY VALUE '0800273B5D421EE6B9F0B0CD9CC034C8',
 TO_ROOT                        TYPE /BOBF/OBM_ASSOC_KEY VALUE '0800273B5D421EE6B9F0B0CD9CC054C8',
      END OF POST,
      BEGIN OF POST_MESSAGE,
 TO_PARENT                      TYPE /BOBF/OBM_ASSOC_KEY VALUE '0800273B5D421EE6B9F0B18DB68534C8',
      END OF POST_MESSAGE,
      BEGIN OF POST_PROPERTY,
 TO_PARENT                      TYPE /BOBF/OBM_ASSOC_KEY VALUE '0800273B5D421EE6B9F0B18DB68554C8',
      END OF POST_PROPERTY,
      BEGIN OF ROOT,
 LOCK                           TYPE /BOBF/OBM_ASSOC_KEY VALUE '0800273B5D421ED6B9DD475A15E60D1B',
 MESSAGE                        TYPE /BOBF/OBM_ASSOC_KEY VALUE '0800273B5D421ED6B9DD475A15E5CD1B',
 POST                           TYPE /BOBF/OBM_ASSOC_KEY VALUE '0800273B5D421EE6B9F0B0CD9CBFF4C8',
 PROPERTY                       TYPE /BOBF/OBM_ASSOC_KEY VALUE '0800273B5D421ED6B9DD475A15E6CD1B',
      END OF ROOT,
      BEGIN OF ROOT_LOCK,
 TO_PARENT                      TYPE /BOBF/OBM_ASSOC_KEY VALUE '0800273B5D421ED6B9DD47820410AD1B',
      END OF ROOT_LOCK,
      BEGIN OF ROOT_MESSAGE,
 TO_PARENT                      TYPE /BOBF/OBM_ASSOC_KEY VALUE '0800273B5D421ED6B9DD478204108D1B',
      END OF ROOT_MESSAGE,
      BEGIN OF ROOT_PROPERTY,
 TO_PARENT                      TYPE /BOBF/OBM_ASSOC_KEY VALUE '0800273B5D421ED6B9DD47820410CD1B',
      END OF ROOT_PROPERTY,
    END OF SC_ASSOCIATION .
  constants:
    BEGIN OF SC_ASSOCIATION_ATTRIBUTE,
      BEGIN OF POST,
        BEGIN OF PROPERTY,
 ALL_NODE_PROPERTY              TYPE STRING VALUE 'ALL_NODE_PROPERTY',
 ALL_NODE_ATTRIBUTE_PROPERTY    TYPE STRING VALUE 'ALL_NODE_ATTRIBUTE_PROPERTY',
 ALL_ASSOCIATION_PROPERTY       TYPE STRING VALUE 'ALL_ASSOCIATION_PROPERTY',
 ALL_ASSOCIATION_ATTRIBUTE_PROP TYPE STRING VALUE 'ALL_ASSOCIATION_ATTRIBUTE_PROP',
 ALL_ACTION_PROPERTY            TYPE STRING VALUE 'ALL_ACTION_PROPERTY',
 ALL_ACTION_ATTRIBUTE_PROPERTY  TYPE STRING VALUE 'ALL_ACTION_ATTRIBUTE_PROPERTY',
 ALL_QUERY_PROPERTY             TYPE STRING VALUE 'ALL_QUERY_PROPERTY',
 ALL_QUERY_ATTRIBUTE_PROPERTY   TYPE STRING VALUE 'ALL_QUERY_ATTRIBUTE_PROPERTY',
 ALL_SUBTREE_PROPERTY           TYPE STRING VALUE 'ALL_SUBTREE_PROPERTY',
        END OF PROPERTY,
      END OF POST,
      BEGIN OF ROOT,
        BEGIN OF PROPERTY,
 ALL_NODE_PROPERTY              TYPE STRING VALUE 'ALL_NODE_PROPERTY',
 ALL_NODE_ATTRIBUTE_PROPERTY    TYPE STRING VALUE 'ALL_NODE_ATTRIBUTE_PROPERTY',
 ALL_ASSOCIATION_PROPERTY       TYPE STRING VALUE 'ALL_ASSOCIATION_PROPERTY',
 ALL_ASSOCIATION_ATTRIBUTE_PROP TYPE STRING VALUE 'ALL_ASSOCIATION_ATTRIBUTE_PROP',
 ALL_ACTION_PROPERTY            TYPE STRING VALUE 'ALL_ACTION_PROPERTY',
 ALL_ACTION_ATTRIBUTE_PROPERTY  TYPE STRING VALUE 'ALL_ACTION_ATTRIBUTE_PROPERTY',
 ALL_QUERY_PROPERTY             TYPE STRING VALUE 'ALL_QUERY_PROPERTY',
 ALL_QUERY_ATTRIBUTE_PROPERTY   TYPE STRING VALUE 'ALL_QUERY_ATTRIBUTE_PROPERTY',
 ALL_SUBTREE_PROPERTY           TYPE STRING VALUE 'ALL_SUBTREE_PROPERTY',
        END OF PROPERTY,
      END OF ROOT,
    END OF SC_ASSOCIATION_ATTRIBUTE .
  constants:
    SC_BO_KEY  TYPE /BOBF/OBM_BO_KEY VALUE '0800273B5D421ED6B9DD470F6AD54D1B' .
  constants:
    SC_BO_NAME TYPE /BOBF/OBM_NAME VALUE 'ZMSG_ROOM' .
  constants:
    BEGIN OF SC_DETERMINATION,
      BEGIN OF POST,
 ADMIN_DATA                     TYPE /BOBF/DET_KEY VALUE '0800273B5D421EE6BA89F26A4A41BE1A',
 AUTHOR                         TYPE /BOBF/DET_KEY VALUE '0800273B5D421EE6BA89F0707D559E1A',
      END OF POST,
      BEGIN OF ROOT,
 ADMIN_DATA                     TYPE /BOBF/DET_KEY VALUE '0800273B5D421EE6BA89E9178D317E08',
 NEXT_ID                        TYPE /BOBF/DET_KEY VALUE '0800273B5D421EE6B9FA5E67844D7D76',
 OWNER                          TYPE /BOBF/DET_KEY VALUE '0800273B5D421EE6BA89C9A5D779BDE1',
      END OF ROOT,
    END OF SC_DETERMINATION .
  constants:
    SC_MODEL_VERSION TYPE /BOBF/CONF_VERSION VALUE '00000' .
  constants:
    BEGIN OF SC_NODE,
 POST                           TYPE /BOBF/OBM_NODE_KEY VALUE '0800273B5D421EE6B9F0B0CD9CBFD4C8',
 POST_MESSAGE                   TYPE /BOBF/OBM_NODE_KEY VALUE '0800273B5D421EE6B9F0B18DB68374C8',
 POST_PROPERTY                  TYPE /BOBF/OBM_NODE_KEY VALUE '0800273B5D421EE6B9F0B18DB683B4C8',
 ROOT                           TYPE /BOBF/OBM_NODE_KEY VALUE '0800273B5D421ED6B9DD4734D2FECD1B',
 ROOT_LOCK                      TYPE /BOBF/OBM_NODE_KEY VALUE '0800273B5D421ED6B9DD475A15E5ED1B',
 ROOT_MESSAGE                   TYPE /BOBF/OBM_NODE_KEY VALUE '0800273B5D421ED6B9DD475A15E5AD1B',
 ROOT_PROPERTY                  TYPE /BOBF/OBM_NODE_KEY VALUE '0800273B5D421ED6B9DD475A15E6AD1B',
    END OF SC_NODE .
  constants:
    BEGIN OF SC_NODE_ATTRIBUTE,
      BEGIN OF POST,
  NODE_DATA                      TYPE STRING VALUE 'NODE_DATA',
  AUTHOR                         TYPE STRING VALUE 'AUTHOR',
  TEXT                           TYPE STRING VALUE 'TEXT',
  ADMIN_DATA                     TYPE STRING VALUE 'ADMIN_DATA',
  CREA_DATE_TIME                 TYPE STRING VALUE 'CREA_DATE_TIME',
  CREA_UNAME                     TYPE STRING VALUE 'CREA_UNAME',
  LCHG_DATE_TIME                 TYPE STRING VALUE 'LCHG_DATE_TIME',
  LCHG_UNAME                     TYPE STRING VALUE 'LCHG_UNAME',
      END OF POST,
      BEGIN OF ROOT,
  NODE_DATA                      TYPE STRING VALUE 'NODE_DATA',
  ID                             TYPE STRING VALUE 'ID',
  TITLE                          TYPE STRING VALUE 'TITLE',
  OWNER                          TYPE STRING VALUE 'OWNER',
  ADMIN_DATA                     TYPE STRING VALUE 'ADMIN_DATA',
  CREA_DATE_TIME                 TYPE STRING VALUE 'CREA_DATE_TIME',
  CREA_UNAME                     TYPE STRING VALUE 'CREA_UNAME',
  LCHG_DATE_TIME                 TYPE STRING VALUE 'LCHG_DATE_TIME',
  LCHG_UNAME                     TYPE STRING VALUE 'LCHG_UNAME',
      END OF ROOT,
    END OF SC_NODE_ATTRIBUTE .
  constants:
    BEGIN OF SC_NODE_CATEGORY,
      BEGIN OF POST,
 MESSAGE                        TYPE /BOBF/OBM_NODE_CAT_KEY VALUE '0800273B5D421EE6B9F0B18DB68354C8',
      END OF POST,
      BEGIN OF ROOT,
 ROOT                           TYPE /BOBF/OBM_NODE_CAT_KEY VALUE '0800273B5D421ED6B9DD475A15E58D1B',
      END OF ROOT,
    END OF SC_NODE_CATEGORY .
  constants:
    BEGIN OF SC_QUERY,
      BEGIN OF ROOT,
 SELECT_ALL                     TYPE /BOBF/OBM_QUERY_KEY VALUE '0800273B5D421EE6B9F20725374535C7',
 SELECT_BY_ELEMENTS             TYPE /BOBF/OBM_QUERY_KEY VALUE '0800273B5D421EE6B9F2036C4DFB75C4',
      END OF ROOT,
    END OF SC_QUERY .
  constants:
    BEGIN OF SC_QUERY_ATTRIBUTE,
      BEGIN OF ROOT,
        BEGIN OF SELECT_BY_ELEMENTS,
 ID                             TYPE STRING VALUE 'ID',
 TITLE                          TYPE STRING VALUE 'TITLE',
 OWNER                          TYPE STRING VALUE 'OWNER',
 ADMIN_DATA                     TYPE STRING VALUE 'ADMIN_DATA',
 CREA_DATE_TIME                 TYPE STRING VALUE 'CREA_DATE_TIME',
 CREA_UNAME                     TYPE STRING VALUE 'CREA_UNAME',
 LCHG_DATE_TIME                 TYPE STRING VALUE 'LCHG_DATE_TIME',
 LCHG_UNAME                     TYPE STRING VALUE 'LCHG_UNAME',
        END OF SELECT_BY_ELEMENTS,
      END OF ROOT,
    END OF SC_QUERY_ATTRIBUTE .
  constants:
    BEGIN OF SC_VALIDATION,
      BEGIN OF ROOT,
 ALTERNATIVE_KEY                TYPE /BOBF/VAL_KEY VALUE '0800273B5D421EE6B9FA5C2605CF9D73',
      END OF ROOT,
    END OF SC_VALIDATION .
endinterface.
