*&---------------------------------------------------------------------*
*& Report  Z_SALES_PIVOT
*& Description : Sales Analysis
*&---------------------------------------------------------------------*
* HISTORY :                                                            *
* AUTHOR               DATE                  DESCRIPTION               *
* ------------------   ---------- --------   --------------------------*
* sozergul@yahoo.com   10.08.2023 16:13:16   Initial version           *
*&---------------------------------------------------------------------*

REPORT z_sales_pivot.

TABLES : sscrfields, vbak, vbap, vbrk, vbrp, vbpa, vbkd, lips, knvv, kna1, mara,
         but000, t001l, mvke, bsad, bseg, matdoc, adr6, rbvd, wvfb, vbep, dd03m.

TYPES: BEGIN OF ty_struc_type,
         hiera     TYPE char2,
         bukrs     TYPE bukrs_vf,
         bukrs_x   TYPE butxt,
         sdorg     TYPE bezei20,
         vkorg     TYPE vkorg,
         vkorg_x   TYPE vtxtk,
         vtweg     TYPE vtweg,
         vtweg_x   TYPE vtxtk,
         spart     TYPE spart,
         spart_x   TYPE vtext,
         vkbur     TYPE vkbur,
         vkbur_x   TYPE bezei20,
         vkgrp     TYPE vkgrp,
         vkgrp_x   TYPE bezei20,
         bzirk     TYPE bzirk,
         bzirk_x   TYPE bezei20,
         ttype     TYPE bezei20,
         tstat     TYPE bezei20,
         vbelk     TYPE bezei,
         vbeln     TYPE vbeln_va,
         posnr     TYPE posnr,
         audat     TYPE audat,
         auart     TYPE auart,
         auart_x   TYPE bezei,
         vkper     TYPE ernam,
         vkwek     TYPE ernam,
         erdat     TYPE erdat,
         erzet     TYPE erzet,
         ernam     TYPE ernam,
         shkzg     TYPE shkzg,
         posex     TYPE posex,
         vgbel     TYPE vgbel,
         vgpos     TYPE vgpos,
         vgtyp     TYPE vgtyp,
         bstkd     TYPE bstkd,
         lfbel     TYPE vbeln_vl,
         lfpos     TYPE posnr_vl,
         lfdat     TYPE erdat,
         lfper     TYPE ernam,
         wbsta     TYPE wbsta,
         bwart     TYPE bwart,
         mblnr     TYPE mblnr,
         bldat     TYPE bldat,
         fkbel     TYPE vbeln,
         fkpos     TYPE posnr,
         prsdt     TYPE prsdt,
         fkdat     TYPE fkdat,
         fkper     TYPE ernam,
         fkwek     TYPE ernam,
         fstat     TYPE fstat,
         belnr     TYPE belnr_d,
         augbl     TYPE augbl,
         augdt     TYPE augdt,
         gjahr     TYPE gjahr,
         ghalf     TYPE ernam,
         gquar     TYPE ernam,
         gmont     TYPE ernam,
         hkont     TYPE hkont,
         prctr     TYPE prctr,
         zterm     TYPE dzterm,
         zterm_x   TYPE dzterm_bez,
         vkaus     TYPE vkaus,
         vkaus_x   TYPE bezei,
         kdgrp     TYPE kdgrp,
         kdgrp_x   TYPE bezei20,
         kunnr     TYPE kunnr,
         kunnr_x   TYPE wlf_kunre_name,
         kunre     TYPE kunnr,
         kunre_x   TYPE wlf_kunre_name,
         kunwe     TYPE kunnr,
         kunwe_x   TYPE wlf_kunre_name,
         kunrg     TYPE kunnr,
         kunrg_x   TYPE wlf_kunre_name,
         parvw     TYPE parvw,
         parvw_x   TYPE bezei,
         partn     TYPE kunnr,
         partn_x   TYPE wlf_kunre_name,
         ktokd     TYPE ktokd,
         ktokd_x   TYPE bezei30,
         ktgrd     TYPE ktgrd,
         ktgrd_x   TYPE bezei20,
         konda     TYPE konda,
         konda_x   TYPE bezei,
         bpvip     TYPE bp_vip_partner,
         bpunw     TYPE bp_unw_customer,
         bpblk     TYPE blkkz,
         matnr     TYPE matnr,
         maktx     TYPE maktx,
         bwtar     TYPE bwtar_d,
         charg     TYPE charg_d,
         matkl     TYPE matkl,
         wgbez     TYPE wgbez,
         mtart     TYPE mtart,
         mtbez     TYPE mtbez,
         ktgrm     TYPE ktgrm,
         ktgrm_x   TYPE vtext,
         mvgr1     TYPE mvgr1,
         mvgr1_x   TYPE bezei,
         mvgr2     TYPE mvgr2,
         mvgr2_x   TYPE bezei,
         mvgr3     TYPE mvgr3,
         mvgr3_x   TYPE bezei,
         mvgr4     TYPE mvgr4,
         mvgr4_x   TYPE bezei,
         mvgr5     TYPE mvgr5,
         mvgr5_x   TYPE bezei,
         vstel     TYPE vstel,
         vstel_x   TYPE bezei,
         werks     TYPE char4,
         werks_x   TYPE name1,
         lgort     TYPE char4,
         lgort_x   TYPE lgobe,
         inco1     TYPE inco1,
         inco2     TYPE inco2,
         we_adrs   TYPE char300,
         we_city   TYPE ad_city1,
         we_pstc   TYPE custzip,
         we_regi   TYPE regio,
         we_regn   TYPE bezei20,
         we_cnty   TYPE bezei20,
         tm_quan   TYPE kwmeng,
         lf_quan   TYPE kwmeng,
         lf_bqua   TYPE kwmeng,
         wa_quan   TYPE kwmeng,
         wa_bqua   TYPE kwmeng,
         fk_quan   TYPE kwmeng,
         fk_bqua   TYPE kwmeng,
         fk_wqua   TYPE kwmeng,
         vrkme     TYPE vrkme,
         cvrkm     TYPE vrkme,
         nt_pric   TYPE netwr,
         nt_txpr   TYPE netwr,
         tx_amnt   TYPE netwr,
         tm_amnt   TYPE netwr,
         lf_amnt   TYPE netwr,
         lf_bamn   TYPE netwr,
         fk_amnt   TYPE netwr,
         fk_bamn   TYPE netwr,
         fk_wamn   TYPE netwr,
         ag_amnt   TYPE netwr,
         ag_bamn   TYPE netwr,
         waerk     TYPE waerk,
         cwaer     TYPE waerk,
         nt_pric_2 TYPE netwr,
         nt_txpr_2 TYPE netwr,
         fk_amnt_2 TYPE netwr,
         tx_amnt_2 TYPE netwr,
         fk_totl_2 TYPE netwr,
         fk_totl   TYPE netwr,
         waerk_2   TYPE waerk,
         ec_amnt   TYPE netwr,
         ec_tamn   TYPE netwr,
         ztage     TYPE montt,
         vp_quan   TYPE kwmeng,
         gbsta     TYPE gbsta,
         gbsta_d   TYPE bezei20,
         augru     TYPE augru,
         augru_x   TYPE bezei40,
         abgru     TYPE abgru,
         abgru_x   TYPE bezei40,
         count     TYPE montt,
         color     TYPE char4,
         sheet     TYPE montt,
         dumbe     TYPE vrkme,
         dummy     TYPE char1,
       END OF ty_struc_type.


TYPES: BEGIN OF ty_base_data.
         INCLUDE TYPE ty_struc_type.
TYPES:   vp_amnt LIKE vbap-netwr,  " Kalem tutarı
         kd_quan LIKE lips-lfimg,  " Fiyatlandırma miktarı
       END OF ty_base_data.


TYPES: BEGIN OF ty_group_data.
         INCLUDE  TYPE ty_struc_type.
TYPES:   sort0001	TYPE char35,
         sort0002	TYPE char35,
         sort0003	TYPE char35,
         sort0004	TYPE char35,
         sort0005	TYPE char35,
         sort0006	TYPE char35,
         sort0007	TYPE char35,
         sort0008	TYPE char35,
         sort0009	TYPE char35,
         sort0010	TYPE char35,
         sort0011	TYPE char35,
         sort0012	TYPE char35,
         sort0013	TYPE char35.
TYPES: END OF ty_group_data.


TYPES: BEGIN OF ty_textlist,
         sym  TYPE c LENGTH 3,
         text TYPE string,
       END OF ty_textlist.

TYPES: BEGIN OF ty_sheets,
         count TYPE i,
         title TYPE string,
       END OF ty_sheets.

TYPES: BEGIN OF ty_fields_grp,
         text TYPE dd03m-scrtext_l,
         fnam TYPE dd03m-fieldname,
       END OF ty_fields_grp.

TYPES: BEGIN OF ty_fields_key,
         fnam TYPE dd03m-scrtext_l,
         grup TYPE dd03m-position,
         ikey TYPE dd03m-keyflag,
       END OF ty_fields_key.

TYPES: BEGIN OF ty_fields_agr,
         fnam TYPE dd03m-scrtext_s,
         text TYPE dd03m-scrtext_l,
         type TYPE dd03m-scrtext_s,
         ctot TYPE c LENGTH 4,
         cper TYPE c LENGTH 4,
         cavg TYPE c LENGTH 4,
         cwga TYPE c LENGTH 4,
         cmin TYPE c LENGTH 4,
         cmax TYPE c LENGTH 4,
       END OF ty_fields_agr.

TYPES: BEGIN OF ty_fields_sub,
         fnam TYPE dd03m-scrtext_l,
         text TYPE dd03m-scrtext_l,
         ctot TYPE c LENGTH 4,
         hlev TYPE c LENGTH 4,
       END OF ty_fields_sub.

TYPES: BEGIN OF ty_fields_param,
         fname TYPE dd03m-fieldname,
         techl TYPE dd03m-scrtext_l,
         texts TYPE dd03m-scrtext_s,
         textl TYPE dd03m-scrtext_l,
         spgrp TYPE int2,
         shide TYPE dd03m-keyflag,
         isgrp TYPE dd03m-datatype,
         emphs TYPE dd03m-datatype,
         cumty TYPE dd03m-inttype,
         slynr TYPE dd03m-scrtext_s,
         grpx1 TYPE dd03m-fieldname,
         grpx2 TYPE dd03m-fieldname,
         grpx3 TYPE dd03m-fieldname,
       END OF  ty_fields_param.


TYPES: BEGIN OF ty_fields_txt,
         text TYPE dd03m-scrtext_l,
         name TYPE dd03m-fieldname,
         type TYPE c LENGTH 1,
         leng TYPE p DECIMALS 0,
         decm TYPE p DECIMALS 0,
       END OF ty_fields_txt.
DATA: gt_allfields_text   TYPE TABLE OF ty_fields_txt WITH EMPTY KEY.


CLASS lcl_main      DEFINITION DEFERRED .
DATA: go_main       TYPE REF TO lcl_main.

DATA: gt_textlist   TYPE TABLE OF ty_textlist WITH EMPTY KEY.
DATA: gt_fieldlist  TYPE TABLE OF ty_fields_param WITH EMPTY KEY.

DATA: gt_base_data   TYPE TABLE OF ty_base_data.
DATA: gt_main_data   TYPE TABLE OF ty_base_data.
DATA: gt_detail_data TYPE TABLE OF ty_base_data.

DATA: gt_group_key_columns     TYPE TABLE OF ty_fields_key,
      gt_group_data_columns    TYPE TABLE OF ty_fields_grp,
      gt_groupable_fields      TYPE TABLE OF ty_fields_grp,
      gt_selected_group_fields TYPE TABLE OF ty_fields_grp,
      gt_aggregation_fields    TYPE TABLE OF ty_fields_agr,
      gt_subtotal_fields       TYPE TABLE OF ty_fields_sub.

" Field Symbols
FIELD-SYMBOLS: <gs_itab> TYPE INDEX TABLE.
FIELD-SYMBOLS: <gs_group_data> TYPE INDEX TABLE.
" Fieldcatalog
DATA: gt_fcat        TYPE lvc_t_fcat.
" Excel Sheets
DATA: gt_sheets      TYPE TABLE OF ty_sheets WITH EMPTY KEY.

DATA(gv_detail_view) = abap_false.
DATA(gv_mng_cnv_all) = abap_false.
DATA(gv_amt_cnv_all) = abap_false.
DATA gv_disable_bytrm TYPE bool.
DATA gv_change_locale TYPE bool.
DATA gv_clgui_enabled TYPE bool.
DATA gv_demos_enabled TYPE bool.
DATA gv_iso_week      TYPE bool.
DATA gv_group_count   TYPE int2.
DATA gv_max_level     TYPE int2.
DATA gv_max_ycolumns  TYPE int4.
DATA gv_max_xlsheets  TYPE int4.
DATA gv_xl_zoomscale  TYPE int2.
DATA gv_alv_title     TYPE c LENGTH 150.
DATA gv_initial_dir   TYPE string.
DATA gv_from_address  TYPE string.
DATA gv_max_filesize  TYPE int8.
DATA gv_max_ordernum  TYPE int8.

DATA gv_lang  TYPE string.
DATA gv_loca  TYPE string.
DATA gv_decs  TYPE c.

DATA(gv_halt) = abap_false.
DATA gv_variant TYPE varid-variant.
DATA(gv_variant_changed) = abap_false.
DATA gv_pivot_fieldname TYPE string.
DATA gv_clicked_row  TYPE int2.
DATA gv_filter_where TYPE string.

DATA: desktop_path   TYPE string,
      documents_path TYPE string,
      downloads_path TYPE string,
      temp_path      TYPE string,
      user_name      TYPE string,
      user_fullname  TYPE string,
      user_mailaddr  TYPE string,
      tcode_name     TYPE string,
      tcode_title    TYPE string,
      variant_code   TYPE string,
      variant_name   TYPE string,
      display_code   TYPE string,
      display_name   TYPE string,
      preyear        TYPE string,
      preperiod      TYPE string,
      yesterday      TYPE sy-datum.


" Double click cell
DATA: fes_row_no TYPE lvc_s_roid,
      fes_row_id TYPE lvc_s_row,
      fes_col_id TYPE lvc_s_col,
      fes_value  TYPE c.

" Get Variant
DATA: gs_variant  TYPE disvariant.

" Dropdown y-field
TYPE-POOLS: vrm.
DATA: ivrm_val TYPE vrm_values,
      xvrm_val LIKE LINE OF ivrm_val,
      vrm_name TYPE vrm_id.

" Dropdown sheet-field
TYPE-POOLS: vrm_x.
DATA: ivrm_val_x TYPE vrm_values,
      xvrm_val_x LIKE LINE OF ivrm_val_x,
      vrm_name_x TYPE vrm_id.

" Dropdown currency date
TYPE-POOLS: vrm_c.
DATA: ivrm_val_c TYPE vrm_values,
      xvrm_val_c LIKE LINE OF ivrm_val_c,
      vrm_name_c TYPE vrm_id.

" Dropdown sort
TYPE-POOLS: vrm_s.
DATA: ivrm_val_s TYPE vrm_values,
      xvrm_val_s LIKE LINE OF ivrm_val_s,
      vrm_name_s TYPE vrm_id.

" Dropdown report type
TYPE-POOLS: vrm_t.
DATA: ivrm_val_t TYPE vrm_values,
      xvrm_val_t LIKE LINE OF ivrm_val_t,
      vrm_name_t TYPE vrm_id.

" Dropdown display type
TYPE-POOLS: vrm_d.
DATA: ivrm_val_d TYPE vrm_values,
      xvrm_val_d LIKE LINE OF ivrm_val_d,
      vrm_name_d TYPE vrm_id.

" Dropdown show lable fields
TYPE-POOLS: vrm_f.
DATA: ivrm_val_f TYPE vrm_values,
      xvrm_val_f LIKE LINE OF ivrm_val_f,
      vrm_name_f TYPE vrm_id.

" Function value table
TYPES: BEGIN OF ty_functions,
         modtext TYPE c LENGTH 18,
         modval  TYPE c LENGTH 40,
       END OF ty_functions.

" Dropdown logic operator
TYPE-POOLS: vrm_r.
DATA: ivrm_val_r TYPE vrm_values,
      xvrm_val_r LIKE LINE OF ivrm_val_r,
      vrm_name_r TYPE vrm_id.

" Dropdown check condition
TYPE-POOLS: vrm_o.
DATA: ivrm_val_o TYPE vrm_values,
      xvrm_val_o LIKE LINE OF ivrm_val_o,
      vrm_name_o TYPE vrm_id.

" Dropdown field or value
TYPE-POOLS: vrm_v.
DATA: ivrm_val_v TYPE vrm_values,
      xvrm_val_v LIKE LINE OF ivrm_val_v,
      vrm_name_v TYPE vrm_id.


DATA: gt_functions  TYPE TABLE OF ty_functions WITH EMPTY KEY.


  SELECTION-SCREEN BEGIN OF LINE.
    SELECTION-SCREEN COMMENT 1(68) psvz." FOR FIELD p_varid.
    PARAMETERS: p_vari TYPE varid-variant MODIF ID m1 AS LISTBOX VISIBLE LENGTH 45 USER-COMMAND uc10.
    SELECTION-SCREEN: PUSHBUTTON (4) but04 USER-COMMAND uc04 MODIF ID c1 VISIBLE LENGTH 2 .
  SELECTION-SCREEN END OF LINE.


*----------------- Kaynak
SELECTION-SCREEN BEGIN OF SCREEN 1100 AS SUBSCREEN.
  SELECT-OPTIONS: s_fnams FOR dd03m-scrtext_l NO-DISPLAY.
  SELECT-OPTIONS: s_aggrs FOR dd03m-scrtext_l NO-DISPLAY.
  SELECT-OPTIONS: s_subts FOR dd03m-scrtext_l NO-DISPLAY.
  PARAMETERS    : p_expo DEFAULT ' ' NO-DISPLAY.
  PARAMETERS    : p_loca TYPE tcp0c-langu NO-DISPLAY.
  PARAMETERS    : p_lang TYPE tcp0c-langu NO-DISPLAY.
  PARAMETERS    : p_info TYPE string NO-DISPLAY.
  PARAMETERS    : p_hlev TYPE char2 NO-DISPLAY.

  SELECT-OPTIONS: s_vkorg  FOR vbak-vkorg,
                  s_vtweg  FOR knvv-vtweg,
                  s_spart  FOR vbak-spart,
                  s_gbsta  FOR vbap-gbsta.

  SELECTION-SCREEN BEGIN OF LINE.
    SELECTION-SCREEN COMMENT 1(33) ptp FOR FIELD p_term.
    PARAMETERS: p_term AS LISTBOX VISIBLE LENGTH 22 USER-COMMAND uc09 DEFAULT 'S' .
    SELECTION-SCREEN COMMENT (1) l_spb .
    PARAMETERS: p_blin AS CHECKBOX DEFAULT ' '.
    SELECTION-SCREEN COMMENT 70(20) pbo FOR FIELD p_blin.
  SELECTION-SCREEN END OF LINE.
SELECTION-SCREEN END   OF SCREEN 1100.

*----------------- Seçenek
SELECTION-SCREEN BEGIN OF SCREEN 1300 AS SUBSCREEN.
  SELECTION-SCREEN BEGIN OF LINE.
    SELECTION-SCREEN COMMENT 1(33) prv FOR FIELD p_mein.
    PARAMETERS: p_mein TYPE vbap-vrkme.
    SELECTION-SCREEN COMMENT 43(1) l_spa .
    PARAMETERS: p_cprc AS CHECKBOX MODIF ID c0 .
    SELECTION-SCREEN COMMENT 64(30) pcp FOR FIELD p_cprc.
  SELECTION-SCREEN END OF LINE.

  SELECTION-SCREEN BEGIN OF LINE.
    SELECTION-SCREEN COMMENT 1(33) pw1 FOR FIELD p_wahr.
    PARAMETERS: p_wahr TYPE vbak-waerk .
    SELECTION-SCREEN COMMENT 45(18) pc1 FOR FIELD p_cur1.
    PARAMETERS: p_cur1(15) AS LISTBOX VISIBLE LENGTH 18 MODIF ID b1 .
  SELECTION-SCREEN END   OF LINE .

  SELECTION-SCREEN BEGIN OF LINE.
    SELECTION-SCREEN COMMENT 1(33) pw2 FOR FIELD p_wah2.
    PARAMETERS: p_wah2 TYPE vbak-waerk .
    SELECTION-SCREEN COMMENT 45(18) pc2 FOR FIELD p_cur2.
    PARAMETERS: p_cur2(15) AS LISTBOX VISIBLE LENGTH 18 MODIF ID b1 .
  SELECTION-SCREEN END   OF LINE .

  SELECTION-SCREEN BEGIN OF LINE.
    PARAMETERS: p_twoc    AS CHECKBOX .
    SELECTION-SCREEN COMMENT  (41) ptw FOR FIELD p_twoc.
    PARAMETERS: p_cdec  AS CHECKBOX .
    SELECTION-SCREEN COMMENT 48(50) pcd FOR FIELD p_cdec .
  SELECTION-SCREEN END   OF LINE .

  SELECTION-SCREEN BEGIN OF LINE.
    PARAMETERS: p_ocds  AS CHECKBOX.
    SELECTION-SCREEN COMMENT (41) poc FOR FIELD p_ocds .
    PARAMETERS: p_zero  AS CHECKBOX.
    SELECTION-SCREEN COMMENT  48(50) pzr FOR FIELD p_zero.
  SELECTION-SCREEN END   OF LINE .
SELECTION-SCREEN END   OF SCREEN 1300.


*----------------- Filtre
SELECTION-SCREEN BEGIN OF SCREEN 1350 AS SUBSCREEN.

  SELECTION-SCREEN BEGIN OF LINE.
    SELECTION-SCREEN COMMENT  8(1) l_obr0.
    PARAMETERS: p_flt1a(30) TYPE c VISIBLE LENGTH 27 LOWER CASE.
    SELECTION-SCREEN: PUSHBUTTON (4) slf01 USER-COMMAND sf01 MODIF ID c1 VISIBLE LENGTH 1.
    SELECTION-SCREEN COMMENT 40(1) l_spz0.
    PARAMETERS: p_cnd1 TYPE char5 AS LISTBOX VISIBLE LENGTH 5 USER-COMMAND srt MODIF ID c1.
    SELECTION-SCREEN COMMENT 48(1) l_spz1.
    PARAMETERS: p_fov1 TYPE char9 AS LISTBOX VISIBLE LENGTH 8 USER-COMMAND srt MODIF ID c1.
    PARAMETERS: p_flt1b(30) TYPE c VISIBLE LENGTH 27 LOWER CASE.
    SELECTION-SCREEN: PUSHBUTTON (4) slf02 USER-COMMAND sf02 MODIF ID c1 VISIBLE LENGTH 1.
    SELECTION-SCREEN COMMENT  (2) l_sta100.
    PARAMETERS : p_case AS CHECKBOX MODIF ID m3 .
    SELECTION-SCREEN COMMENT (24) pcs FOR FIELD p_case.
  SELECTION-SCREEN END   OF LINE.

  SELECTION-SCREEN BEGIN OF LINE.
    PARAMETERS: p_opt2 TYPE char6 AS LISTBOX VISIBLE LENGTH 6 USER-COMMAND srt MODIF ID c1.
    SELECTION-SCREEN COMMENT 8(1) l_obr1.
    PARAMETERS: p_flt2a(30) TYPE c VISIBLE LENGTH 27 LOWER CASE.
    SELECTION-SCREEN: PUSHBUTTON (4) slf03 USER-COMMAND sf03 MODIF ID c1 VISIBLE LENGTH 1.
    SELECTION-SCREEN COMMENT 40(1) l_sta2.
    PARAMETERS: p_cnd2 TYPE char5 AS LISTBOX VISIBLE LENGTH 5 USER-COMMAND srt MODIF ID c1.
    SELECTION-SCREEN COMMENT 48(1) l_sta3.
    PARAMETERS: p_fov2 TYPE char9 AS LISTBOX VISIBLE LENGTH 8 USER-COMMAND srt MODIF ID c1.
    PARAMETERS: p_flt2b(30) TYPE c VISIBLE LENGTH 27 LOWER CASE.
    SELECTION-SCREEN: PUSHBUTTON (4) slf04 USER-COMMAND sf04 MODIF ID c1 VISIBLE LENGTH 1.
  SELECTION-SCREEN END   OF LINE .

  SELECTION-SCREEN BEGIN OF LINE.
    PARAMETERS: p_opt3 TYPE char6 AS LISTBOX VISIBLE LENGTH 6 USER-COMMAND srt MODIF ID c1 .
    SELECTION-SCREEN COMMENT  8(1) l_sta4.
    PARAMETERS: p_flt3a(30) TYPE c VISIBLE LENGTH 27 LOWER CASE.
    SELECTION-SCREEN: PUSHBUTTON (4) slf05 USER-COMMAND sf05 MODIF ID c1 VISIBLE LENGTH 1 .
    SELECTION-SCREEN COMMENT 40(1) l_sta5.
    PARAMETERS: p_cnd3 TYPE char5 AS LISTBOX VISIBLE LENGTH 5 USER-COMMAND srt MODIF ID c1 .
    SELECTION-SCREEN COMMENT 48(1) l_sta6.
    PARAMETERS: p_fov3 TYPE char9 AS LISTBOX VISIBLE LENGTH 8 USER-COMMAND srt MODIF ID c1 .
    PARAMETERS: p_flt3b(30) TYPE c VISIBLE LENGTH 27 LOWER CASE.
    SELECTION-SCREEN: PUSHBUTTON (4) slf06 USER-COMMAND sf06 MODIF ID c1 VISIBLE LENGTH 1 .
    SELECTION-SCREEN COMMENT (1) l_cbr1 .
    SELECTION-SCREEN COMMENT (1) l_cbr0.
  SELECTION-SCREEN END   OF LINE.

  SELECTION-SCREEN BEGIN OF LINE.
    PARAMETERS: p_opt4 TYPE char6 AS LISTBOX VISIBLE LENGTH 6 USER-COMMAND srt MODIF ID c1.
    SELECTION-SCREEN COMMENT 8(1) l_obr2.
    PARAMETERS: p_flt4a(30) TYPE c VISIBLE LENGTH 27 LOWER CASE.
    SELECTION-SCREEN: PUSHBUTTON (4) slf07 USER-COMMAND sf07 MODIF ID c1 VISIBLE LENGTH 1.
    SELECTION-SCREEN COMMENT 40(1) l_sta7.
    PARAMETERS: p_cnd4 TYPE char5 AS LISTBOX VISIBLE LENGTH 5 USER-COMMAND srt MODIF ID c1.
    SELECTION-SCREEN COMMENT 48(1) l_sta8.
    PARAMETERS: p_fov4 TYPE char9 AS LISTBOX VISIBLE LENGTH 8 USER-COMMAND srt MODIF ID c1.
    PARAMETERS: p_flt4b(30) TYPE c VISIBLE LENGTH 27 LOWER CASE.
    SELECTION-SCREEN: PUSHBUTTON (4) slf08 USER-COMMAND sf08 MODIF ID c1 VISIBLE LENGTH 1.
  SELECTION-SCREEN END   OF LINE.

  SELECTION-SCREEN BEGIN OF LINE.
    PARAMETERS: p_opt5 TYPE char6 AS LISTBOX VISIBLE LENGTH 6 USER-COMMAND srt MODIF ID c1.
    SELECTION-SCREEN COMMENT 8(1) l_sta9.
    PARAMETERS: p_flt5a(30) TYPE c VISIBLE LENGTH 27 LOWER CASE.
    SELECTION-SCREEN: PUSHBUTTON (4) slf09 USER-COMMAND sf09 MODIF ID c1 VISIBLE LENGTH 1.
    SELECTION-SCREEN COMMENT 40(1) l_sta10.
    PARAMETERS: p_cnd5 TYPE char5 AS LISTBOX VISIBLE LENGTH 5 USER-COMMAND srt MODIF ID c1.
    SELECTION-SCREEN COMMENT 48(1) l_sta11.
    PARAMETERS: p_fov5 TYPE char9 AS LISTBOX VISIBLE LENGTH 8 USER-COMMAND srt MODIF ID c1.
    PARAMETERS: p_flt5b(30) TYPE c VISIBLE LENGTH 27 LOWER CASE.
    SELECTION-SCREEN: PUSHBUTTON (4) slf10 USER-COMMAND sf10 MODIF ID c1 VISIBLE LENGTH 1.
    SELECTION-SCREEN COMMENT  (1) l_cbr2.
  SELECTION-SCREEN END   OF LINE .

  PARAMETERS: p_fld1a(25) TYPE c NO-DISPLAY.
  PARAMETERS: p_fld1b(25) TYPE c NO-DISPLAY.
  PARAMETERS: p_fld2a(25) TYPE c NO-DISPLAY.
  PARAMETERS: p_fld2b(25) TYPE c NO-DISPLAY.
  PARAMETERS: p_fld3a(25) TYPE c NO-DISPLAY.
  PARAMETERS: p_fld3b(25) TYPE c NO-DISPLAY.
  PARAMETERS: p_fld4a(25) TYPE c NO-DISPLAY.
  PARAMETERS: p_fld4b(25) TYPE c NO-DISPLAY.
  PARAMETERS: p_fld5a(25) TYPE c NO-DISPLAY.
  PARAMETERS: p_fld5b(25) TYPE c NO-DISPLAY.

SELECTION-SCREEN END   OF SCREEN 1350.


*----------------- Gruplama
SELECTION-SCREEN BEGIN OF SCREEN 1400 AS SUBSCREEN.
  SELECTION-SCREEN BEGIN OF LINE.
    SELECTION-SCREEN COMMENT (1) l_spxxs .
    SELECTION-SCREEN: PUSHBUTTON (17) but01 USER-COMMAND uc01 MODIF ID c1 .
    SELECTION-SCREEN COMMENT (2) l_spxxr .
    SELECTION-SCREEN: PUSHBUTTON (17) but03 USER-COMMAND uc03 MODIF ID c1 .
    SELECTION-SCREEN COMMENT 52(22) pyv FOR FIELD p_yval.
    PARAMETERS: p_yval TYPE CHAR25 AS LISTBOX VISIBLE LENGTH 25 USER-COMMAND UC00 MODIF ID c1 .
  SELECTION-SCREEN END   OF LINE.

  SELECTION-SCREEN BEGIN OF LINE.
    SELECTION-SCREEN COMMENT  1(22) l_grp1 FOR FIELD p_grp1.
    PARAMETERS: p_grp1(25) TYPE c VISIBLE LENGTH 25.
    SELECTION-SCREEN COMMENT 52(22) l_grp4 FOR FIELD p_grp4.
    PARAMETERS: p_grp4(25) TYPE c VISIBLE LENGTH 25.
  SELECTION-SCREEN END   OF LINE .

  SELECTION-SCREEN BEGIN OF LINE.
    SELECTION-SCREEN COMMENT  1(22) l_grp2 FOR FIELD p_grp2.
    PARAMETERS: p_grp2(25) TYPE c  VISIBLE LENGTH 25.
    SELECTION-SCREEN COMMENT 52(22) l_grp5 FOR FIELD p_grp5.
    PARAMETERS: p_grp5(25) TYPE c VISIBLE LENGTH 25.
  SELECTION-SCREEN END   OF LINE.

  SELECTION-SCREEN BEGIN OF LINE.
    SELECTION-SCREEN COMMENT  1(22) l_grp3 FOR FIELD p_grp3.
    PARAMETERS: p_grp3(25) TYPE c VISIBLE LENGTH 25.
    SELECTION-SCREEN COMMENT 52(22) l_grp6 FOR FIELD p_grp6.
    PARAMETERS: p_grp6(25) TYPE c VISIBLE LENGTH 25.
    SELECTION-SCREEN: PUSHBUTTON (4) but02 USER-COMMAND uc02 MODIF ID c1 VISIBLE LENGTH 2 .
  SELECTION-SCREEN END   OF LINE.

  SELECTION-SCREEN BEGIN OF LINE.
    PARAMETERS: p_addt AS CHECKBOX DEFAULT 'X' MODIF ID c1 .
    SELECTION-SCREEN COMMENT (13) pat FOR FIELD p_addt.
    SELECTION-SCREEN COMMENT 20(1) l_spx .
    PARAMETERS: p_addp AS CHECKBOX DEFAULT ' ' USER-COMMAND srt MODIF ID c1 .
    SELECTION-SCREEN: PUSHBUTTON 24(17) but07 USER-COMMAND uc07 MODIF ID c1 .
    SELECTION-SCREEN COMMENT 52(22) pdd FOR FIELD p_layd.
    PARAMETERS: p_layd TYPE disvariant-variant  MODIF ID d1.
  SELECTION-SCREEN END   OF LINE .
SELECTION-SCREEN END   OF SCREEN 1400.

*----------------- Düzen
SELECTION-SCREEN BEGIN OF SCREEN 1500 AS SUBSCREEN.

  SELECTION-SCREEN BEGIN OF LINE.
    SELECTION-SCREEN COMMENT 1(33) ptr FOR FIELD p_disp.
    PARAMETERS: p_disp AS LISTBOX VISIBLE LENGTH 12 DEFAULT '1' USER-COMMAND srt MODIF ID d1.
    SELECTION-SCREEN COMMENT (11) l_spx1 .
    PARAMETERS : p_colr  AS CHECKBOX MODIF ID d1.
    SELECTION-SCREEN COMMENT (22) pco FOR FIELD p_colr.
  SELECTION-SCREEN END   OF LINE .

  SELECTION-SCREEN BEGIN OF LINE.
    SELECTION-SCREEN COMMENT 1(33) psr FOR FIELD p_sort.
    PARAMETERS : p_sort AS LISTBOX VISIBLE LENGTH 22 USER-COMMAND srt MODIF ID d1.
    SELECTION-SCREEN COMMENT (1) l_spx3 .
    PARAMETERS : p_asde AS CHECKBOX MODIF ID m3 .
    SELECTION-SCREEN COMMENT (22) pad FOR FIELD p_asde.
  SELECTION-SCREEN END OF LINE.

  SELECTION-SCREEN BEGIN OF LINE.
    SELECTION-SCREEN COMMENT (33) plo FOR FIELD p_nolb.
    PARAMETERS: p_nolb TYPE char25 AS LISTBOX VISIBLE LENGTH 22 USER-COMMAND srt MODIF ID c1 .
  SELECTION-SCREEN END OF LINE .

  SELECTION-SCREEN BEGIN OF LINE.
    SELECTION-SCREEN COMMENT 1(33) pdm FOR FIELD p_layo.
    PARAMETERS: p_layo TYPE disvariant-variant  MODIF ID d1.
  SELECTION-SCREEN END OF LINE.

SELECTION-SCREEN END   OF SCREEN 1500.

*----------------- Aktarım
SELECTION-SCREEN BEGIN OF SCREEN 1600 AS SUBSCREEN.
  SELECTION-SCREEN BEGIN OF LINE.
    PARAMETERS: p_mail AS CHECKBOX USER-COMMAND srt .
    SELECTION-SCREEN COMMENT 3(28) pml FOR FIELD p_mlto.
    SELECT-OPTIONS: p_mlto FOR adr6-smtp_addr VISIBLE LENGTH 48 NO INTERVALS   .
    SELECTION-SCREEN COMMENT 58(1) l_spa2 .
    PARAMETERS: p_body  AS CHECKBOX DEFAULT ' ' MODIF ID bd.
    SELECTION-SCREEN COMMENT 74(40) pbd FOR FIELD p_body.
  SELECTION-SCREEN END OF LINE.

  SELECTION-SCREEN BEGIN OF LINE.
    SELECTION-SCREEN COMMENT 1(33) psb FOR FIELD p_subj.
    PARAMETERS: p_subj TYPE localfile VISIBLE LENGTH 48.
    SELECTION-SCREEN: PUSHBUTTON (4) but05 USER-COMMAND uc05 MODIF ID c1 VISIBLE LENGTH 2 .
  SELECTION-SCREEN END OF LINE.

  SELECTION-SCREEN BEGIN OF LINE.
    PARAMETERS: p_excl  AS CHECKBOX USER-COMMAND srt .
    SELECTION-SCREEN COMMENT 3(31) pex FOR FIELD p_path.
    PARAMETERS: p_path TYPE localfile VISIBLE LENGTH 48 MODIF ID e1.
    SELECTION-SCREEN: PUSHBUTTON (4) but06 USER-COMMAND uc06 MODIF ID c1 VISIBLE LENGTH 2 .
  SELECTION-SCREEN END OF LINE.

  SELECTION-SCREEN BEGIN OF LINE.
    PARAMETERS : p_wrks AS CHECKBOX DEFAULT ' ' USER-COMMAND srt MODIF ID e1.
    SELECTION-SCREEN COMMENT 3(31) pws FOR FIELD p_xval.
    PARAMETERS : p_xval(3) AS LISTBOX VISIBLE LENGTH 22 MODIF ID c1 .
    SELECTION-SCREEN COMMENT 58(1) l_spa5 .
    PARAMETERS :  p_tech  AS CHECKBOX DEFAULT ' ' MODIF ID d1.
    SELECTION-SCREEN COMMENT 74(32) ptc FOR FIELD p_tech.
  SELECTION-SCREEN END   OF LINE .

  SELECTION-SCREEN BEGIN OF LINE.
    PARAMETERS: p_oprp AS CHECKBOX DEFAULT 'X' .
    SELECTION-SCREEN COMMENT (31) pdr FOR FIELD p_disp.
    PARAMETERS: p_opxl AS CHECKBOX DEFAULT ' ' MODIF ID e1 .
    SELECTION-SCREEN COMMENT 55(65) pox FOR FIELD p_opxl.
  SELECTION-SCREEN END   OF LINE .
SELECTION-SCREEN END   OF SCREEN 1600.

SELECTION-SCREEN BEGIN OF TABBED BLOCK tabs FOR 5 LINES.
  SELECTION-SCREEN TAB (50) l11 USER-COMMAND tab_1100 DEFAULT SCREEN 1100.
  SELECTION-SCREEN TAB (50) l12 USER-COMMAND tab_1300 DEFAULT SCREEN 1300.
  SELECTION-SCREEN TAB (50) l16 USER-COMMAND tab_1350 DEFAULT SCREEN 1350.
  SELECTION-SCREEN TAB (50) l13 USER-COMMAND tab_1400 DEFAULT SCREEN 1400.
  SELECTION-SCREEN TAB (50) l14 USER-COMMAND tab_1500 DEFAULT SCREEN 1500.
  SELECTION-SCREEN TAB (50) l15 USER-COMMAND tab_1600 DEFAULT SCREEN 1600.
SELECTION-SCREEN END OF BLOCK tabs.
*-----------------

*----------------- Tarih
SELECTION-SCREEN BEGIN OF SCREEN 2100 AS SUBSCREEN.
  SELECT-OPTIONS: s_audat  FOR vbak-audat,
                  s_edatu  FOR rbvd-eindt,
                  s_bldat  FOR vbep-wadat,
                  s_fkdat  FOR vbrk-fkdat.
SELECTION-SCREEN END OF SCREEN 2100.

*----------------- Belge
SELECTION-SCREEN BEGIN OF SCREEN 2200 AS SUBSCREEN.
  SELECTION-SCREEN BEGIN OF LINE.
    SELECTION-SCREEN COMMENT 1(25) sob FOR FIELD s_vbeln.
    SELECT-OPTIONS: s_vbeln  FOR vbak-vbeln NO INTERVALS.
    SELECTION-SCREEN COMMENT 55(25) sop FOR FIELD s_posnr.
    SELECT-OPTIONS: s_posnr  FOR vbap-posnr NO INTERVALS.
  SELECTION-SCREEN END OF LINE.

  SELECTION-SCREEN BEGIN OF LINE.
    SELECTION-SCREEN COMMENT 1(25) slb FOR FIELD s_lfbel .
    SELECT-OPTIONS: s_lfbel  FOR lips-vbeln NO INTERVALS.
    SELECTION-SCREEN COMMENT 55(25) smb FOR FIELD s_mblnr.
    SELECT-OPTIONS: s_mblnr  FOR matdoc-mblnr NO INTERVALS.
  SELECTION-SCREEN END OF LINE.

  SELECTION-SCREEN BEGIN OF LINE.
    SELECTION-SCREEN COMMENT 1(25) sfb FOR FIELD s_fkbel.
    SELECT-OPTIONS: s_fkbel  FOR vbrk-vbeln    NO INTERVALS.
    SELECTION-SCREEN COMMENT 55(25) snb FOR FIELD s_belnr.
    SELECT-OPTIONS: s_belnr  FOR vbrk-belnr   NO INTERVALS.
  SELECTION-SCREEN END OF LINE.

  SELECTION-SCREEN BEGIN OF LINE.
    SELECTION-SCREEN COMMENT 1(25) sab FOR FIELD s_augbl.
    SELECT-OPTIONS: s_augbl  FOR bsad-augbl NO INTERVALS.
    SELECTION-SCREEN COMMENT 55(28) ssk FOR FIELD p_bstkd.
    PARAMETERS:     p_bstkd TYPE vbkd-bstkd VISIBLE LENGTH 22.
  SELECTION-SCREEN END OF LINE.
SELECTION-SCREEN END   OF SCREEN 2200.

*----------------- Durum
SELECTION-SCREEN BEGIN OF SCREEN 2300 AS SUBSCREEN.
  SELECTION-SCREEN BEGIN OF LINE.
    SELECTION-SCREEN COMMENT 1(25) sau FOR FIELD s_augru.
    SELECT-OPTIONS: s_augru  FOR vbak-augru  NO INTERVALS.
    SELECTION-SCREEN COMMENT 55(25) sag FOR FIELD s_abgru.
    SELECT-OPTIONS: s_abgru  FOR vbap-abgru NO INTERVALS. "DEFAULT ' ' OPTION EQ SIGN I NO INTERVALS.
  SELECTION-SCREEN END OF LINE.

  SELECTION-SCREEN BEGIN OF LINE.
    SELECTION-SCREEN COMMENT 1(25) ocr FOR FIELD s_ernam.
    SELECT-OPTIONS: s_ernam  FOR vbap-ernam NO INTERVALS.
    SELECTION-SCREEN COMMENT 55(25) ocd FOR FIELD s_erdat.
    SELECT-OPTIONS: s_erdat  FOR vbap-erdat NO INTERVALS.
  SELECTION-SCREEN END OF LINE.

  SELECTION-SCREEN BEGIN OF LINE.
    SELECTION-SCREEN COMMENT 1(25) svt FOR FIELD s_vgtyp.
    SELECT-OPTIONS: s_vgtyp  FOR vbap-vgtyp NO INTERVALS.
    SELECTION-SCREEN COMMENT 55(25) sls FOR FIELD s_lfsta.
    SELECT-OPTIONS: s_lfsta  FOR vbap-lfsta NO INTERVALS.
  SELECTION-SCREEN END OF LINE.

  SELECTION-SCREEN BEGIN OF LINE.
    SELECTION-SCREEN COMMENT 1(25) sws FOR FIELD s_wbsta.
    SELECT-OPTIONS: s_wbsta  FOR lips-wbsta NO INTERVALS.
    SELECTION-SCREEN COMMENT 55(25) sfs FOR FIELD s_fstat.
    SELECT-OPTIONS: s_fstat  FOR vbrk-vf_status NO INTERVALS.
  SELECTION-SCREEN END OF LINE.
SELECTION-SCREEN END OF SCREEN 2300.

SELECTION-SCREEN BEGIN OF TABBED BLOCK tab2 FOR 4 LINES.
  SELECTION-SCREEN TAB (50) l21 USER-COMMAND tab_2100 DEFAULT SCREEN 2100.
  SELECTION-SCREEN TAB (50) l22 USER-COMMAND tab_2200 DEFAULT SCREEN 2200.
  SELECTION-SCREEN TAB (50) l23 USER-COMMAND tab_2300 DEFAULT SCREEN 2300.
SELECTION-SCREEN END OF BLOCK tab2.
*-----------------

*----------------- Order
SELECTION-SCREEN BEGIN OF SCREEN 3100 AS SUBSCREEN.
  SELECT-OPTIONS: s_vkbur  FOR vbak-vkbur,
                  s_vkgrp  FOR vbak-vkgrp,
                  s_auart  FOR vbak-auart,
                  s_kdgrp  FOR vbkd-kdgrp,
                  s_kunnr  FOR vbak-kunnr.
SELECTION-SCREEN END OF SCREEN 3100.

*----------------- Koşul
SELECTION-SCREEN BEGIN OF SCREEN 3200 AS SUBSCREEN.
  SELECT-OPTIONS: s_zterm  FOR vbkd-zterm,
                  s_inco1  FOR vbkd-inco1,
                  s_vkaus  FOR vbap-vkaus,
                  s_vrkms  FOR vbap-vrkme,
                  s_waers  FOR vbap-waerk.
SELECTION-SCREEN END OF SCREEN 3200.

*----------------- Muhatap
SELECTION-SCREEN BEGIN OF SCREEN 3300 AS SUBSCREEN.
  SELECT-OPTIONS: s_kunwe  FOR vbrp-kunwe_ana,
                  s_kunre  FOR vbrp-kunre_ana,
                  s_kunrg  FOR vbrp-kunrg_ana.
  PARAMETERS:     s_parvw TYPE vbpa-parvw MATCHCODE OBJECT sh_tpar_ku.
  SELECT-OPTIONS: s_partn  FOR vbpa-kunnr.

SELECTION-SCREEN END OF SCREEN 3300.

*----------------- Lokasyon
SELECTION-SCREEN BEGIN OF SCREEN 3400 AS SUBSCREEN.
  SELECT-OPTIONS: s_werks  FOR vbap-werks,
                  s_lgort  FOR t001l-lgort,
                  s_vstel  FOR wvfb-vstel,
                  s_cntry  FOR bseg-egbld,
                  s_regio  FOR kna1-regio.
SELECTION-SCREEN END OF SCREEN 3400.

SELECTION-SCREEN BEGIN OF TABBED BLOCK tab3 FOR 5 LINES.
  SELECTION-SCREEN TAB (50) l31 USER-COMMAND tab_3100 DEFAULT SCREEN 3100.
  SELECTION-SCREEN TAB (50) l33 USER-COMMAND tab_3300 DEFAULT SCREEN 3300.
  SELECTION-SCREEN TAB (50) l34 USER-COMMAND tab_3400 DEFAULT SCREEN 3400.
  SELECTION-SCREEN TAB (50) l32 USER-COMMAND tab_3200 DEFAULT SCREEN 3200.
SELECTION-SCREEN END OF BLOCK tab3.
*-----------------

*----------------- Malzeme
SELECTION-SCREEN BEGIN OF SCREEN 4100 AS SUBSCREEN.
  SELECT-OPTIONS: s_mtart FOR mara-mtart,
                  s_matkl FOR mara-matkl,
                  s_matnr FOR vbap-matnr,
                  s_bwtar FOR lips-bwtar,
                  s_charg FOR lips-charg.
SELECTION-SCREEN END   OF SCREEN 4100.

*----------------- Grup
SELECTION-SCREEN BEGIN OF SCREEN 4200 AS SUBSCREEN.
  SELECT-OPTIONS: s_mvgr1 FOR mvke-mvgr1,
                  s_mvgr2 FOR mvke-mvgr2,
                  s_mvgr3 FOR mvke-mvgr3,
                  s_mvgr4 FOR mvke-mvgr4,
                  s_mvgr5 FOR mvke-mvgr5.
SELECTION-SCREEN END   OF SCREEN 4200.

SELECTION-SCREEN BEGIN OF TABBED BLOCK tab4 FOR 5 LINES.
  SELECTION-SCREEN TAB (50) l41 USER-COMMAND tab_4100 DEFAULT SCREEN 4100.
  SELECTION-SCREEN TAB (50) l42 USER-COMMAND tab_4200 DEFAULT SCREEN 4200.
SELECTION-SCREEN END OF BLOCK tab4.
*-----------------

TYPE-POOLS: icon .
DATA functxt TYPE smp_dyntxt.
SELECTION-SCREEN: FUNCTION KEY 1.
SELECTION-SCREEN: FUNCTION KEY 2.

SELECTION-SCREEN: FUNCTION KEY 3. " Demo Selection

PARAMETERS: p1_dynnr LIKE tabs-dynnr NO-DISPLAY,
            p1_acttb LIKE tabs-activetab NO-DISPLAY,
            p2_dynnr LIKE tab2-dynnr NO-DISPLAY,
            p2_acttb LIKE tab2-activetab NO-DISPLAY,
            p3_dynnr LIKE tab3-dynnr NO-DISPLAY,
            p3_acttb LIKE tab3-activetab NO-DISPLAY,
            p4_dynnr LIKE tab4-dynnr NO-DISPLAY,
            p4_acttb LIKE tab4-activetab NO-DISPLAY.

DATA: v_param TYPE c LENGTH 50.
DATA: p_id TYPE c LENGTH 20.
DATA: d_per   TYPE string,
      d_year  TYPE string,
      d_month TYPE string,
      i_year  TYPE gjahr,
      i_month TYPE fcmnr,
      m_start TYPE syst-datum,
      m_end   TYPE syst-datum,
      v_vkorg TYPE vkorg,
      v_vtweg TYPE vtweg,
      v_spart TYPE spart,
      v_vbeln TYPE vbeln,
      v_posnr TYPE posnr.


p_id = 'KEEP_DETAIL'.
CLEAR v_param.
GET PARAMETER ID p_id FIELD v_param.
IF v_param IS NOT INITIAL.
  gv_detail_view = v_param    .
  SET PARAMETER ID p_id FIELD space.
ENDIF.


LOOP AT gt_fieldlist ASSIGNING FIELD-SYMBOL(<gs_fieldlist>).
  p_id = <gs_fieldlist>-fname.
  CONDENSE p_id NO-GAPS.
  CLEAR v_param.
  GET PARAMETER ID p_id FIELD v_param.
  IF v_param IS NOT INITIAL.
    IF v_param = '@space'.
      v_param = space.
    ENDIF.

    CASE p_id.
      WHEN 'SDORG'       .
        SPLIT v_param AT '-' INTO v_vkorg v_vtweg v_spart.
        APPEND VALUE #( sign = 'I' option = 'EQ' low = v_vkorg ) TO s_vkorg          .
        APPEND VALUE #( sign = 'I' option = 'EQ' low = v_vtweg ) TO s_vtweg          .
        APPEND VALUE #( sign = 'I' option = 'EQ' low = v_spart ) TO s_spart          .
      WHEN 'VBELK'       .
        SPLIT v_param AT '-' INTO v_vbeln v_posnr.
        APPEND VALUE #( sign = 'I' option = 'EQ' low = v_vbeln ) TO s_vbeln          .
        APPEND VALUE #( sign = 'I' option = 'EQ' low = v_posnr ) TO s_posnr          .
      WHEN 'LFPER'    .
        SPLIT v_param AT '-' INTO d_year d_month.
        i_year = d_year.
        i_month = d_month.
        IF i_year IS NOT INITIAL AND i_month IS NOT INITIAL.
          CALL FUNCTION 'OIL_MONTH_GET_FIRST_LAST'
            EXPORTING
              i_month     = i_month
              i_year      = i_year
            IMPORTING
              e_first_day = m_start
              e_last_day  = m_end
            EXCEPTIONS
              wrong_date  = 1.
          APPEND VALUE #( sign = 'I' option = 'BT' low = m_start high = m_end ) TO s_edatu          .
        ENDIF.
      WHEN 'FKPER'    .
        SPLIT v_param AT '-' INTO d_year d_month.
        i_year = d_year.
        i_month = d_month.
        IF i_year IS NOT INITIAL AND i_month IS NOT INITIAL.
          CALL FUNCTION 'OIL_MONTH_GET_FIRST_LAST'
            EXPORTING
              i_month     = i_month
              i_year      = i_year
            IMPORTING
              e_first_day = m_start
              e_last_day  = m_end
            EXCEPTIONS
              wrong_date  = 1.
          APPEND VALUE #( sign = 'I' option = 'BT' low = m_start high = m_end ) TO s_fkdat          .
        ENDIF.
      WHEN 'VKPER'    .
        SPLIT v_param AT '-' INTO d_year d_month.
        i_year = d_year.
        i_month = d_month.
        IF i_year IS NOT INITIAL AND i_month IS NOT INITIAL.
          CALL FUNCTION 'OIL_MONTH_GET_FIRST_LAST'
            EXPORTING
              i_month     = i_month
              i_year      = i_year
            IMPORTING
              e_first_day = m_start
              e_last_day  = m_end
            EXCEPTIONS
              wrong_date  = 1.
          APPEND VALUE #( sign = 'I' option = 'BT' low = m_start high = m_end ) TO s_audat          .
        ENDIF.

      WHEN 'AUDAT' . APPEND VALUE #( sign = 'I' option = 'EQ' low = v_param ) TO s_audat        .
      WHEN 'LFDAT' . APPEND VALUE #( sign = 'I' option = 'EQ' low = v_param ) TO s_edatu        .
      WHEN 'BLDAT' . APPEND VALUE #( sign = 'I' option = 'EQ' low = v_param ) TO s_bldat        .
      WHEN 'FKDAT' . APPEND VALUE #( sign = 'I' option = 'EQ' low = v_param ) TO s_fkdat        .
      WHEN 'VBELN' . APPEND VALUE #( sign = 'I' option = 'EQ' low = v_param ) TO s_vbeln        .
      WHEN 'POSNR' . APPEND VALUE #( sign = 'I' option = 'EQ' low = v_param ) TO s_posnr        .
      WHEN 'VGBEL' . APPEND VALUE #( sign = 'I' option = 'EQ' low = v_param ) TO s_vbeln        .
        " WHEN 'TTYPE' . p_term = v_param     .
        " ...

    ENDCASE.
  ENDIF.
  SET PARAMETER ID p_id FIELD space.

ENDLOOP.



*--------------------------- INITIALIZATION ---------------------------*
INITIALIZATION.

  gv_initial_dir = 'Desktop'.
  gv_from_address = 'sapmail@company.com'.
  gv_max_ycolumns = 99.
  gv_max_ordernum = 500000.
  gv_max_xlsheets = 53.
  gv_xl_zoomscale = 85.
  gv_max_filesize = 20971520. " 20 MB
  gv_iso_week = abap_false.
  gv_change_locale = abap_true.
  gv_clgui_enabled = abap_false.  " before setting true activate screens, status and title by double-clicking numbers
  gv_demos_enabled = abap_true.

  gv_disable_bytrm = abap_false.

  but02 = icon_next_page.
  but04 = icon_information.
  but05 = icon_value_help.
  but06 = icon_value_help.

  DATA: gs_opt_list TYPE sscr_opt_list,
        gs_restrict TYPE sscr_restrict,
        gs_ass      TYPE sscr_ass.

  gs_opt_list-name       = 'MLTO_RESTRICTION'.
  gs_opt_list-options-eq = 'X'.
  APPEND gs_opt_list TO gs_restrict-opt_list_tab.

  gs_ass-kind    = 'S'.
  gs_ass-name    = 'P_MLTO'.
  gs_ass-sg_main = 'I'.
  gs_ass-op_main = 'MLTO_RESTRICTION'.
  APPEND gs_ass TO gs_restrict-ass_tab.

  CALL FUNCTION 'SELECT_OPTIONS_RESTRICT'
    EXPORTING
      restriction            = gs_restrict
    EXCEPTIONS
      too_late               = 1
      repeated               = 2
      selopt_without_options = 3
      selopt_without_signs   = 4
      invalid_sign           = 5
      empty_option_list      = 6
      invalid_kind           = 7
      repeated_kind_a        = 8
      OTHERS                 = 9.



CLASS lcl_clgui_handler DEFINITION .

  PUBLIC SECTION .
    METHODS on_double_click FOR EVENT double_click OF cl_gui_alv_grid
      IMPORTING e_row es_row_no e_column.

    METHODS handle_toolbar FOR EVENT toolbar OF cl_gui_alv_grid
      IMPORTING e_object e_interactive sender.

    METHODS handle_user_command FOR EVENT user_command OF cl_gui_alv_grid
      IMPORTING e_ucomm sender.

ENDCLASS .


CLASS lcl_salv_handler DEFINITION.
  PUBLIC SECTION.

    CLASS-METHODS : handle_click FOR EVENT double_click OF cl_salv_events_table
      IMPORTING row column.

ENDCLASS.


CLASS lcl_tree_handler DEFINITION.
  PUBLIC SECTION.

    CLASS-METHODS : handle_click FOR EVENT double_click OF cl_salv_events_tree
      IMPORTING node_key columnname.

ENDCLASS.


CLASS lcl_salv_pop_up DEFINITION .

  PUBLIC SECTION .
    CLASS-DATA: ob_salv_table TYPE REF TO cl_salv_table.
    CLASS-DATA: BEGIN OF st_double_click .
    CLASS-DATA: row    TYPE salv_de_row,
                column TYPE salv_de_column.
    CLASS-DATA: END OF st_double_click .


    CLASS-METHODS: popup
      IMPORTING
        start_line     TYPE i DEFAULT 1
        end_line       TYPE i DEFAULT 6
        start_column   TYPE i DEFAULT 25
        end_column     TYPE i DEFAULT 50
        show_headers   TYPE boolean DEFAULT ' '
        only_column    TYPE c DEFAULT ' '
        pop_header     TYPE c
        popup          TYPE boolean DEFAULT ' '
        VALUE(t_table) TYPE table .

    CLASS-METHODS: on_double_click FOR EVENT double_click OF cl_salv_events_table IMPORTING row column.
    CLASS-METHODS: on_function_click  FOR EVENT if_salv_events_functions~added_function OF cl_salv_events_table IMPORTING e_salv_function.

ENDCLASS.



CLASS lcl_popup_aggr_setup DEFINITION .

  PUBLIC SECTION .

    CLASS-DATA: ob_salv_table TYPE REF TO cl_salv_table.
    CLASS-DATA: t_aggregation_fields TYPE STANDARD TABLE OF ty_fields_agr.

    CLASS-DATA: BEGIN OF st_double_click .
    CLASS-DATA: row    TYPE salv_de_row,
                column TYPE salv_de_column.
    CLASS-DATA: END OF st_double_click .


    CLASS-METHODS: display_popup
      IMPORTING
        start_line     TYPE i DEFAULT 1
        end_line       TYPE i DEFAULT 6
        start_column   TYPE i DEFAULT 25
        end_column     TYPE i DEFAULT 50
        pop_header     TYPE c
        popup          TYPE boolean DEFAULT ' '
        VALUE(t_table) TYPE table .

    CLASS-METHODS: on_function_click  FOR EVENT if_salv_events_functions~added_function OF cl_salv_events_table IMPORTING e_salv_function.
    CLASS-METHODS: on_link_click FOR EVENT link_click OF cl_salv_events_table IMPORTING row column.

ENDCLASS.


CLASS lcl_popup_subt_setup DEFINITION .

  PUBLIC SECTION .

    CLASS-DATA: ob_salv_table TYPE REF TO cl_salv_table.
    CLASS-DATA: t_subtotal_fields TYPE STANDARD TABLE OF ty_fields_sub.

    CLASS-DATA: BEGIN OF st_double_click .
    CLASS-DATA: row    TYPE salv_de_row,
                column TYPE salv_de_column.
    CLASS-DATA: END OF st_double_click .


    CLASS-METHODS: display_popup
      IMPORTING
        start_line     TYPE i DEFAULT 1
        end_line       TYPE i DEFAULT 6
        start_column   TYPE i DEFAULT 25
        end_column     TYPE i DEFAULT 50
        pop_header     TYPE c
        popup          TYPE boolean DEFAULT ' '
        VALUE(t_table) TYPE table .

    CLASS-METHODS: on_function_click  FOR EVENT if_salv_events_functions~added_function OF cl_salv_events_table IMPORTING e_salv_function.
    CLASS-METHODS: on_link_click FOR EVENT link_click OF cl_salv_events_table IMPORTING row column.

ENDCLASS.


CLASS lcl_main DEFINITION.

  PUBLIC SECTION.
    CLASS-DATA:

      go_salv  TYPE REF TO cl_salv_table,
      go_tree  TYPE REF TO cl_salv_tree,

      go_grid  TYPE REF TO cl_gui_alv_grid,
      go_dock  TYPE REF TO cl_gui_docking_container,

      go_grid2 TYPE REF TO cl_gui_alv_grid,
      go_dock2 TYPE REF TO cl_gui_docking_container.

    CLASS-METHODS :
      initialization,
      start_of_selection,
      check_of_selection CHANGING cv_error TYPE char1 ,
      at_selection_screen,
      at_selection_screen_output,
      f4_fpath IMPORTING iv_fname TYPE char15,
      f4_ernam IMPORTING iv_fname TYPE char15,
      f4_regio IMPORTING iv_fname TYPE char15,
      f4_mlto  IMPORTING iv_fname TYPE char15,
      set_fieldlist,
      set_fieldcatalog RETURNING VALUE(rt_fcat) TYPE lvc_t_fcat,
      ret_group_level IMPORTING
                        i_ls_value      TYPE any
                        iv_level        TYPE string
                      RETURNING
                        VALUE(r_result) TYPE char10,
      go_when_clicked IMPORTING
                        iv_row    TYPE int8
                        iv_column TYPE string   ,
      ret_styles_string RETURNING VALUE(styles_xml) TYPE string,
      ret_function_values,
      set_text_variables,
      clear_selection,
      set_title,
      display_data,
      export_data,
      create_salv_table,
      create_salv_tree,
      show_alv,
      show_alv_detail,
      get_source_data,
      get_result_data,
      get_formatted_data RETURNING VALUE(rd_result) TYPE abap_bool,
      fill_data RETURNING VALUE(rd_result) TYPE abap_bool,
      convert_to_group RETURNING VALUE(rd_result) TYPE abap_bool,
      convert_to_pivot RETURNING VALUE(rd_result) TYPE abap_bool,
      set_aggrs,
      fill_aggrs,
      set_subts,
      fill_subts,
      fill_choices IMPORTING pv_only_fill TYPE abap_bool,
      fill_groups,
      get_variant_slc,
      get_variant_dsp IMPORTING pv_islem TYPE string
                      CHANGING  pv_duzen TYPE any.

ENDCLASS.



CREATE OBJECT go_main.

*------------------------ AT SELECTION-SCREEN -------------------------*
AT SELECTION-SCREEN ON VALUE-REQUEST FOR p_layo.
  go_main->get_variant_dsp( EXPORTING pv_islem = 'F4' CHANGING pv_duzen = p_layo ).

AT SELECTION-SCREEN ON VALUE-REQUEST FOR p_layd.
  go_main->get_variant_dsp( EXPORTING pv_islem = 'F4' CHANGING pv_duzen = p_layd ).

AT SELECTION-SCREEN ON VALUE-REQUEST FOR p_vari.
  go_main->get_variant_slc( ).

AT SELECTION-SCREEN ON VALUE-REQUEST FOR p_xval.
  go_main->fill_choices( EXPORTING pv_only_fill =  abap_true ).

AT SELECTION-SCREEN ON VALUE-REQUEST FOR p_path.
  go_main->f4_fpath( EXPORTING iv_fname = 'P_PATH' ) .

AT SELECTION-SCREEN ON VALUE-REQUEST FOR s_ernam-low."
  go_main->f4_ernam( EXPORTING iv_fname = 'S_ERNAM-LOW' ) .

AT SELECTION-SCREEN ON VALUE-REQUEST FOR s_ernam-high."
  go_main->f4_ernam( EXPORTING iv_fname = 'S_ERNAM-HIGH' ) .

AT SELECTION-SCREEN ON VALUE-REQUEST FOR s_regio-low."
  go_main->f4_regio( EXPORTING iv_fname = 'S_REGIO-LOW'  ) .

AT SELECTION-SCREEN ON VALUE-REQUEST FOR s_regio-high."
  go_main->f4_regio( EXPORTING iv_fname = 'S_REGIO-HIGH'  ) .

AT SELECTION-SCREEN ON VALUE-REQUEST FOR p_mlto-low."
  go_main->f4_mlto( EXPORTING iv_fname = 'P_MLTO-LOW'  ) .

AT SELECTION-SCREEN.
  go_main->at_selection_screen( ).

AT SELECTION-SCREEN OUTPUT.
  go_main->at_selection_screen_output( ).

START-OF-SELECTION.
  go_main->start_of_selection( ).



CLASS lcl_main IMPLEMENTATION.

  METHOD start_of_selection.

    DATA : lv_error(1) TYPE c.

    check_of_selection( CHANGING cv_error = lv_error ).

    IF p_xval IS INITIAL AND s_fnams[] IS INITIAL.
      p_wrks = ' '.
    ENDIF.

    IF lv_error = 'X'.
      RETURN.
    ENDIF.

    IF ( p_excl EQ 'X' OR p_mail EQ 'X' OR ( p_disp EQ '3' AND p_layo IS NOT INITIAL ) ) AND p_expo IS INITIAL.
      CALL METHOD go_main->export_data( ).
      RETURN.
    ELSE.
      get_source_data( ).
    ENDIF.

    IF gv_halt = abap_true.
      gv_halt = abap_false.
      RETURN.
    ENDIF.

    get_result_data( ).

    IF get_formatted_data( ).
      IF fill_data( ).
        display_data( ).
        p_expo = ' '.
      ENDIF.
    ENDIF.

  ENDMETHOD.


  METHOD fill_data.

    IF gv_detail_view = abap_false.

      IF s_fnams[] IS NOT INITIAL .  " GRUPLANMIŞ VERİ İLE..
        IF p_yval IS NOT INITIAL.
          rd_result = go_main->convert_to_pivot( ).
        ELSE.
          rd_result = go_main->convert_to_group( ).
        ENDIF.
        IF rd_result EQ abap_true.
          ASSIGN <gs_group_data> TO <gs_itab>.
        ENDIF.
      ELSE.
        rd_result = abap_true.
        ASSIGN gt_main_data TO <gs_itab>.
        gt_fcat = set_fieldcatalog( ).
      ENDIF.

    ELSE.

      REFRESH gt_detail_data.

      SELECT *
      FROM   @gt_main_data AS t1
      WHERE (gv_filter_where)
      APPENDING CORRESPONDING FIELDS OF TABLE @gt_detail_data.

      ASSIGN gt_detail_data TO <gs_itab>.
      gt_fcat = set_fieldcatalog( ).
    ENDIF.

  ENDMETHOD.


  METHOD display_data.

    IF <gs_itab> IS INITIAL.
      MESSAGE s208(fz).
    ELSE.

      set_title( ).

      IF p_disp EQ '0' AND p_expo NE 'X' .
        IF gv_detail_view = abap_false.
          CALL SCREEN 0100.  "< == Just double click and activate the screen.
        ELSE.
          CALL SCREEN 0200.  "< == Just double click and activate the screen.
        ENDIF.
      ELSE.
        IF p_disp EQ '3' AND p_expo IS INITIAL AND gv_detail_view = abap_false.
          create_salv_tree( ).
          go_tree->display( ).
        ELSE.
          create_salv_table( ).
          go_salv->display( ).
        ENDIF.
      ENDIF.

    ENDIF.

  ENDMETHOD.


  METHOD create_salv_table.

    " Create the ALV table
    DATA(list_bool) = abap_false.
    IF p_disp EQ '2'.
      list_bool = abap_true.
    ENDIF.

    TRY.
        cl_salv_table=>factory( EXPORTING list_display = list_bool
                                      "    r_container  = o_cnt
                                IMPORTING r_salv_table = go_salv
                                CHANGING  t_table      = <gs_itab> ).
      CATCH cx_salv_msg.

    ENDTRY.

    "
    "go_salv->set_screen_status( pfstatus      =  'SALV_STANDARD'
    "                            report        =  ''
    "                            set_functions = gr_salv_table->c_functions_all ).

    " build_toolbar.
    DATA: lo_functions TYPE REF TO cl_salv_functions_list.
    lo_functions = go_salv->get_functions( ).
    lo_functions->set_all( abap_true ).

    " set special groups
    DATA: lo_functional_settings TYPE REF TO cl_salv_functional_settings,
          lo_specific_groups     TYPE REF TO cl_salv_specific_groups,
          lv_text                TYPE cl_salv_specific_groups=>y_text.

    lo_functional_settings = go_salv->get_functional_settings( ).
    lo_specific_groups = lo_functional_settings->get_specific_groups( ).

    lv_text =  VALUE #( gt_textlist[ sym = 'Y10' ]-text OPTIONAL ).
    lo_specific_groups->add_specific_group( id = '10' text = lv_text ).
    lv_text =  VALUE #( gt_textlist[ sym = 'Y20' ]-text OPTIONAL ).
    lo_specific_groups->add_specific_group( id = '20' text = lv_text ).
    lv_text =  VALUE #( gt_textlist[ sym = 'Y30' ]-text OPTIONAL ).
    lo_specific_groups->add_specific_group( id = '30' text = lv_text ).
    lv_text =  VALUE #( gt_textlist[ sym = 'Y40' ]-text OPTIONAL ).
    lo_specific_groups->add_specific_group( id = '40' text = lv_text ).
    lv_text =  VALUE #( gt_textlist[ sym = 'Y50' ]-text OPTIONAL ).
    lo_specific_groups->add_specific_group( id = '50' text = lv_text ).
    lv_text =  VALUE #( gt_textlist[ sym = 'Y60' ]-text OPTIONAL ).
    lo_specific_groups->add_specific_group( id = '60' text = lv_text ).
    lv_text =  VALUE #( gt_textlist[ sym = 'Y70' ]-text OPTIONAL ).
    lo_specific_groups->add_specific_group( id = '70' text = lv_text ).
    lv_text =  VALUE #( gt_textlist[ sym = 'Y80' ]-text OPTIONAL ).
    lo_specific_groups->add_specific_group( id = '80' text = lv_text ).
    lv_text =  VALUE #( gt_textlist[ sym = 'Y90' ]-text OPTIONAL ).
    lo_specific_groups->add_specific_group( id = '90' text = lv_text ).
    lv_text =  VALUE #( gt_textlist[ sym = 'Y95' ]-text OPTIONAL ).
    lo_specific_groups->add_specific_group( id = '95' text = lv_text ).
    lv_text =  VALUE #( gt_textlist[ sym = 'Y97' ]-text OPTIONAL ).
    lo_specific_groups->add_specific_group( id = '97' text = lv_text ).

    " set event handler
    DATA: lo_events TYPE REF TO cl_salv_events_table.
    lo_events = go_salv->get_event( ).
    SET HANDLER lcl_salv_handler=>handle_click  FOR lo_events.

    " build_layout.
    DATA: layout TYPE REF TO cl_salv_layout.
    DATA: layout_key TYPE salv_s_layout_key.
    layout = go_salv->get_layout( ).
    layout_key-report = sy-repid.
    layout->set_key( layout_key ).
    layout->set_save_restriction( if_salv_c_layout=>restrict_none ).

    " set initial Layout
    DATA: lf_variant TYPE slis_vari.
    IF gv_detail_view EQ abap_true.
      lf_variant = p_layd.
    ELSE.
      lf_variant = p_layo.
    ENDIF.
    layout->set_initial_layout( lf_variant ).

    " report_settings.
    DATA: report_settings TYPE REF TO cl_salv_display_settings.
    report_settings = go_salv->get_display_settings( ).
    report_settings->set_striped_pattern( if_salv_c_bool_sap=>true ).
    report_settings->set_list_header( CONV #( gv_alv_title )  ).
    IF p_ocds EQ 'X'.
      report_settings->set_no_merging( if_salv_c_bool_sap=>true ).
    ENDIF.

    " row selection type
    go_salv->get_selections( )->set_selection_mode( if_salv_c_selection_mode=>cell ).    " or if_salv_c_selection_mode=>multiple

    " column settings
    DATA lo_columns TYPE REF TO cl_salv_columns_table.
    DATA lo_col_tab TYPE REF TO cl_salv_column_table.
    DATA lo_column  TYPE REF TO cl_salv_column.
    DATA: ls_color TYPE lvc_s_colo.
    DATA: lo_aggrs TYPE REF TO cl_salv_aggregations.

    lo_aggrs = go_salv->get_aggregations( ).

    lo_columns = go_salv->get_columns( ).

    " fix key columns
    lo_columns->set_key_fixation( abap_true ).

    " cell color
    IF s_fnams[] IS NOT INITIAL AND gv_detail_view EQ abap_false.
      lo_columns->set_color_column( 'SCOL_TAB' ).
    ENDIF.

    " optimize
    IF p_colr EQ ' ' .
      IF ( gv_detail_view = abap_false AND p_layo EQ ' ' ) OR ( gv_detail_view = abap_true AND p_layd EQ ' ' ).
        lo_columns->set_optimize( abap_true ).
      ENDIF.
    ENDIF.

    " hide all
    DATA(lo_cols) = lo_columns->get( ).
    LOOP AT lo_cols ASSIGNING FIELD-SYMBOL(<fs_cols>).
      lo_column ?= <fs_cols>-r_column.
      lo_column->set_technical( value  = if_salv_c_bool_sap=>true ).
    ENDLOOP.


    LOOP AT gt_fcat ASSIGNING FIELD-SYMBOL(<fs_fcat>) WHERE fieldname NE 'SCOL_TAB'.

      CHECK lo_columns->get_column( <fs_fcat>-fieldname ) IS NOT INITIAL.

      lo_col_tab ?= lo_columns->get_column( <fs_fcat>-fieldname ).

      IF <fs_fcat>-tech NE 'X'.

        " unhide
        lo_col_tab->set_technical( value = if_salv_c_bool_sap=>false ).

        IF <fs_fcat>-no_out EQ 'X'.
          lo_col_tab->set_visible( if_salv_c_bool_sap=>false ).
        ELSE.
          lo_col_tab->set_visible( if_salv_c_bool_sap=>true ).
        ENDIF.

        " specific groups
        lo_col_tab->set_specific_group( id = condense( <fs_fcat>-sp_group ) ).

        " set key
        IF <fs_fcat>-key EQ 'X'.
          lo_col_tab->set_key( if_salv_c_bool_sap=>true ).
        ENDIF.

        " column coloring
        ls_color-col = <fs_fcat>-emphasize+1(1).
        ls_color-int = <fs_fcat>-emphasize+2(1).
        lo_col_tab->set_color( ls_color ).

        " set sign
        lo_col_tab->set_sign( if_salv_c_bool_sap=>true ).

        " set ref field
        lo_col_tab->set_currency_column( <fs_fcat>-cfieldname ).
        lo_col_tab->set_quantity_column( <fs_fcat>-qfieldname ).

        " no zero
        IF <fs_fcat>-no_zero EQ 'X'.
          lo_col_tab->set_zero( if_salv_c_bool_sap=>false ).
        ENDIF.

        " set text
        lo_col_tab->set_long_text( <fs_fcat>-scrtext_l ).
        lo_col_tab->set_medium_text( <fs_fcat>-scrtext_m ).
        lo_col_tab->set_short_text( <fs_fcat>-scrtext_s ).

        lo_col_tab->set_output_length( <fs_fcat>-outputlen ).
        lo_col_tab->set_decimals( <fs_fcat>-decimals_o ).

        " set aggregations
        IF <fs_fcat>-do_sum EQ 'X'.
          lo_aggrs->add_aggregation( columnname  = <fs_fcat>-fieldname aggregation = if_salv_c_aggregation=>total ).
        ENDIF.

      ELSE.

        lo_col_tab->set_technical( value = if_salv_c_bool_sap=>true ).

      ENDIF.

    ENDLOOP.

  ENDMETHOD.


  METHOD create_salv_tree.

    DATA: hier_head TYPE string.
    DATA: node_text TYPE string.
    DATA: new_line TYPE REF TO data.
    DATA: name TYPE c LENGTH 50 .
    FIELD-SYMBOLS <comp> TYPE any.
    FIELD-SYMBOLS: <f_line>  TYPE any,
                   <f_field> TYPE any.

    DATA : lv_node_key0  TYPE lvc_nkey,
           lv_node_key1  TYPE lvc_nkey,
           lv_node_key2  TYPE lvc_nkey,
           lv_node_key3  TYPE lvc_nkey,
           lv_node_key4  TYPE lvc_nkey,
           lv_node_key5  TYPE lvc_nkey,
           lv_node_key6  TYPE lvc_nkey,
           lv_node_key7  TYPE lvc_nkey,
           lv_node_key8  TYPE lvc_nkey,
           lv_node_key9  TYPE lvc_nkey,
           lv_node_key10 TYPE lvc_nkey,
           lv_node_key11 TYPE lvc_nkey,
           lv_node_key12 TYPE lvc_nkey,
           lv_node_key13 TYPE lvc_nkey,
           lv_node_text  TYPE lvc_value.

    DATA lt_node_list TYPE TABLE OF lvc_nkey.

    DATA(flevel) = 0.

    DATA lo_node    TYPE REF TO cl_salv_node.
    DATA lo_columns TYPE REF TO cl_salv_columns.
    DATA lo_column  TYPE REF TO cl_salv_column.
    DATA ls_color   TYPE lvc_s_colo.

    FIELD-SYMBOLS <node_curr> TYPE any.
    FIELD-SYMBOLS <node_prev> TYPE any.

    LOOP AT gt_fcat ASSIGNING FIELD-SYMBOL(<fs_fcat>).
      IF   <fs_fcat>-fieldname EQ 'SCOL_TAB'
        OR <fs_fcat>-fieldname EQ 'COLOR'
        OR <fs_fcat>-fieldname EQ 'SHEET'
        "OR <fs_fcat>-fieldname EQ 'DUMBE'
        OR <fs_fcat>-fieldname EQ 'DUMMY'
        OR <fs_fcat>-fieldname EQ 'HIERA'
        OR substring_before( val = <fs_fcat>-fieldname sub = '00' ) EQ 'SORT'
        OR substring_before( val = <fs_fcat>-fieldname sub = '1' ) EQ 'WADIV'.
        DELETE gt_fcat WHERE fieldname EQ <fs_fcat>-fieldname.
      ENDIF.
    ENDLOOP.

    " ALV TREE için boş tablo
    DATA : gt_empty  TYPE REF TO data.
    FIELD-SYMBOLS: <fs_empty> TYPE ANY TABLE.
    CALL METHOD cl_alv_table_create=>create_dynamic_table
      EXPORTING
        "  i_style_table             = 'X'
        it_fieldcatalog           = gt_fcat
      IMPORTING
        ep_table                  = gt_empty
      EXCEPTIONS
        generate_subpool_dir_full = 1
        OTHERS                    = 2.
    ASSIGN gt_empty->* TO <fs_empty>.

    " TREE yarat
    cl_salv_tree=>factory(
    "      EXPORTING
    "       r_container = cl_gui_container=>screen0
          IMPORTING
            r_salv_tree = go_tree
          CHANGING
            t_table     = <fs_empty> ).

    "  build_toolbar.
    DATA(lo_functions) = go_tree->get_functions( ).
    lo_functions->set_all( abap_true ).

    " set event handler
    DATA: lo_events TYPE REF TO cl_salv_events_tree.
    lo_events = go_tree->get_event( ).
    SET HANDLER lcl_tree_handler=>handle_click FOR lo_events.

    " build_layout.
    DATA: layout     TYPE REF TO cl_salv_layout.
    DATA: layout_key TYPE salv_s_layout_key.
    layout = go_tree->get_layout( ).
    layout_key-report = sy-repid.
    layout->set_key( layout_key ).
    layout->set_save_restriction( if_salv_c_layout=>restrict_none ).

    " set initial Layout
    DATA: lf_variant TYPE slis_vari.
    lf_variant = p_layo.
    layout->set_initial_layout( lf_variant ).

    " set nodes
    DATA(max_hiera) = 0.
    LOOP AT <gs_itab> ASSIGNING FIELD-SYMBOL(<fs_dummy>).
      ASSIGN COMPONENT 'HIERA' OF STRUCTURE <fs_dummy> TO <f_field>.
      IF <f_field> GT max_hiera.
        max_hiera = <f_field>.
      ENDIF.
    ENDLOOP.


    DATA(lo_nodes) = go_tree->get_nodes( ).

    " Boş satır
    CREATE DATA new_line LIKE LINE OF <fs_empty>.
    ASSIGN new_line->* TO <f_line>.

    " TREE hiyerarşi oluştur
    LOOP AT <gs_itab> ASSIGNING FIELD-SYMBOL(<fs_itab>).

      ASSIGN COMPONENT 'HIERA' OF STRUCTURE <fs_itab> TO <f_field>.

      MOVE-CORRESPONDING <fs_itab> TO <f_line>.

      IF sy-tabix NE 1.
        flevel = <f_field> - 1.
        IF flevel GE 0.
          name = 'lv_node_key' && flevel.
          ASSIGN (name) TO <node_prev>.
          WHILE <node_prev> IS INITIAL AND flevel GE 0.
            flevel = flevel - 1.
            name = 'lv_node_key' && flevel.
            ASSIGN (name) TO <node_prev>.
          ENDWHILE.
        ENDIF.
      ENDIF.

      lv_node_text = ''.
      IF <f_field> NE 0.
        name = '<f_line>-' && s_subts[ <f_field> ]-low.
        ASSIGN (name) TO <comp>.
        lv_node_text = <comp>.

        name = VALUE #( gt_fieldlist[ fname = s_subts[ <f_field> ]-low ]-grpx1 OPTIONAL ).
        IF name IS NOT INITIAL.
          name = '<f_line>-' && name.
          ASSIGN (name) TO <comp>.
          IF p_nolb IS INITIAL.
            lv_node_text = lv_node_text && | | && <comp>.
          ELSEIF p_nolb EQ 'Z'.
            lv_node_text = <comp>.
          ENDIF.
        ENDIF.
      ENDIF.


      DATA: style TYPE int4.

      style = if_salv_c_tree_style=>default.

      CASE <f_field>.
        WHEN 0.  style = if_salv_c_tree_style=>emphasized_negative.   " kırmızı
        WHEN 1.  style = if_salv_c_tree_style=>emphasized.            " sarı
        WHEN 2.  style = if_salv_c_tree_style=>emphasized_positive.   " yeşil
        WHEN 3.  style = if_salv_c_tree_style=>emphasized_a.          " mavi
        WHEN 4.  style = if_salv_c_tree_style=>emphasized_b.          " gri
        WHEN 5.  style = if_salv_c_tree_style=>emphasized_c.          " portakal
      ENDCASE.

      IF <f_field> EQ max_hiera.
        style = if_salv_c_tree_style=>default.
      ENDIF.

      IF <node_prev> IS NOT ASSIGNED.
        lo_node = lo_nodes->add_node( related_node   = ''
                    relationship   = cl_salv_nodes=>if_salv_c_node_relation~parent
                    data_row       = <f_line>
                    text           = lv_node_text
                    row_style      = style
                    ).
      ELSE.
        lo_node = lo_nodes->add_node( related_node   = <node_prev>
                    relationship   = cl_gui_column_tree=>relat_last_child
                    data_row       = <f_line>
                    text           = lv_node_text
                    row_style      = style
                    ).
      ENDIF.

      flevel = <f_field> .
      name = 'lv_node_key' && flevel.
      ASSIGN (name) TO <node_curr>.
      <node_curr> = lo_node->get_key( ).

      " Expand edilecek satırları sakla
      IF flevel LT CONV int2( p_hlev ).
        IF ( flevel EQ 0 AND p_addt EQ 'X' ) OR VALUE #( s_subts[ flevel ]-high OPTIONAL ) EQ 'X'.
          COLLECT <node_curr> INTO lt_node_list.
        ENDIF.
      ENDIF.

      LOOP AT gt_fcat ASSIGNING FIELD-SYMBOL(<fs_line>).

        IF <fs_line>-inttype EQ 'I' OR <fs_line>-inttype EQ 'P'.
          ASSIGN COMPONENT <fs_line>-fieldname OF STRUCTURE <fs_itab> TO FIELD-SYMBOL(<s_field>).
          IF <s_field> LT 0.
            lo_node->get_item( <fs_line>-fieldname )->set_style(  if_salv_c_tree_style=>intensified_critical ).
          ENDIF.
        ENDIF.

      ENDLOOP.

    ENDLOOP.

    IF p_hlev IS INITIAL.
      lo_nodes->expand_all( ).
    ELSE.
      " Varsayılan açık node
      LOOP AT lt_node_list ASSIGNING FIELD-SYMBOL(<ls_node>).
        lo_node = lo_nodes->get_node( node_key = <ls_node> ).
        lo_node->expand( ).
      ENDLOOP.
    ENDIF.

    " ALV TREE için kolonları yeniden adlandır ve gizle
    lo_columns = go_tree->get_columns( ).

    IF p_colr EQ ' ' .
      IF ( gv_detail_view = abap_false AND p_layo EQ ' ' ) OR ( gv_detail_view = abap_true AND p_layd EQ ' ' ).
        lo_columns->set_optimize( abap_true ).
      ENDIF.
    ENDIF.

    DATA(lo_col) = lo_columns->get( ).

    LOOP AT lo_col ASSIGNING FIELD-SYMBOL(<fs_col>).
      lo_column ?= <fs_col>-r_column.

      " set ref field
      lo_column->set_currency_column( VALUE #( gt_fcat[ fieldname = <fs_col>-columnname ]-cfieldname OPTIONAL ) ).
      lo_column->set_quantity_column( VALUE #( gt_fcat[ fieldname = <fs_col>-columnname ]-qfieldname OPTIONAL ) ).

      " no zero
      IF VALUE #( gt_fcat[ fieldname = <fs_col>-columnname ]-no_zero OPTIONAL ) EQ 'X'.
        lo_column->set_zero( if_salv_c_bool_sap=>false ).
      ENDIF.

      " set text
      lo_column->set_long_text( VALUE #( gt_fcat[ fieldname = <fs_col>-columnname ]-scrtext_l OPTIONAL ) ).
      lo_column->set_medium_text( VALUE #( gt_fcat[ fieldname = <fs_col>-columnname ]-scrtext_m OPTIONAL ) ).
      lo_column->set_short_text( VALUE #( gt_fcat[ fieldname = <fs_col>-columnname ]-scrtext_s OPTIONAL ) ).
      lo_column->set_output_length( VALUE #( gt_fcat[ fieldname = <fs_col>-columnname ]-outputlen OPTIONAL ) ).
      lo_column->set_decimals( VALUE #( gt_fcat[ fieldname = <fs_col>-columnname ]-decimals_o OPTIONAL ) ).

      " Kolonları gizle
      IF VALUE #( gt_fcat[ fieldname = <fs_col>-columnname ]-key OPTIONAL ) EQ 'X' OR
         VALUE #( gt_fcat[ fieldname = <fs_col>-columnname ]-no_out OPTIONAL ) EQ 'X'.
        IF VALUE #( s_subts[ 1 ]-high OPTIONAL ) EQ 'X'.
          lo_column->set_visible( value = if_salv_c_bool_sap=>false ).
        ENDIF.
      ENDIF.


      IF VALUE #( gt_fcat[ fieldname = <fs_col>-columnname ]-tech OPTIONAL ) EQ 'X'.
        lo_column->set_technical( value = if_salv_c_bool_sap=>true ).
      ENDIF.

      " Grup Hiyerarşisi için başlık
      LOOP AT s_fnams[] ASSIGNING FIELD-SYMBOL(<fs_fnams>).
        IF <fs_fnams>-low EQ <fs_col>-columnname.
          node_text = VALUE #( gt_fieldlist[ fname = <fs_fnams>-low ]-texts OPTIONAL ).
          IF hier_head IS INITIAL.
            hier_head = node_text.
          ELSE.
            CONCATENATE hier_head
                        node_text
            INTO hier_head SEPARATED BY ' / '.
          ENDIF.
        ENDIF.
      ENDLOOP.

    ENDLOOP.

    " tree report_settings.
    DATA(lo_settings) = go_tree->get_tree_settings( ).
    lo_settings->set_header( CONV #( gv_alv_title )  ).
    lo_settings->set_hierarchy_size( 50 ).
    lo_settings->set_hierarchy_icon( CONV salv_de_tree_image( icon_tree ) ).
    lo_settings->set_hierarchy_header( CONV #( hier_head ) ).

  ENDMETHOD.


  METHOD show_alv.
    DATA : ls_variant    TYPE disvariant,
           lt_toolbar_ex TYPE ui_functions,
           go_event      TYPE REF TO lcl_clgui_handler.

    ls_variant-report = sy-repid.
    ls_variant-variant = p_layo.

    IF go_grid IS NOT BOUND.

      IF go_dock IS NOT BOUND.

        CREATE OBJECT go_dock
          EXPORTING
            repid                       = sy-repid
            dynnr                       = sy-dynnr
            extension                   = 500
            side                        = cl_gui_docking_container=>dock_at_top
            parent                      = cl_gui_container=>default_screen
          EXCEPTIONS
            cntl_error                  = 1
            cntl_system_error           = 2
            create_error                = 3
            lifetime_error              = 4
            lifetime_dynpro_dynpro_link = 5
            OTHERS                      = 6.
      ENDIF.

      CREATE OBJECT go_grid
        EXPORTING
          i_parent = go_dock.

      CREATE OBJECT go_event .
      SET HANDLER go_event->handle_toolbar FOR go_grid.
      SET HANDLER go_event->handle_user_command FOR go_grid.
      SET HANDLER go_event->on_double_click FOR go_grid.

      CALL METHOD go_grid->set_table_for_first_display
        EXPORTING
          is_layout                     = VALUE #( zebra = 'X' sel_mode = 'A' info_fname = 'COLOR' ctab_fname = 'SCOL_TAB' )
          it_special_groups             = VALUE #( ( sp_group = 01 text = VALUE #( gt_textlist[ sym = 'Y01' ]-text OPTIONAL ) )
                                                   ( sp_group = 02 text = VALUE #( gt_textlist[ sym = 'Y02' ]-text OPTIONAL ) )
                                                   ( sp_group = 03 text = VALUE #( gt_textlist[ sym = 'Y03' ]-text OPTIONAL ) )
                                                   ( sp_group = 04 text = VALUE #( gt_textlist[ sym = 'Y04' ]-text OPTIONAL ) )
                                                   ( sp_group = 05 text = VALUE #( gt_textlist[ sym = 'Y05' ]-text OPTIONAL ) )
                                                   ( sp_group = 06 text = VALUE #( gt_textlist[ sym = 'Y06' ]-text OPTIONAL ) )
                                                   ( sp_group = 07 text = VALUE #( gt_textlist[ sym = 'Y07' ]-text OPTIONAL ) )
                                                   ( sp_group = 08 text = VALUE #( gt_textlist[ sym = 'Y08' ]-text OPTIONAL ) )
                                                 "  ( sp_group = 09 text = VALUE #( gt_textlist[ sym = 'Y09' ]-text OPTIONAL ) )
                                                 )
          is_variant                    = ls_variant
          i_save                        = 'A'
          i_default                     = 'X'
        CHANGING
          it_fieldcatalog               = gt_fcat
          it_outtab                     = <gs_itab>
        EXCEPTIONS
          invalid_parameter_combination = 1
          program_error                 = 2
          too_many_lines                = 3
          OTHERS                        = 4.

      "  go_grid->register_edit_event( cl_gui_alv_grid=>mc_evt_modified ).
      "  go_grid->register_edit_event( cl_gui_alv_grid=>mc_evt_enter ).

    ELSE.

      CALL METHOD go_grid->set_frontend_layout
        EXPORTING
          is_layout = VALUE #( zebra = 'X' sel_mode = 'A' info_fname = 'COLOR' ctab_fname = 'SCOL_TAB' ).

      CALL METHOD go_grid->refresh_table_display(
          is_stable      = VALUE lvc_s_stbl( col = 'X' row = 'X' )
          i_soft_refresh = 'X' ).

    ENDIF.

    CALL METHOD go_grid->set_toolbar_interactive.

  ENDMETHOD.


  METHOD show_alv_detail.
    DATA : ls_variant    TYPE disvariant,
           lt_toolbar_ex TYPE ui_functions,
           go_event      TYPE REF TO lcl_clgui_handler.

    ls_variant-report = sy-repid.
    ls_variant-variant = p_layd.

    IF go_grid2 IS NOT BOUND.

      IF go_dock2 IS NOT BOUND.

        CREATE OBJECT go_dock2
          EXPORTING
            repid                       = sy-repid
            dynnr                       = sy-dynnr
            extension                   = 500
            side                        = cl_gui_docking_container=>dock_at_top
            parent                      = cl_gui_container=>default_screen
          EXCEPTIONS
            cntl_error                  = 1
            cntl_system_error           = 2
            create_error                = 3
            lifetime_error              = 4
            lifetime_dynpro_dynpro_link = 5
            OTHERS                      = 6.
      ENDIF.

      CREATE OBJECT go_grid2
        EXPORTING
          i_parent = go_dock2.

      CREATE OBJECT go_event .
      SET HANDLER go_event->handle_toolbar FOR go_grid2.
      SET HANDLER go_event->handle_user_command FOR go_grid2.
      SET HANDLER go_event->on_double_click FOR go_grid2.

      CALL METHOD go_grid2->set_table_for_first_display
        EXPORTING
          is_layout                     = VALUE #( zebra = 'X' sel_mode = 'A' info_fname = 'COLOR' ctab_fname = 'SCOL_TAB' )
          it_special_groups             = VALUE #( ( sp_group = 10 text = VALUE #( gt_textlist[ sym = 'Y10' ]-text OPTIONAL ) )
                                                   ( sp_group = 20 text = VALUE #( gt_textlist[ sym = 'Y20' ]-text OPTIONAL ) )
                                                   ( sp_group = 30 text = VALUE #( gt_textlist[ sym = 'Y30' ]-text OPTIONAL ) )
                                                   ( sp_group = 40 text = VALUE #( gt_textlist[ sym = 'Y40' ]-text OPTIONAL ) )
                                                   ( sp_group = 50 text = VALUE #( gt_textlist[ sym = 'Y50' ]-text OPTIONAL ) )
                                                   ( sp_group = 60 text = VALUE #( gt_textlist[ sym = 'Y60' ]-text OPTIONAL ) )
                                                   ( sp_group = 70 text = VALUE #( gt_textlist[ sym = 'Y70' ]-text OPTIONAL ) )
                                                   ( sp_group = 80 text = VALUE #( gt_textlist[ sym = 'Y80' ]-text OPTIONAL ) )
                                                   ( sp_group = 90 text = VALUE #( gt_textlist[ sym = 'Y90' ]-text OPTIONAL ) )
                                                   ( sp_group = 95 text = VALUE #( gt_textlist[ sym = 'Y95' ]-text OPTIONAL ) )
                                                   ( sp_group = 97 text = VALUE #( gt_textlist[ sym = 'Y97' ]-text OPTIONAL ) )
                                                 )
          is_variant                    = ls_variant
          i_save                        = 'A'
          i_default                     = 'X'
        CHANGING
          it_fieldcatalog               = gt_fcat
          it_outtab                     = <gs_itab>
        EXCEPTIONS
          invalid_parameter_combination = 1
          program_error                 = 2
          too_many_lines                = 3
          OTHERS                        = 4.

      " go_grid2->register_edit_event( cl_gui_alv_grid=>mc_evt_modified ).
      " go_grid2->register_edit_event( cl_gui_alv_grid=>mc_evt_enter ).

    ELSE.

      CALL METHOD go_grid2->set_frontend_layout
        EXPORTING
          is_layout = VALUE #( zebra = 'X' sel_mode = 'A' info_fname = 'COLOR' ctab_fname = 'SCOL_TAB' ).

      CALL METHOD go_grid2->refresh_table_display(
          is_stable      = VALUE lvc_s_stbl( col = 'X' row = 'X' )
          i_soft_refresh = 'X' ).

    ENDIF.

    CALL METHOD go_grid2->set_toolbar_interactive.

  ENDMETHOD.


  METHOD ret_group_level.
    IF iv_level IS NOT INITIAL.
      ASSIGN COMPONENT iv_level OF STRUCTURE i_ls_value TO FIELD-SYMBOL(<part>).
      r_result = <part>.
    ENDIF.
  ENDMETHOD.


  METHOD initialization.

    IF p_lang NE gv_lang OR p_loca NE gv_loca OR gv_variant_changed = abap_true.

      ret_function_values( ).

      IF gv_change_locale EQ abap_true AND p_loca NE gv_loca.
        SET LOCALE LANGUAGE p_loca.
      ENDIF.

      IF p_lang IS INITIAL.
        p_lang = sy-langu.
        p_loca = sy-langu.
      ENDIF.

      gv_lang = p_lang .
      gv_loca = p_loca.

      CASE p_lang.
        WHEN 'T'.
          PERFORM fill_parameters_tr.
          PERFORM set_screen_tr.
          PERFORM set_text_tr.
        WHEN 'D'.
          PERFORM fill_parameters_de.
          PERFORM set_screen_de.
          PERFORM set_text_de.
        WHEN OTHERS.
          PERFORM fill_parameters_en.
          PERFORM set_screen_en.
          PERFORM set_text_en.
      ENDCASE.

      set_fieldlist( ).
      set_text_variables( ).
      fill_aggrs( ).
      fill_subts( ).
      fill_choices( EXPORTING pv_only_fill = abap_true ) .

      functxt-icon_id = icon_reject.
      functxt-quickinfo = VALUE #( gt_textlist[ sym = 'B01' ]-text OPTIONAL ).
      functxt-text = ''.
      sscrfields-functxt_01 = functxt.

      """"""""""""""""""""""""""""""""""
      IF gv_demos_enabled = abap_true.
        functxt-icon_id = icon_translation_show.
        functxt-quickinfo = VALUE #( gt_textlist[ sym = 'B02' ]-text OPTIONAL ).
        functxt-text = ''.
        sscrfields-functxt_02 = functxt.
      ENDIF.
      """"""""""""""""""""""""""""""""""

      functxt-icon_id = icon_selection.
      functxt-quickinfo = 'Demos'.
      functxt-text = ''.
      sscrfields-functxt_03 = functxt.


      but01 = icon_sum  && VALUE #( gt_textlist[ sym = 'B03' ]-text OPTIONAL ).
      but03 = icon_oo_method  && VALUE #( gt_textlist[ sym = 'B07' ]-text OPTIONAL ).
      but07 = icon_intermediate_sum  && VALUE #( gt_textlist[ sym = 'B08' ]-text OPTIONAL ).

      DATA: l_char(30) TYPE c VALUE IS INITIAL.
      DATA: l_num      TYPE f VALUE IS INITIAL.
      l_num = 11 / 10.
      WRITE l_num TO l_char.
      SEARCH l_char FOR ','.
      IF sy-subrc = 0.
        gv_decs = ','.
      ELSE.
        gv_decs = '.'.
      ENDIF.

      gv_variant_changed = abap_false.

    ENDIF.

  ENDMETHOD.


  METHOD check_of_selection.
    CLEAR cv_error.

    IF p_wahr IS NOT INITIAL AND p_cur1 IS INITIAL.
      p_cur1 = '01'.
    ENDIF.

    IF p_wah2 IS NOT INITIAL AND p_cur2 IS INITIAL.
      p_cur2 = '03'.
    ENDIF.


    IF p_fld1a IS NOT INITIAL.
      IF p_fov1 EQ 'FIELD'.
        screen-input = 0.
        IF p_fld1b IS NOT INITIAL AND VALUE #( gt_allfields_text[ name = p_fld1a ]-type OPTIONAL ) NE VALUE #( gt_allfields_text[ name = p_fld1b ]-type OPTIONAL ).
          p_fld1b = ''.
          p_flt1b = ''.
          MESSAGE VALUE #( gt_textlist[ sym = 'A10' ]-text OPTIONAL ) TYPE 'S' DISPLAY LIKE 'E'. "'Alan tipleri uyumlu değil !'
          cv_error = abap_true.
        ENDIF.
      ELSEIF p_fov1 EQ 'VALUE'.
        IF VALUE #( gt_allfields_text[ name = p_fld1a ]-type OPTIONAL ) EQ 'D'.
          IF p_flt1b IS INITIAL.
            p_flt1b = '00000000'.
          ENDIF.
          TRY.
              DATA(inv_date1) = EXACT d( p_flt1b ).
            CATCH cx_sy_conversion_no_date.
          ENDTRY.
          IF p_flt1b NE '00000000' AND inv_date1 IS INITIAL.
            MESSAGE VALUE #( gt_textlist[ sym = 'A11' ]-text OPTIONAL ) TYPE 'S' DISPLAY LIKE 'E'. "'Tarih formatı hatalı, yıl ay gün ardışık girin !
            p_flt1b = '00000000'.
            cv_error = abap_true.
          ENDIF.
        ELSEIF VALUE #( gt_allfields_text[ name = p_fld1a ]-type OPTIONAL ) EQ 'T'.
          IF p_flt1b IS INITIAL.
            p_flt1b = '000000'.
          ENDIF.
          TRY.
              DATA(inv_time1) = EXACT t( p_flt1b ).
            CATCH cx_sy_conversion_no_time.
          ENDTRY.
          IF p_flt1b NE '000000' AND inv_time1 IS INITIAL.
            MESSAGE VALUE #( gt_textlist[ sym = 'A12' ]-text OPTIONAL ) TYPE 'S' DISPLAY LIKE 'E'. "'Saat formatı hatalı, saat dakika saniye ardışık girin !
            p_flt1b = '000000'.
            cv_error = abap_true.
          ENDIF.
        ELSEIF VALUE #( gt_allfields_text[ name = p_fld1a ]-type OPTIONAL ) NE 'C'.
          DATA: inv_num1(40) TYPE c.
          CALL FUNCTION 'CATS_NUMERIC_INPUT_CHECK'
            EXPORTING
              input      = p_flt1b
            " internal   = 'X'
            IMPORTING
              output     = inv_num1
            EXCEPTIONS
              no_numeric = 1
              OTHERS     = 2.
          IF sy-subrc <> 0.
            p_flt1b = ''.
            MESSAGE VALUE #( gt_textlist[ sym = 'A13' ]-text OPTIONAL ) TYPE 'S' DISPLAY LIKE 'E'. "'Nümerik değer girin !
            cv_error = abap_true.
          ELSE.
            DATA(lv_decm1) = substring_after( val = inv_num1 sub = '.' ).
            IF inv_num1 IS NOT INITIAL AND inv_num1 CA '.'.
              IF VALUE #( gt_allfields_text[ name = p_fld1a ]-decm OPTIONAL ) IS INITIAL.
                p_flt1b = substring_before( val = inv_num1 sub = '.' ).
              ELSEIF strlen( lv_decm1 ) GT VALUE #( gt_allfields_text[ name = p_fld1a ]-decm OPTIONAL ).
                p_flt1b = substring_before( val = inv_num1 sub = '.' ) && gv_decs && substring_after( val = inv_num1 sub = '.' len = VALUE #( gt_allfields_text[ name = p_fld1a ]-decm OPTIONAL ) ).
              ELSE.
                p_flt1b = substring_before( val = inv_num1 sub = '.' ) && gv_decs && substring_after( val = inv_num1 sub = '.' ).
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
        IF strlen( p_flt1b ) GT ( VALUE #( gt_allfields_text[ name = p_fld1a ]-leng OPTIONAL ) + VALUE #( gt_allfields_text[ name = p_fld1a ]-decm OPTIONAL ) ).
          p_flt1b = ''.
          MESSAGE VALUE #( gt_textlist[ sym = 'A14' ]-text OPTIONAL ) && | | &&
                  CONV string( VALUE #( gt_allfields_text[ name = p_fld1a ]-leng OPTIONAL ) + VALUE #( gt_allfields_text[ name = p_fld1a ]-decm OPTIONAL ) )
                  TYPE 'S' DISPLAY LIKE 'E'.
          cv_error = abap_true.
        ENDIF.
      ENDIF.
    ENDIF.

    IF p_fld2a IS NOT INITIAL.
      IF p_fov2 EQ 'FIELD' .
        screen-input = 0.
        IF p_fld1b IS NOT INITIAL AND VALUE #( gt_allfields_text[ name = p_fld2a ]-type OPTIONAL ) NE VALUE #( gt_allfields_text[ name = p_fld2b ]-type OPTIONAL ).
          p_fld2b = ''.
          p_flt2b = ''.
          MESSAGE VALUE #( gt_textlist[ sym = 'A10' ]-text OPTIONAL ) TYPE 'S' DISPLAY LIKE 'E'. "'Alan tipleri uyumlu değil !'
          cv_error = abap_true.
        ENDIF.
      ELSEIF p_fov1 EQ 'VALUE'.
        IF VALUE #( gt_allfields_text[ name = p_fld2a ]-type OPTIONAL ) EQ 'D'.
          IF p_flt2b IS INITIAL.
            p_flt2b = '00000000'.
          ENDIF.
          TRY.
              inv_date1 = EXACT d( p_flt2b ).
            CATCH cx_sy_conversion_no_date.
          ENDTRY.
          IF p_flt2b NE '00000000' AND inv_date1 IS INITIAL.
            MESSAGE VALUE #( gt_textlist[ sym = 'A11' ]-text OPTIONAL ) TYPE 'S' DISPLAY LIKE 'E'. "'Tarih formatı hatalı, yıl ay gün ardışık girin !
            p_flt2b = '00000000'.
            cv_error = abap_true.
          ENDIF.
        ELSEIF VALUE #( gt_allfields_text[ name = p_fld1a ]-type OPTIONAL ) EQ 'T'.
          IF p_flt2b IS INITIAL.
            p_flt2b = '000000'.
          ENDIF.
          TRY.
              inv_time1 = EXACT t( p_flt2b ).
            CATCH cx_sy_conversion_no_time.
          ENDTRY.
          IF p_flt2b NE '000000' AND inv_time1 IS INITIAL.
            MESSAGE VALUE #( gt_textlist[ sym = 'A12' ]-text OPTIONAL ) TYPE 'S' DISPLAY LIKE 'E'. "'Saat formatı hatalı, saat dakika saniye ardışık girin !
            p_flt2b = '000000'.
            cv_error = abap_true.
          ENDIF.
        ELSEIF VALUE #( gt_allfields_text[ name = p_fld2a ]-type OPTIONAL ) NE 'C'.
          CALL FUNCTION 'CATS_NUMERIC_INPUT_CHECK'
            EXPORTING
              input      = p_flt2b
            IMPORTING
              output     = inv_num1
            EXCEPTIONS
              no_numeric = 1
              OTHERS     = 2.
          IF sy-subrc <> 0.
            p_flt2b = ''.
            MESSAGE VALUE #( gt_textlist[ sym = 'A13' ]-text OPTIONAL ) TYPE 'S' DISPLAY LIKE 'E'. "'Nümerik değer girin !
            cv_error = abap_true.
          ELSE.
            lv_decm1 = substring_after( val = inv_num1 sub = '.' ).
            IF inv_num1 IS NOT INITIAL AND inv_num1 CA '.'.
              IF VALUE #( gt_allfields_text[ name = p_fld2a ]-decm OPTIONAL ) IS INITIAL.
                p_flt2b = substring_before( val = inv_num1 sub = '.' ).
              ELSEIF strlen( lv_decm1 ) GT VALUE #( gt_allfields_text[ name = p_fld2a ]-decm OPTIONAL ).
                p_flt2b = substring_before( val = inv_num1 sub = '.' ) && gv_decs && substring_after( val = inv_num1 sub = '.' len = VALUE #( gt_allfields_text[ name = p_fld2a ]-decm OPTIONAL ) ).
              ELSE.
                p_flt2b = substring_before( val = inv_num1 sub = '.' ) && gv_decs && substring_after( val = inv_num1 sub = '.' ).
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
        IF strlen( p_flt2b ) GT ( VALUE #( gt_allfields_text[ name = p_fld2a ]-leng OPTIONAL ) + VALUE #( gt_allfields_text[ name = p_fld2a ]-decm OPTIONAL ) ).
          p_flt2b = ''.
          MESSAGE VALUE #( gt_textlist[ sym = 'A14' ]-text OPTIONAL ) && | | &&
                  CONV string( VALUE #( gt_allfields_text[ name = p_fld2a ]-leng OPTIONAL ) + VALUE #( gt_allfields_text[ name = p_fld2a ]-decm OPTIONAL ) )
                  TYPE 'S' DISPLAY LIKE 'E'.
          cv_error = abap_true.
        ENDIF.
      ENDIF.
    ENDIF.

    IF p_fld3a IS NOT INITIAL.
      IF p_fov3 EQ 'FIELD' .
        screen-input = 0.
        IF p_fld3a IS NOT INITIAL AND VALUE #( gt_allfields_text[ name = p_fld3a ]-type OPTIONAL ) NE VALUE #( gt_allfields_text[ name = p_fld3b ]-type OPTIONAL ).
          p_fld3b = ''.
          p_flt3b = ''.
          MESSAGE VALUE #( gt_textlist[ sym = 'A10' ]-text OPTIONAL ) TYPE 'S' DISPLAY LIKE 'E'. "'Alan tipleri uyumlu değil !'
          cv_error = abap_true.
        ENDIF.
      ELSEIF p_fov1 EQ 'VALUE'.
        IF VALUE #( gt_allfields_text[ name = p_fld3a ]-type OPTIONAL ) EQ 'D'.
          IF p_flt3b IS INITIAL.
            p_flt3b = '00000000'.
          ENDIF.
          TRY.
              inv_date1 = EXACT d( p_flt3b ).
            CATCH cx_sy_conversion_no_date.
          ENDTRY.
          IF p_flt3b NE '00000000' AND inv_date1 IS INITIAL.
            MESSAGE VALUE #( gt_textlist[ sym = 'A11' ]-text OPTIONAL ) TYPE 'S' DISPLAY LIKE 'E'.
            p_flt3b = '00000000'.
            cv_error = abap_true.
          ENDIF.
        ELSEIF VALUE #( gt_allfields_text[ name = p_fld3a ]-type OPTIONAL ) EQ 'T'.
          IF p_flt3b IS INITIAL.
            p_flt3b = '000000'.
          ENDIF.
          TRY.
              inv_time1 = EXACT t( p_flt3b ).
            CATCH cx_sy_conversion_no_time.
          ENDTRY.
          IF p_flt3b NE '000000' AND inv_time1 IS INITIAL.
            MESSAGE VALUE #( gt_textlist[ sym = 'A12' ]-text OPTIONAL ) TYPE 'S' DISPLAY LIKE 'E'.
            p_flt3b = '000000'.
            cv_error = abap_true.
          ENDIF.
        ELSEIF VALUE #( gt_allfields_text[ name = p_fld3a ]-type OPTIONAL ) NE 'C'.
          CALL FUNCTION 'CATS_NUMERIC_INPUT_CHECK'
            EXPORTING
              input      = p_flt3b
            IMPORTING
              output     = inv_num1
            EXCEPTIONS
              no_numeric = 1
              OTHERS     = 2.
          IF sy-subrc <> 0.
            p_flt3b = ''.
            MESSAGE VALUE #( gt_textlist[ sym = 'A13' ]-text OPTIONAL ) TYPE 'S' DISPLAY LIKE 'E'.
            cv_error = abap_true.
          ELSE.
            lv_decm1 = substring_after( val = inv_num1 sub = '.' ).
            IF inv_num1 IS NOT INITIAL AND inv_num1 CA '.'.
              IF VALUE #( gt_allfields_text[ name = p_fld3a ]-decm OPTIONAL ) IS INITIAL.
                p_flt3b = substring_before( val = inv_num1 sub = '.' ).
              ELSEIF strlen( lv_decm1 ) GT VALUE #( gt_allfields_text[ name = p_fld3a ]-decm OPTIONAL ).
                p_flt3b = substring_before( val = inv_num1 sub = '.' ) && gv_decs && substring_after( val = inv_num1 sub = '.' len = VALUE #( gt_allfields_text[ name = p_fld3a ]-decm OPTIONAL ) ).
              ELSE.
                p_flt3b = substring_before( val = inv_num1 sub = '.' ) && gv_decs && substring_after( val = inv_num1 sub = '.' ).
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
        IF strlen( p_flt3b ) GT ( VALUE #( gt_allfields_text[ name = p_fld3a ]-leng OPTIONAL ) + VALUE #( gt_allfields_text[ name = p_fld3a ]-decm OPTIONAL ) ).
          p_flt2b = ''.
          MESSAGE VALUE #( gt_textlist[ sym = 'A14' ]-text OPTIONAL ) && | | &&
                  CONV string( VALUE #( gt_allfields_text[ name = p_fld3a ]-leng OPTIONAL ) + VALUE #( gt_allfields_text[ name = p_fld3a ]-decm OPTIONAL ) )
                  TYPE 'S' DISPLAY LIKE 'E'.
          cv_error = abap_true.
        ENDIF.
      ENDIF.
    ENDIF.

    IF p_fld4a IS NOT INITIAL.
      IF p_fov4 EQ 'FIELD' .
        screen-input = 0.
        IF p_fld4a IS NOT INITIAL AND VALUE #( gt_allfields_text[ name = p_fld4a ]-type OPTIONAL ) NE VALUE #( gt_allfields_text[ name = p_fld4b ]-type OPTIONAL ).
          p_fld4b = ''.
          p_flt4b = ''.
          MESSAGE VALUE #( gt_textlist[ sym = 'A10' ]-text OPTIONAL ) TYPE 'S' DISPLAY LIKE 'E'. "'Alan tipleri uyumlu değil !'
          cv_error = abap_true.
        ENDIF.
      ELSEIF p_fov1 EQ 'VALUE'.
        IF VALUE #( gt_allfields_text[ name = p_fld4a ]-type OPTIONAL ) EQ 'D'.
          IF p_flt4b IS INITIAL.
            p_flt4b = '00000000'.
          ENDIF.
          TRY.
              inv_date1 = EXACT d( p_flt4b ).
            CATCH cx_sy_conversion_no_date.
          ENDTRY.
          IF p_flt4b NE '00000000' AND inv_date1 IS INITIAL.
            MESSAGE VALUE #( gt_textlist[ sym = 'A11' ]-text OPTIONAL ) TYPE 'S' DISPLAY LIKE 'E'.
            p_flt4b = '00000000'.
            cv_error = abap_true.
          ENDIF.
        ELSEIF VALUE #( gt_allfields_text[ name = p_fld4a ]-type OPTIONAL ) EQ 'T'.
          IF p_flt4b IS INITIAL.
            p_flt4b = '000000'.
          ENDIF.
          TRY.
              inv_time1 = EXACT t( p_flt4b ).
            CATCH cx_sy_conversion_no_time.
          ENDTRY.
          IF p_flt4b NE '000000' AND inv_time1 IS INITIAL.
            MESSAGE VALUE #( gt_textlist[ sym = 'A12' ]-text OPTIONAL ) TYPE 'S' DISPLAY LIKE 'E'.
            p_flt4b = '000000'.
            cv_error = abap_true.
          ENDIF.
        ELSEIF VALUE #( gt_allfields_text[ name = p_fld4a ]-type OPTIONAL ) NE 'C'.
          CALL FUNCTION 'CATS_NUMERIC_INPUT_CHECK'
            EXPORTING
              input      = p_flt4b
            IMPORTING
              output     = inv_num1
            EXCEPTIONS
              no_numeric = 1
              OTHERS     = 2.
          IF sy-subrc <> 0.
            p_flt4b = ''.
            MESSAGE VALUE #( gt_textlist[ sym = 'A13' ]-text OPTIONAL ) TYPE 'S' DISPLAY LIKE 'E'.
            cv_error = abap_true.
          ELSE.
            lv_decm1 = substring_after( val = inv_num1 sub = '.' ).
            IF inv_num1 IS NOT INITIAL AND inv_num1 CA '.'.
              IF VALUE #( gt_allfields_text[ name = p_fld4a ]-decm OPTIONAL ) IS INITIAL.
                p_flt4b = substring_before( val = inv_num1 sub = '.' ).
              ELSEIF strlen( lv_decm1 ) GT VALUE #( gt_allfields_text[ name = p_fld4a ]-decm OPTIONAL ).
                p_flt4b = substring_before( val = inv_num1 sub = '.' ) && gv_decs && substring_after( val = inv_num1 sub = '.' len = VALUE #( gt_allfields_text[ name = p_fld4a ]-decm OPTIONAL ) ).
              ELSE.
                p_flt4b = substring_before( val = inv_num1 sub = '.' ) && gv_decs && substring_after( val = inv_num1 sub = '.' ).
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
        IF strlen( p_flt4b ) GT ( VALUE #( gt_allfields_text[ name = p_fld4a ]-leng OPTIONAL ) + VALUE #( gt_allfields_text[ name = p_fld4a ]-decm OPTIONAL ) ).
          p_flt2b = ''.
          MESSAGE VALUE #( gt_textlist[ sym = 'A14' ]-text OPTIONAL ) && | | &&
                  CONV string( VALUE #( gt_allfields_text[ name = p_fld4a ]-leng OPTIONAL ) + VALUE #( gt_allfields_text[ name = p_fld4a ]-decm OPTIONAL ) )
                  TYPE 'S' DISPLAY LIKE 'E'.
          cv_error = abap_true.
        ENDIF.
      ENDIF.
    ENDIF.

    IF p_fld5a IS NOT INITIAL.
      IF p_fov5 EQ 'FIELD' .
        screen-input = 0.
        IF p_fld5a IS NOT INITIAL AND VALUE #( gt_allfields_text[ name = p_fld5a ]-type OPTIONAL ) NE VALUE #( gt_allfields_text[ name = p_fld5b ]-type OPTIONAL ).
          p_fld5b = ''.
          p_flt5b = ''.
          MESSAGE VALUE #( gt_textlist[ sym = 'A10' ]-text OPTIONAL ) TYPE 'S' DISPLAY LIKE 'E'. "'Alan tipleri uyumlu değil !'
          cv_error = abap_true.
        ENDIF.
      ELSEIF p_fov1 EQ 'VALUE'.
        IF VALUE #( gt_allfields_text[ name = p_fld5a ]-type OPTIONAL ) EQ 'D'.
          IF p_flt5b IS INITIAL.
            p_flt5b = '00000000'.
          ENDIF.
          TRY.
              inv_date1 = EXACT d( p_flt5b ).
            CATCH cx_sy_conversion_no_date.
          ENDTRY.
          IF p_flt5b NE '00000000' AND inv_date1 IS INITIAL.
            MESSAGE VALUE #( gt_textlist[ sym = 'A11' ]-text OPTIONAL ) TYPE 'S' DISPLAY LIKE 'E'.
            p_flt5b = '00000000'.
            cv_error = abap_true.
          ENDIF.
        ELSEIF VALUE #( gt_allfields_text[ name = p_fld5a ]-type OPTIONAL ) EQ 'T'.
          IF p_flt5b IS INITIAL.
            p_flt5b = '000000'.
          ENDIF.
          TRY.
              inv_time1 = EXACT t( p_flt5b ).
            CATCH cx_sy_conversion_no_time.
          ENDTRY.
          IF p_flt5b NE '000000' AND inv_time1 IS INITIAL.
            MESSAGE VALUE #( gt_textlist[ sym = 'A12' ]-text OPTIONAL ) TYPE 'S' DISPLAY LIKE 'E'.
            p_flt5b = '000000'.
            cv_error = abap_true.
          ENDIF.
        ELSEIF VALUE #( gt_allfields_text[ name = p_fld5a ]-type OPTIONAL ) NE 'C'.
          CALL FUNCTION 'CATS_NUMERIC_INPUT_CHECK'
            EXPORTING
              input      = p_flt5b
            IMPORTING
              output     = inv_num1
            EXCEPTIONS
              no_numeric = 1
              OTHERS     = 2.
          IF sy-subrc <> 0.
            p_flt5b = ''.
            MESSAGE VALUE #( gt_textlist[ sym = 'A13' ]-text OPTIONAL ) TYPE 'S' DISPLAY LIKE 'E'.
            cv_error = abap_true.
          ELSE.
            lv_decm1 = substring_after( val = inv_num1 sub = '.' ).
            IF inv_num1 IS NOT INITIAL AND inv_num1 CA '.'.
              IF VALUE #( gt_allfields_text[ name = p_fld5a ]-decm OPTIONAL ) IS INITIAL.
                p_flt5b = substring_before( val = inv_num1 sub = '.' ).
              ELSEIF strlen( lv_decm1 ) GT VALUE #( gt_allfields_text[ name = p_fld5a ]-decm OPTIONAL ).
                p_flt5b = substring_before( val = inv_num1 sub = '.' ) && gv_decs && substring_after( val = inv_num1 sub = '.' len = VALUE #( gt_allfields_text[ name = p_fld5a ]-decm OPTIONAL ) ).
              ELSE.
                p_flt5b = substring_before( val = inv_num1 sub = '.' ) && gv_decs && substring_after( val = inv_num1 sub = '.' ).
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
        IF strlen( p_flt5b ) GT ( VALUE #( gt_allfields_text[ name = p_fld5a ]-leng OPTIONAL ) + VALUE #( gt_allfields_text[ name = p_fld5a ]-decm OPTIONAL ) ).
          p_flt2b = ''.
          MESSAGE VALUE #( gt_textlist[ sym = 'A14' ]-text OPTIONAL ) && | | &&
                  CONV string( VALUE #( gt_allfields_text[ name = p_fld5a ]-leng OPTIONAL ) + VALUE #( gt_allfields_text[ name = p_fld5a ]-decm OPTIONAL ) )
                  TYPE 'S' DISPLAY LIKE 'E'.
          cv_error = abap_true.
        ENDIF.
      ENDIF.
    ENDIF.

  ENDMETHOD.


  METHOD at_selection_screen.

    DATA: lo_popup  TYPE REF TO cl_salv_table,
          lo_events TYPE REF TO cl_salv_events_table.

    CHECK sy-dynnr = 1000.

    CASE sscrfields-ucomm.

      WHEN 'ONLI'.
        p1_dynnr = tabs-dynnr.
        p1_acttb = tabs-activetab.
        p2_dynnr = tab2-dynnr.
        p2_acttb = tab2-activetab.
        p3_dynnr = tab3-dynnr.
        p3_acttb = tab3-activetab.
        p4_dynnr = tab4-dynnr.
        p4_acttb = tab4-activetab.

      WHEN 'UC09'.
        gv_variant_changed = abap_true.
        go_main->initialization( ).

      WHEN 'UC10'.
        gv_variant_changed = abap_true.
        clear_selection( ).

      WHEN 'UC00'.
        fill_choices( EXPORTING pv_only_fill = abap_true ).

      WHEN 'UC01'.
        fill_choices( EXPORTING pv_only_fill = abap_false ).

      WHEN 'UC02'.
        IF but02 EQ icon_previous_page.
          but02 = icon_next_page.
          l_grp1 = VALUE #( gt_textlist[ sym = 'R01' ]-text OPTIONAL ).
          l_grp2 = VALUE #( gt_textlist[ sym = 'R02' ]-text OPTIONAL ).
          l_grp3 = VALUE #( gt_textlist[ sym = 'R03' ]-text OPTIONAL ).
          l_grp4 = VALUE #( gt_textlist[ sym = 'R04' ]-text OPTIONAL ).
          l_grp5 = VALUE #( gt_textlist[ sym = 'R05' ]-text OPTIONAL ).
          l_grp6 = VALUE #( gt_textlist[ sym = 'R06' ]-text OPTIONAL ).
        ELSE.
          but02 = icon_previous_page.
          l_grp1 = VALUE #( gt_textlist[ sym = 'R07' ]-text OPTIONAL ).
          l_grp2 = VALUE #( gt_textlist[ sym = 'R08' ]-text OPTIONAL ).
          l_grp3 = VALUE #( gt_textlist[ sym = 'R09' ]-text OPTIONAL ).
          l_grp4 = VALUE #( gt_textlist[ sym = 'R10' ]-text OPTIONAL ).
          l_grp5 = VALUE #( gt_textlist[ sym = 'R11' ]-text OPTIONAL ).
          l_grp6 = VALUE #( gt_textlist[ sym = 'R12' ]-text OPTIONAL ).
        ENDIF.

        fill_groups( ).
        MODIFY SCREEN.

      WHEN 'UC03'.
        DATA: lo_aggr_setup TYPE REF TO lcl_popup_aggr_setup.

        fill_aggrs( ).
        CREATE OBJECT lo_aggr_setup.
        lcl_popup_aggr_setup=>display_popup( EXPORTING start_line   = 1
                                                       end_line     = 26
                                                       start_column = 40
                                                       end_column   = 130
                                                       pop_header   = VALUE char100( gt_textlist[ sym = 'TXY' ]-text OPTIONAL )
                                                       t_table = gt_aggregation_fields  ).
        set_aggrs( ).
        fill_choices( EXPORTING pv_only_fill = abap_true ).
        gt_fcat = go_main->set_fieldcatalog( ).

      WHEN 'UC07'.
        DATA: lo_subt_setup TYPE REF TO lcl_popup_subt_setup.

        CREATE OBJECT lo_subt_setup.
        lcl_popup_subt_setup=>display_popup( EXPORTING start_line   = 1
                                                       end_line     = CONV i( gv_max_level + 1 )
                                                       start_column = 40
                                                       end_column   = 98
                                                       pop_header   = VALUE char100( gt_textlist[ sym = 'TXP' ]-text OPTIONAL )
                                                       t_table = gt_subtotal_fields  ).

        set_subts( ).
        fill_choices( EXPORTING pv_only_fill = abap_true ).

      WHEN 'UC04'.
        DATA: it_text TYPE catsxt_longtext_itab.
        DATA: wa_txline LIKE LINE OF it_text .
        DATA(i_txlen) = 72.

        CALL FUNCTION 'SCMS_STRING_TO_FTEXT'
          EXPORTING
            text      = p_info
          IMPORTING
            length    = i_txlen
          TABLES
            ftext_tab = it_text.

        DATA: cv_text TYPE sytitle.
        cv_text = VALUE #( gt_textlist[ sym = 'C02' ]-text OPTIONAL ).

        CALL FUNCTION 'CATSXT_SIMPLE_TEXT_EDITOR'
          EXPORTING
            im_title        = cv_text
            im_display_mode = ' '
            im_start_column = 10
            im_start_row    = 10
          CHANGING
            ch_text         = it_text.

        CLEAR p_info.
        LOOP AT it_text ASSIGNING FIELD-SYMBOL(<fs_text>).
          CONCATENATE p_info <fs_text> INTO p_info RESPECTING BLANKS.
        ENDLOOP.

      WHEN 'UC05' OR 'UC06'.
        ret_function_values( ).

        lcl_salv_pop_up=>popup( EXPORTING start_line   = 1
                                          end_line     = 19
                                          start_column = 90
                                          end_column   = 150
                                          pop_header   = VALUE char100( gt_textlist[ sym = 'TXZ' ]-text OPTIONAL )
                                          t_table = gt_functions  ).

        IF gv_clicked_row IS NOT INITIAL.

          IF sscrfields-ucomm EQ 'UC05'.
            p_subj = p_subj && VALUE #( gt_functions[ gv_clicked_row ]-modtext OPTIONAL ).
          ELSE.
            p_path = p_path && VALUE #( gt_functions[ gv_clicked_row ]-modtext OPTIONAL ).
          ENDIF.

        ENDIF.

      WHEN 'FC01'.
        p_vari = ' '.
        gv_variant_changed = abap_true.
        clear_selection( ).

      WHEN 'FC02'.
        DATA e_default TYPE string.
        DATA e_result TYPE string.

        CASE p_lang.
          WHEN 'E'.
            e_default = '1'.
          WHEN 'D'.
            e_default = '2'.
          WHEN 'T'.
            e_default = '3'.
        ENDCASE.

        DATA: cl_text TYPE string.
        cl_text = VALUE #( gt_textlist[ sym = 'C01' ]-text OPTIONAL ).

        CALL FUNCTION 'K_KKB_POPUP_RADIO3'
          EXPORTING
            i_title   = cl_text
            i_text1   = 'English'
            i_text2   = 'Deutsch'
            i_text3   = 'Türkçe'
            i_default = e_default
          IMPORTING
            i_result  = e_result
          EXCEPTIONS
            cancel    = 1.

        CASE e_result.
          WHEN '1'.
            p_lang = 'E'.
          WHEN '2'.
            p_lang = 'D'.
          WHEN '3'.
            p_lang = 'T'.
        ENDCASE.

        IF e_result IS NOT INITIAL.
          DATA: e_answer TYPE c.
          CALL FUNCTION 'POPUP_TO_CONFIRM'
            EXPORTING
              titlebar              = VALUE #( gt_textlist[ sym = 'B04' ]-text OPTIONAL )
              text_question         = VALUE #( gt_textlist[ sym = 'A07' ]-text OPTIONAL )
              text_button_1         = VALUE #( gt_textlist[ sym = 'B05' ]-text OPTIONAL )
              icon_button_1         = '@0V@'
              text_button_2         = VALUE #( gt_textlist[ sym = 'B06' ]-text OPTIONAL )
              icon_button_2         = '@0W@'
              default_button        = '2'
              display_cancel_button = ' '
              "start_column = 25
              "start_row = 6
              "cancel_display = 'X'
            IMPORTING
              answer                = e_answer
            EXCEPTIONS
              text_not_found        = 1
              OTHERS                = 2.

          IF e_answer EQ '1'.
            p_loca = p_lang.
          ENDIF.
        ENDIF.

        gv_variant_changed = abap_true.
        go_main->initialization( ).

      WHEN 'FC03'.
        TYPES: BEGIN OF ds_data,
                 code TYPE c LENGTH 8,
                 text TYPE modtext_d,
               END OF ds_data.

        DATA: dt_data TYPE TABLE OF ds_data WITH EMPTY KEY.

        APPEND VALUE #( code = 'DEMO-01' text = 'Billing Amount by Sales Area' ) TO dt_data.
        APPEND VALUE #( code = 'DEMO-02' text = 'a Period Report by Material Group ' ) TO dt_data.
        APPEND VALUE #( code = 'DEMO-03' text = 'Tree View of Country and Region Records' ) TO dt_data.

        lcl_salv_pop_up=>popup( EXPORTING  start_line = 1
                                           end_line   = 3
                                           start_column = 80
                                           end_column = 140
                                           pop_header = VALUE char100( gt_textlist[ sym = 'DSZ' ]-text OPTIONAL )
                                           t_table    = dt_data  )  .

        IF gv_clicked_row IS NOT INITIAL.
          PERFORM submit_demo.
        ENDIF.


      WHEN 'SF01' OR 'SF02' OR 'SF03' OR 'SF04' OR 'SF05' OR 'SF06' OR 'SF07' OR 'SF08' OR 'SF09' OR 'SF10'.

        lcl_salv_pop_up=>popup( EXPORTING start_line   = 1
                                   end_line     = 19
                                   start_column = 50
                                   end_column   = 85
                                   only_column  = 'TEXT'
                                   pop_header   = VALUE char100( gt_textlist[ sym = 'B03' ]-text OPTIONAL )
                                   t_table = gt_allfields_text  ).

        IF gv_clicked_row IS NOT INITIAL.
          CASE sscrfields-ucomm.
            WHEN 'SF01'.
              p_flt1a = VALUE #( gt_allfields_text[ gv_clicked_row ]-text OPTIONAL ).
              p_fld1a = VALUE #( gt_allfields_text[ gv_clicked_row ]-name OPTIONAL ).
              CLEAR: p_cnd1, p_fov1.
            WHEN 'SF02'.
              p_flt1b = VALUE #( gt_allfields_text[ gv_clicked_row ]-text OPTIONAL ).
              p_fld1b = VALUE #( gt_allfields_text[ gv_clicked_row ]-name OPTIONAL ).
            WHEN 'SF03'.
              p_flt2a = VALUE #( gt_allfields_text[ gv_clicked_row ]-text OPTIONAL ).
              p_fld2a = VALUE #( gt_allfields_text[ gv_clicked_row ]-name OPTIONAL ).
              CLEAR: p_cnd2, p_fov2.
            WHEN 'SF04'.
              p_flt2b = VALUE #( gt_allfields_text[ gv_clicked_row ]-text OPTIONAL ).
              p_fld2b = VALUE #( gt_allfields_text[ gv_clicked_row ]-name OPTIONAL ).
            WHEN 'SF05'.
              p_flt3a = VALUE #( gt_allfields_text[ gv_clicked_row ]-text OPTIONAL ).
              p_fld3a = VALUE #( gt_allfields_text[ gv_clicked_row ]-name OPTIONAL ).
              CLEAR: p_cnd3, p_fov3.
            WHEN 'SF06'.
              p_flt3b = VALUE #( gt_allfields_text[ gv_clicked_row ]-text OPTIONAL ).
              p_fld3b = VALUE #( gt_allfields_text[ gv_clicked_row ]-name OPTIONAL ).
            WHEN 'SF07'.
              p_flt4a = VALUE #( gt_allfields_text[ gv_clicked_row ]-text OPTIONAL ).
              p_fld4a = VALUE #( gt_allfields_text[ gv_clicked_row ]-name OPTIONAL ).
              CLEAR: p_cnd4, p_fov4.
            WHEN 'SF08'.
              p_flt4b = VALUE #( gt_allfields_text[ gv_clicked_row ]-text OPTIONAL ).
              p_fld4b = VALUE #( gt_allfields_text[ gv_clicked_row ]-name OPTIONAL ).
            WHEN 'SF09'.
              p_flt5a = VALUE #( gt_allfields_text[ gv_clicked_row ]-text OPTIONAL ).
              p_fld5a = VALUE #( gt_allfields_text[ gv_clicked_row ]-name OPTIONAL ).
              CLEAR: p_cnd5, p_fov5.
            WHEN 'SF10'.
              p_flt5b = VALUE #( gt_allfields_text[ gv_clicked_row ]-text OPTIONAL ).
              p_fld5b = VALUE #( gt_allfields_text[ gv_clicked_row ]-name OPTIONAL ).
          ENDCASE.
        ENDIF.

    ENDCASE.

  ENDMETHOD.


  METHOD at_selection_screen_output.

    IF sy-dynnr = 1000.

      IF gt_fieldlist[] IS INITIAL OR sy-slset NE gv_variant.
        gv_variant_changed = abap_true.
        go_main->initialization( ).
        gv_variant = sy-slset.
      ENDIF.


      IF NOT p1_dynnr IS INITIAL.
        tabs-dynnr     = p1_dynnr.
        tabs-activetab = p1_acttb.
        p1_dynnr = ''.
        p1_acttb = ''.
      ENDIF.

      IF NOT p2_dynnr IS INITIAL.
        tab2-dynnr     = p2_dynnr.
        tab2-activetab = p2_acttb.
        p2_dynnr = ''.
        p2_acttb = ''.
      ENDIF.

      IF NOT p3_dynnr IS INITIAL.
        tab3-dynnr     = p3_dynnr.
        tab3-activetab = p3_acttb.
        p3_dynnr = ''.
        p3_acttb = ''.
      ENDIF.

      IF NOT p4_dynnr IS INITIAL.
        tab4-dynnr     = p4_dynnr.
        tab4-activetab = p4_acttb.
        p4_dynnr = ''.
        p4_acttb = ''.
      ENDIF.

    ENDIF.


    LOOP AT SCREEN.

      CASE screen-name.
        WHEN 'P_VARI'.
          IF gv_variant_changed EQ abap_true.
            gv_variant = p_vari.
            CALL FUNCTION 'RS_SUPPORT_SELECTIONS'
              EXPORTING
                report               = sy-repıd
                variant              = gv_variant
              EXCEPTIONS
                variant_not_existent = 1
                variant_obsolete     = 2
                OTHERS               = 3.

            p_vari = gv_variant.
            go_main->initialization( ).

          ENDIF.
        WHEN 'P_TERM'.
          IF gv_group_count = 0.
            p_yval = ' '.
          ENDIF.

        WHEN 'P_GRP1' OR 'P_GRP2' OR 'P_GRP3' OR 'P_GRP4' OR 'P_GRP5' OR 'P_GRP6'.
          screen-input = 0.

        WHEN 'P_OPT2'.
          IF p_flt1a IS INITIAL OR p_cnd1 IS INITIAL OR p_fov1 IS INITIAL.
            p_opt2 = ''.
            screen-input = 0.
          ENDIF.
        WHEN 'P_OPT3'.
          IF p_flt2a IS INITIAL OR p_cnd2 IS INITIAL OR p_fov2 IS INITIAL.
            p_opt3 = ''.
            screen-input = 0.
          ENDIF.
        WHEN 'P_OPT4'.
          IF p_flt2a IS INITIAL OR p_cnd2 IS INITIAL OR p_fov2 IS INITIAL.
            p_opt4 = ''.
            screen-input = 0.
          ENDIF.
        WHEN 'P_OPT5'.
          IF p_flt4a IS INITIAL OR p_cnd4 IS INITIAL OR p_fov4 IS INITIAL.
            p_opt5 = ''.
            screen-input = 0.
          ENDIF.

        WHEN 'P_FLT1A'.
          screen-input = 0.
          p_flt1a = VALUE #( gt_allfields_text[ name = p_fld1a ]-text OPTIONAL ).
        WHEN 'P_FLT2A'.
          screen-input = 0.
          IF p_opt2 IS INITIAL.
            p_flt2a = ''.
          ELSE.
            p_flt2a = VALUE #( gt_allfields_text[ name = p_fld2a ]-text OPTIONAL ).
          ENDIF.
        WHEN 'P_FLT3A'.
          screen-input = 0.
          IF p_opt3 IS INITIAL.
            p_flt3a = ''.
          ELSE.
            p_flt3a = VALUE #( gt_allfields_text[ name = p_fld3a ]-text OPTIONAL ).
          ENDIF.
        WHEN 'P_FLT4A'.
          screen-input = 0.
          IF p_opt4 IS INITIAL.
            p_flt4a = ''.
          ELSE.
            p_flt4a = VALUE #( gt_allfields_text[ name = p_fld4a ]-text OPTIONAL ).
          ENDIF.
        WHEN 'P_FLT5A'.
          screen-input = 0.
          IF p_opt5 IS INITIAL.
            p_flt5a = ''.
          ELSE.
            p_flt5a = VALUE #( gt_allfields_text[ name = p_fld5a ]-text OPTIONAL ).
          ENDIF.

        WHEN 'P_FLT1B'.
          IF p_fov1 IS INITIAL .
            p_flt1b = ''.
          ENDIF.
          IF p_fov1 NE 'VALUE'.
            screen-input = 0.
          ENDIF.
        WHEN 'P_FLT2B'.
          IF p_fov2 IS INITIAL .
            p_flt2b = ''.
          ENDIF.
          IF p_fov2 NE 'VALUE'.
            screen-input = 0.
          ENDIF.
        WHEN 'P_FLT3B'.
          IF p_fov3 IS INITIAL .
            p_flt3b = ''.
          ENDIF.
          IF p_fov3 NE 'VALUE'.
            screen-input = 0.
          ENDIF.
        WHEN 'P_FLT4B'.
          IF p_fov4 IS INITIAL .
            p_flt4b = ''.
          ENDIF.
          IF p_fov4 NE 'VALUE'.
            screen-input = 0.
          ENDIF.
        WHEN 'P_FLT5B'.
          IF p_fov5 IS INITIAL .
            p_flt5b = ''.
          ENDIF.
          IF p_fov5 NE 'VALUE'.
            screen-input = 0.
          ENDIF.

        WHEN 'P_CND1'.
          IF p_flt1a IS INITIAL.
            p_cnd1 = ''.
            screen-input = 0.
          ELSEIF p_cnd1 IS INITIAL.
            p_cnd1 = '='.
          ENDIF.
        WHEN 'P_CND2'.
          IF p_flt2a IS INITIAL.
            p_cnd2 = ''.
            screen-input = 0.
          ELSEIF p_cnd2 IS INITIAL.
            p_cnd2 = '='.
          ENDIF.
        WHEN 'P_CND3'.
          IF p_flt3a IS INITIAL.
            p_cnd3 = ''.
            screen-input = 0.
          ELSEIF p_cnd3 IS INITIAL.
            p_cnd3 = '='.
          ENDIF.
        WHEN 'P_CND4'.
          IF p_flt4a IS INITIAL.
            p_cnd4 = ''.
            screen-input = 0.
          ELSEIF p_cnd4 IS INITIAL.
            p_cnd4 = '='.
          ENDIF.
        WHEN 'P_CND5'.
          IF p_flt5a IS INITIAL.
            p_cnd5 = ''.
            screen-input = 0.
          ELSEIF p_cnd5 IS INITIAL.
            p_cnd5 = '='.
          ENDIF.

        WHEN 'P_FOV1'.
          IF p_fov1 IS INITIAL.
            p_fov1 = 'VALUE'.
          ENDIF.
          IF p_cnd1 IS INITIAL.
            p_fov1 = ''.
            p_fld1b = ''.
            p_flt1b = ''.
            screen-input = 0.
          ELSEIF p_fov1 EQ 'VALUE'.
            IF p_fld1b NE ''.
              p_flt1b = ''.
            ENDIF.
            p_fld1b = ''.
          ELSE.
            p_flt1b = VALUE #( gt_allfields_text[ name = p_fld1b ]-text OPTIONAL ).
          ENDIF.

        WHEN 'P_FOV2'.
          IF p_fov2 IS INITIAL.
            p_fov2 = 'VALUE'.
          ENDIF.
          IF p_cnd2 IS INITIAL.
            p_fov2 = ''.
            p_fld2b = ''.
            p_flt2b = ''.
            screen-input = 0.
          ELSEIF p_fov2 EQ 'VALUE'.
            IF p_fld2b NE ''.
              p_flt2b = ''.
            ENDIF.
            p_fld2b = ''.
          ELSE.
            p_flt2b = VALUE #( gt_allfields_text[ name = p_fld2b ]-text OPTIONAL ).
          ENDIF.

        WHEN 'P_FOV3'.
          IF p_fov3 IS INITIAL.
            p_fov3 = 'VALUE'.
          ENDIF.
          IF p_cnd3 IS INITIAL.
            p_fov3 = ''.
            p_fld3b = ''.
            p_flt3b = ''.
            screen-input = 0.
          ELSEIF p_fov3 EQ 'VALUE'.
            IF p_fld3b NE ''.
              p_flt3b = ''.
            ENDIF.
            p_fld3b = ''.
          ELSE.
            p_flt3b = VALUE #( gt_allfields_text[ name = p_fld3b ]-text OPTIONAL ).
          ENDIF.

        WHEN 'P_FOV4'.
          IF p_fov4 IS INITIAL.
            p_fov4 = 'VALUE'.
          ENDIF.
          IF p_cnd4 IS INITIAL.
            p_fov4 = ''.
            p_fld4b = ''.
            p_flt4b = ''.
            screen-input = 0.
          ELSEIF p_fov4 EQ 'VALUE'.
            IF p_fld4b NE ''.
              p_flt4b = ''.
            ENDIF.
            p_fld4b = ''.
          ELSE.
            p_flt4b = VALUE #( gt_allfields_text[ name = p_fld4b ]-text OPTIONAL ).
          ENDIF.

        WHEN 'P_FOV5'.
          IF p_fov5 IS INITIAL.
            p_fov5 = 'VALUE'.
          ENDIF.
          IF p_cnd5 IS INITIAL.
            p_fov5 = ''.
            p_fld5b = ''.
            p_flt5b = ''.
            screen-input = 0.
          ELSEIF p_fov5 EQ 'VALUE'.
            IF p_fld5b NE ''.
              p_flt5b = ''.
            ENDIF.
            p_fld5b = ''.
          ELSE.
            p_flt5b = VALUE #( gt_allfields_text[ name = p_fld5b ]-text OPTIONAL ).
          ENDIF.

        WHEN 'P_CASE'.
          IF NOT ( ( VALUE #( gt_allfields_text[ name = p_fld1a ]-type OPTIONAL ) EQ 'C' AND p_fov1 EQ 'VALUE' ) OR
                   ( VALUE #( gt_allfields_text[ name = p_fld2a ]-type OPTIONAL ) EQ 'C' AND p_fov2 EQ 'VALUE' ) OR
                   ( VALUE #( gt_allfields_text[ name = p_fld3a ]-type OPTIONAL ) EQ 'C' AND p_fov3 EQ 'VALUE' ) OR
                   ( VALUE #( gt_allfields_text[ name = p_fld4a ]-type OPTIONAL ) EQ 'C' AND p_fov4 EQ 'VALUE' ) OR
                   ( VALUE #( gt_allfields_text[ name = p_fld5a ]-type OPTIONAL ) EQ 'C' AND p_fov5 EQ 'VALUE' ) ).
            p_case = ' '.
            screen-input = 0.
          ENDIF.

        WHEN 'SLF02'.
          IF p_fov1 NE 'FIELD'.
            screen-input = 0.
          ENDIF.
        WHEN 'SLF03'.
          IF p_opt2 IS INITIAL.
            screen-input = 0.
          ENDIF.
        WHEN 'SLF04'.
          IF p_fov2 NE 'FIELD'.
            screen-input = 0.
          ENDIF.
        WHEN 'SLF05'.
          IF p_opt3 IS INITIAL.
            screen-input = 0.
          ENDIF.
        WHEN 'SLF06'.
          IF p_fov3 NE 'FIELD'.
            screen-input = 0.
          ENDIF.
        WHEN 'SLF07'.
          IF p_opt4 IS INITIAL.
            screen-input = 0.
          ENDIF.
        WHEN 'SLF08'.
          IF p_fov4 NE 'FIELD'.
            screen-input = 0.
          ENDIF.
        WHEN 'SLF09'.
          IF p_opt5 IS INITIAL.
            screen-input = 0.
          ENDIF.
        WHEN 'SLF10'.
          IF p_fov5 NE 'FIELD'.
            screen-input = 0.
          ENDIF.

        WHEN 'P_WAHR'.
          IF p_wahr IS NOT INITIAL AND p_cur1 EQ space.
            p_cur1 = '01'.
          ENDIF.
        WHEN 'P_WAH2'.
          IF p_wah2 IS NOT INITIAL AND p_cur2 EQ space.
            p_cur2 = '03'.
          ENDIF.
        WHEN 'P_CUR1'.
          IF p_wahr EQ space.
            p_cur1 = ' '.
            screen-input = 0.
          ENDIF.
        WHEN 'P_CUR2'.
          IF p_wah2 IS INITIAL.
            p_cur2 = ' '.
            screen-input = 0.
          ENDIF.
        WHEN 'P_YVAL'.
          IF gv_group_count < 1.
            p_yval = ' '.
            screen-input = 0.
          ENDIF.
        WHEN 'P_ADDT'.
          IF gv_group_count EQ 0 AND p_xval IS NOT INITIAL.
            p_addt = ' '.
            screen-input = 0.
          ELSEIF gv_group_count LT 2 AND p_yval IS NOT INITIAL.
            p_addt = ' '.
            screen-input = 0.
          ENDIF.
        WHEN 'P_ADDP'.
          IF gv_max_level LE 1.
            p_addp = ' '.
            screen-input = 0.
          ENDIF.
        WHEN 'BUT03'.
          IF s_fnams[] IS INITIAL.
            screen-input = 0.
          ENDIF.
        WHEN 'BUT07'.
          IF p_addp IS INITIAL.
            screen-input = 0.
          ELSE.
            screen-input = 1.
          ENDIF.
        WHEN 'P_CPRC'.
          IF p_mein IS INITIAL.
            p_cprc = ' '.
            screen-input = 0.
          ENDIF.
        WHEN 'P_ASDE'.
          IF p_sort IS INITIAL.
            p_asde = ' '.
            screen-input = 0.
          ENDIF.
        WHEN 'P_SORT'.
          IF s_fnams[] IS NOT INITIAL .
            p_sort = ' '.
            screen-input = 0.
          ENDIF.
        WHEN 'P_LAYD'.
          IF s_fnams[] IS INITIAL .
            p_layd = ' '.
            screen-input = 0.
          ENDIF.
        WHEN 'P_WRKS' .
          IF ( p_excl IS INITIAL AND p_mail IS INITIAL ).
            p_wrks = ' '.
            screen-input = 0.
          ENDIF.
        WHEN 'P_MLTO-LOW'.
          IF p_mail IS INITIAL .
            CLEAR: p_mlto .
            REFRESH: p_mlto .
            screen-input = 0.
          ENDIF.
        WHEN 'P_BODY'.
          IF p_mail IS INITIAL .
            CLEAR: p_body .
            screen-input = 0.
          ENDIF.
        WHEN 'P_OPXL'.
          IF p_excl IS INITIAL .
            p_opxl = ' '.
            screen-input = 0.
          ENDIF.
        WHEN 'P_PATH'.
          IF p_excl IS INITIAL AND p_mail IS INITIAL .
            p_path = ' '.
            screen-input = 0.
          ENDIF.
        WHEN 'P_XVAL'.
          IF p_wrks IS INITIAL .
            p_xval =  ' ' .
          ENDIF.
          IF ( p_excl IS INITIAL AND p_mail IS INITIAL ) OR p_wrks IS INITIAL.
            screen-input = 0.
          ENDIF.
        WHEN 'P_SUBJ'.
          IF p_mail IS INITIAL .
            CLEAR: p_subj .
            screen-input = 0.
          ENDIF.
        WHEN 'P_DISP'.
          IF p_disp EQ ' ' OR ( s_fnams[] IS INITIAL AND p_disp EQ '3' ).
            p_disp = '1'.
          ENDIF.
        WHEN 'P_OPRP'.
          IF p_disp EQ ' '.
            p_oprp = ' '.
            screen-input = 0.
          ENDIF.
          IF p_excl IS INITIAL AND p_mail IS INITIAL.
            p_oprp = 'X'.
            screen-input = 0.
          ENDIF.
        WHEN 'P_BLIN'.
          IF p_term EQ 'S'.
            p_blin = ' '.
            screen-input = 0.
          ENDIF.
        WHEN  'P_BLIN' OR 'S_EDATU-LOW' OR 'S_EDATU-HIGH'
                       OR 'S_BLDAT-LOW' OR 'S_BLDAT-HIGH'
                       OR 'S_FKDAT-LOW' OR 'S_FKDAT-HIGH'
                       OR 'S_LFBEL-LOW' OR 'S_LFBEL-HIGH'
                       OR 'S_FKBEL-LOW' OR 'S_FKBEL-HIGH'
                       OR 'S_MBLNR-LOW' OR 'S_MBLNR-HIGH'
                       OR 'S_BELNR-LOW' OR 'S_BELNR-HIGH'
                       OR 'S_AUGBL-LOW' OR 'S_AUGBL-HIGH'
                       OR 'S_WBSTA-LOW' OR 'S_WBSTA-HIGH'
                       OR 'S_FSTAT-LOW' OR 'S_FSTAT-HIGH'
                       OR 'S_BWTAR-LOW' OR 'S_BWTAR-HIGH'
                       OR 'S_CHARG-LOW' OR 'S_CHARG-HIGH'.
          IF p_term EQ 'S' AND gv_disable_bytrm EQ abap_true.
            CLEAR:   s_edatu, s_bldat, s_fkdat, s_wbsta, s_fstat, s_lfbel, s_fkbel, s_mblnr, s_belnr, s_augbl, s_bwtar, s_charg.
            REFRESH: s_edatu, s_bldat, s_fkdat, s_wbsta, s_fstat, s_lfbel, s_fkbel, s_mblnr, s_belnr, s_augbl, s_bwtar, s_charg.
            p_blin = ' '.
            screen-input = 0.
          ENDIF.
      ENDCASE.

      CASE p_lang.
        WHEN 'T'.
          PERFORM set_screen_tr.
        WHEN 'D'.
          PERFORM set_screen_de.
        WHEN OTHERS.
          PERFORM set_screen_en.
      ENDCASE.

      MODIFY SCREEN.

    ENDLOOP.


    IF sy-dynnr = 1000.
      DATA : lv_error(1) TYPE c.
      check_of_selection( CHANGING cv_error = lv_error ).
    ENDIF.

  ENDMETHOD.


  METHOD get_source_data.

    DATA: dlv_selected TYPE abap_bool,
          inv_selected TYPE abap_bool.

    DATA: lv_t_filter TYPE string.

    IF ( s_wbsta[] IS INITIAL OR ( s_wbsta[ 1 ]-sign EQ 'I' AND s_wbsta[ 1 ]-option EQ 'EQ' AND s_wbsta[ 1 ]-low IS INITIAL ) ) AND
       ( s_edatu[] IS INITIAL OR ( s_edatu[ 1 ]-sign EQ 'I' AND s_edatu[ 1 ]-option EQ 'EQ' AND s_edatu[ 1 ]-low IS INITIAL ) ) AND
       ( s_bldat[] IS INITIAL OR ( s_bldat[ 1 ]-sign EQ 'I' AND s_bldat[ 1 ]-option EQ 'EQ' AND s_bldat[ 1 ]-low IS INITIAL ) ) AND
       ( s_lfbel[] IS INITIAL OR ( s_lfbel[ 1 ]-sign EQ 'I' AND s_lfbel[ 1 ]-option EQ 'EQ' AND s_lfbel[ 1 ]-low IS INITIAL ) ) AND
       ( s_mblnr[] IS INITIAL OR ( s_mblnr[ 1 ]-sign EQ 'I' AND s_mblnr[ 1 ]-option EQ 'EQ' AND s_mblnr[ 1 ]-low IS INITIAL ) ) .
      dlv_selected = abap_false.
    ELSE.
      dlv_selected = abap_true.
    ENDIF.

    IF ( s_fkdat[] IS INITIAL OR ( s_fkdat[ 1 ]-sign EQ 'I' AND s_fkdat[ 1 ]-option EQ 'EQ' AND s_fkdat[ 1 ]-low IS INITIAL ) ) AND
       ( s_fstat[] IS INITIAL OR ( s_fstat[ 1 ]-sign EQ 'I' AND s_fstat[ 1 ]-option EQ 'EQ' AND s_fstat[ 1 ]-low IS INITIAL ) ) AND
       ( s_fkbel[] IS INITIAL OR ( s_fkbel[ 1 ]-sign EQ 'I' AND s_fkbel[ 1 ]-option EQ 'EQ' AND s_fkbel[ 1 ]-low IS INITIAL ) ) AND
       ( s_belnr[] IS INITIAL OR ( s_belnr[ 1 ]-sign EQ 'I' AND s_belnr[ 1 ]-option EQ 'EQ' AND s_belnr[ 1 ]-low IS INITIAL ) ) AND
       ( s_augbl[] IS INITIAL OR ( s_augbl[ 1 ]-sign EQ 'I' AND s_augbl[ 1 ]-option EQ 'EQ' AND s_augbl[ 1 ]-low IS INITIAL ) ) .
      inv_selected = abap_false.
    ELSE.
      inv_selected = abap_true.
    ENDIF.

    IF ( dlv_selected = abap_true OR inv_selected = abap_true ) .

      lv_t_filter = | concat( sk~vbeln, sk~posnr ) IN ( SELECT DISTINCT concat( sk~vbeln, sk~posnr )|.
      lv_t_filter = lv_t_filter && | FROM vbap as sk|.
      lv_t_filter = lv_t_filter && | INNER JOIN vbak  AS sb|.
      lv_t_filter = lv_t_filter && | ON sb~vbeln  EQ sk~vbeln|.
      lv_t_filter = lv_t_filter && | LEFT JOIN tvak as tk|.
      lv_t_filter = lv_t_filter && | ON tk~auart = sb~auart|.
      lv_t_filter = lv_t_filter && | LEFT JOIN lips as lp|.
      lv_t_filter = lv_t_filter && | ON lp~vgbel EQ sk~vbeln|.
      lv_t_filter = lv_t_filter && | AND lp~vgpos EQ sk~posnr|.
      lv_t_filter = lv_t_filter && | AND lp~lfimg NE 0 |.
      lv_t_filter = lv_t_filter && | LEFT JOIN matdoc as mp |.
      lv_t_filter = lv_t_filter && | ON mp~vbeln_im EQ lp~vbeln|.
      lv_t_filter = lv_t_filter && | AND mp~vbelp_im EQ lp~posnr|.
      lv_t_filter = lv_t_filter && | AND mp~vbeln_im IS NOT INITIAL|.
      lv_t_filter = lv_t_filter && | AND mp~cancelled IS INITIAL|.
      lv_t_filter = lv_t_filter && | AND mp~cancellation_type IS INITIAL|.
      lv_t_filter = lv_t_filter && | AND ( ( mp~shkzg EQ 'H' AND ( mp~bwart EQ 601 OR mp~bwart EQ 631 OR mp~bwart EQ 633 OR mp~bwart EQ 641 ) )|.
      lv_t_filter = lv_t_filter && | OR ( mp~shkzg EQ 'S' AND ( mp~bwart EQ 632 OR mp~bwart EQ 651 OR mp~bwart EQ 653 ) ) )|.
      lv_t_filter = lv_t_filter && | LEFT JOIN vbrp as fk|.
      lv_t_filter = lv_t_filter && | ON ( ( fk~vgbel = sk~vbeln AND fk~vgpos = sk~posnr )|.
      lv_t_filter = lv_t_filter && | OR ( fk~vgbel = lp~vbeln AND ( fk~vgpos = lp~posnr OR fk~vgpos = lp~uecha ) ) )|.
      lv_t_filter = lv_t_filter && | AND ( fk~vbtyp_ana EQ 'M' OR fk~vbtyp_ana EQ 'O' OR fk~vbtyp_ana EQ 'P' )|.
      lv_t_filter = lv_t_filter && | AND fk~vf_status_ana NE 'C'|.
      lv_t_filter = lv_t_filter && | LEFT JOIN vbrk as fb|.
      lv_t_filter = lv_t_filter && | ON fb~vbeln EQ fk~vbeln|.
      lv_t_filter = lv_t_filter && | AND fb~fksto IS INITIAL |.
      lv_t_filter = lv_t_filter && | AND fb~sfakn IS INITIAL |.
      lv_t_filter = lv_t_filter && | AND ( fb~vbtyp EQ 'M' OR fb~vbtyp EQ 'O' OR fb~vbtyp EQ 'P' ) |.
      lv_t_filter = lv_t_filter && | LEFT JOIN bsad_view as bs|.
      lv_t_filter = lv_t_filter && | ON bs~bukrs EQ fb~bukrs|.
      lv_t_filter = lv_t_filter && | AND bs~belnr EQ fb~belnr|.
      lv_t_filter = lv_t_filter && | AND bs~gjahr EQ fb~gjahr|.
      lv_t_filter = lv_t_filter && | AND bs~buzei EQ 1|.
      lv_t_filter = lv_t_filter && | AND bs~blart EQ 'RV'|.
      lv_t_filter = lv_t_filter && | WHERE COALESCE( lp~erdat, '00000000' ) IN @s_edatu|.
      lv_t_filter = lv_t_filter && | AND COALESCE( lp~charg, ' ' ) IN @s_charg|.
      lv_t_filter = lv_t_filter && | AND COALESCE( lp~bwtar, ' ' ) IN @s_bwtar|.
      lv_t_filter = lv_t_filter && | AND COALESCE( lp~wbsta, ' ' ) IN @s_wbsta|.
      lv_t_filter = lv_t_filter && | AND COALESCE( mp~budat, '00000000' ) IN @s_bldat|.
      lv_t_filter = lv_t_filter && | AND COALESCE( fb~fkdat, '00000000' ) IN @s_fkdat|.
      lv_t_filter = lv_t_filter && | AND COALESCE( fb~vf_status, ' ' ) IN @s_fstat|.
      lv_t_filter = lv_t_filter && | AND COALESCE( lp~vbeln, ' ' ) IN @s_lfbel|.
      lv_t_filter = lv_t_filter && | AND COALESCE( fb~vbeln, ' ' ) IN @s_fkbel|.
      lv_t_filter = lv_t_filter && | AND COALESCE( mp~mblnr, ' ' ) IN @s_mblnr|.
      lv_t_filter = lv_t_filter && | AND COALESCE( fb~belnr, ' ' ) IN @s_belnr|.
      lv_t_filter = lv_t_filter && | AND COALESCE( bs~augbl, ' ' ) IN @s_augbl )|.
    ELSE.
      lv_t_filter = | sk~vbeln  EQ sp~vbeln |.
    ENDIF.

    DATA: t_parvw TYPE RANGE OF vbpa-parvw.
    DATA: t_parvw_wa LIKE LINE OF t_parvw.

    t_parvw_wa-sign = 'I'.
    t_parvw_wa-option = 'BT '.
    IF s_parvw IS INITIAL.
      t_parvw_wa-low = space.
      t_parvw_wa-high = 'ZZ'.
    ELSE.
      t_parvw_wa-low = s_parvw.
      t_parvw_wa-high = s_parvw.
    ENDIF.
    APPEND t_parvw_wa TO t_parvw.


    SELECT sk~vbeln,
           sk~posnr,
           sp~audat,
           sk~erdat,
           sk~erzet,
           sk~ernam,
           sk~gbsta,
           sp~auart,
           sp~bukrs_vf AS bukrs,
           sp~vkbur,
           sp~kunnr,
           sp~vkorg,
           sp~vtweg,
           sp~spart,
           sk~matnr,
           ma~matkl,
           ma~mtart,
           mv~ktgrm,
           mv~mvgr1,
           mv~mvgr2,
           mv~mvgr3,
           mv~mvgr4,
           mv~mvgr5,
           sk~vrkme,
           sk~waerk,
           sk~vgbel,
           sk~vgpos,
           sk~vgtyp,
           sk~posex,
           sk~werks,
           sk~lgort,
           sk~vstel,
           sk~prctr,
           sk~vkaus,
           sp~augru,
           sk~abgru,
           sk~shkzg,
           sk~ean11,
           tk~fkarv,
           CASE WHEN ft~kunnr IS NULL THEN ftb~kunnr ELSE ft~kunnr END AS kunre,
           CASE WHEN rg~kunnr IS NULL THEN frg~kunnr ELSE rg~kunnr END AS kunrg,
           CASE WHEN mt~kunnr IS NULL THEN mtb~kunnr ELSE mt~kunnr END AS kunwe,
           CASE WHEN vb~parvw IS NULL THEN vbb~parvw ELSE vb~parvw END AS parvw,
           CASE WHEN vb~kunnr IS NULL THEN vbb~kunnr ELSE vb~kunnr END AS partn,
           CASE WHEN vk~bzirk IS NULL THEN vkb~bzirk ELSE vk~bzirk END AS bzirk,
           CASE WHEN vk~kdgrp IS NULL THEN vkb~kdgrp ELSE vk~kdgrp END AS kdgrp,
           CASE WHEN vk~zterm IS NULL THEN vkb~zterm ELSE vk~zterm END AS zterm,
           CASE WHEN vk~inco1 IS NULL THEN vkb~inco1 ELSE vk~inco1 END AS inco1,
           CASE WHEN vk~inco2 IS NULL THEN vkb~inco2 ELSE vk~inco2 END AS inco2,
           CASE WHEN vk~bstkd IS NULL THEN vkb~bstkd ELSE vk~bstkd END AS bstkd,
           bp~ktokd,                           " Müşteri Hesap Grubu
           bpst~vip AS bpvip,                  " Müşteri VIP
           bpst~unw_customer AS bpunw,         " Müşteri İstenmeyen
           bpap~xblck AS bpblk,                " Müşteri Bloke
           bpkv~ktgrd,                         " Müşteri Hesap Tayin Grubu
           bpkv~konda,                         " Müşteri Fiyat Grubu

           CASE WHEN sk~kwmeng EQ 0 THEN sk~zmeng WHEN sk~kwmeng NE 0 THEN sk~kwmeng END AS vp_quan,

           CASE WHEN shkzg EQ 'X' THEN SUM( CASE f~vbtyp_n WHEN 'T' THEN division(   rfmng * sk~umvkn, sk~umvkz, 3 ) END )
                                  ELSE SUM( CASE f~vbtyp_n WHEN 'J' THEN division(   rfmng * sk~umvkn, sk~umvkz, 3 ) END ) END AS lf_quan,

           SUM( CASE f~vbtyp_n WHEN 'R' THEN division(   rfmng * sk~umvkn, sk~umvkz, 3 )
                               WHEN 'h' THEN division( - rfmng * sk~umvkn, sk~umvkz, 3 ) END ) AS wa_quan,

           SUM( CASE f~vbtyp_n WHEN 'M' THEN division(   rfmng * sk~umvkn, sk~umvkz, 3 )
                               WHEN 'O' THEN division(   rfmng * sk~umvkn, sk~umvkz, 3 )
                               WHEN 'P' THEN division(   rfmng * sk~umvkn, sk~umvkz, 3 ) END ) AS fk_quan,

           division( sk~netpr, sk~kpein, 2 ) AS nt_pric,  " Satış Fiyatı
           sk~netwr AS vp_amnt,                           " Sipariş Tutarı
           sk~mwsbp AS tx_amnt,                           " KDV Tutarı
           CAST( zt~ztag1 AS INT2 ) AS ztage              " Ödeme Koşulu Gün Sayısı

           FROM vbap AS sk
     INNER JOIN vbak AS sp
             ON sp~vbeln  EQ sk~vbeln
      LEFT JOIN mara AS ma
             ON ma~matnr  EQ sk~matnr
      LEFT JOIN mvke AS mv
             ON mv~matnr EQ ma~matnr
            AND mv~vkorg EQ sp~vkorg
            AND mv~vtweg EQ sp~vtweg
      LEFT JOIN vbpa AS ftb
             ON ftb~vbeln EQ sk~vbeln
            AND ftb~posnr EQ 0
            AND ftb~parvw EQ 'RE'
      LEFT JOIN vbpa AS frg
             ON frg~vbeln EQ sk~vbeln
            AND frg~posnr EQ 0
            AND frg~parvw EQ 'RG'
      LEFT JOIN vbpa AS mtb
             ON mtb~vbeln EQ sk~vbeln
            AND mtb~posnr EQ 0
            AND mtb~parvw EQ 'WE'
      LEFT JOIN vbpa AS ft
             ON ft~vbeln  EQ sk~vbeln
            AND ft~posnr  EQ sk~posnr
            AND ft~parvw  EQ 'RE'
      LEFT JOIN vbpa AS rg
             ON rg~vbeln  EQ sk~vbeln
            AND rg~posnr  EQ sk~posnr
            AND rg~parvw  EQ 'RG'
      LEFT JOIN vbpa AS mt
             ON mt~vbeln  EQ sk~vbeln
            AND mt~posnr  EQ sk~posnr
            AND mt~parvw  EQ 'WE'
      LEFT JOIN vbpa AS vbb
             ON vbb~vbeln EQ sk~vbeln
            AND vbb~parvw EQ @s_parvw
      LEFT JOIN vbpa AS vb
             ON vb~vbeln  EQ sk~vbeln
            AND vb~posnr  EQ sk~posnr
            AND vb~parvw  EQ @s_parvw
      LEFT JOIN vbfa  AS f
             ON f~vbelv   EQ sk~vbeln
            AND f~posnv   EQ sk~posnr
            AND f~vbtyp_v EQ sp~vbtyp
            AND f~vbtyp_n NE 'K'
            AND f~vbtyp_n NE 'L'
            AND f~stufe   LE '01'
      LEFT JOIN vbkd AS vkb
             ON vkb~vbeln EQ sk~vbeln
            AND vkb~posnr EQ 0
      LEFT JOIN vbkd AS vk
             ON vk~vbeln  EQ sk~vbeln
            AND vk~posnr  EQ sk~posnr
      LEFT JOIN tvak AS tk
             ON tk~auart  EQ sp~auart
      " Ödeme koşulu
      LEFT JOIN t052 AS zt
             ON ( zt~zterm EQ vk~zterm OR zt~zterm EQ vkb~zterm )
            AND zt~ztagg IS INITIAL
      " BP
      LEFT JOIN kna1 AS bp
        ON bp~kunnr EQ sp~kunnr
      " KNVV
      LEFT JOIN knvv AS bpkv
             ON bpkv~kunnr EQ sp~kunnr
            AND bpkv~vkorg EQ sp~vkorg
            AND bpkv~vtweg EQ sp~vtweg
            AND bpkv~spart EQ sp~spart
      " Müşteri Durum
      LEFT JOIN bp001 AS bpst
             ON bpst~partner EQ sp~kunnr
      " Müşteri Aktif
      LEFT JOIN but000 AS bpap
             ON bpap~partner EQ sp~kunnr

        WHERE ( sp~vbtyp EQ 'C' OR sp~vbtyp EQ 'H' OR sp~vbtyp EQ 'I' OR sp~vbtyp EQ 'K' OR sp~vbtyp EQ 'L' )
                AND sk~gbsta   IN @s_gbsta
                AND sk~vbeln   IN @s_vbeln
                AND sk~posnr   IN @s_posnr
                AND sk~vgtyp   IN @s_vgtyp
                AND sp~kunnr   IN @s_kunnr
                AND sp~auart   IN @s_auart
                AND sp~audat   IN @s_audat
                AND sp~vkorg   IN @s_vkorg
                AND sp~vtweg   IN @s_vtweg
                AND sp~spart   IN @s_spart
                AND sp~vkbur   IN @s_vkbur
                AND sp~vkgrp   IN @s_vkgrp
                AND sk~erdat   IN @s_erdat
                AND sk~ernam   IN @s_ernam
                AND sk~matnr   IN @s_matnr
                AND ma~matkl   IN @s_matkl
                AND ma~mtart   IN @s_mtart
                AND mv~mvgr1   IN @s_mvgr1
                AND mv~mvgr2   IN @s_mvgr2
                AND mv~mvgr3   IN @s_mvgr3
                AND mv~mvgr4   IN @s_mvgr4
                AND mv~mvgr5   IN @s_mvgr5
                AND sk~werks   IN @s_werks
                AND sk~lgort   IN @s_lgort
                AND sk~vstel   IN @s_vstel
                AND sk~vkaus   IN @s_vkaus
                AND sk~waerk   IN @s_waers
                AND sk~vrkme   IN @s_vrkms
                AND sp~augru   IN @s_augru
                AND sk~abgru   IN @s_abgru
                AND coalesce( vk~bstkd, vkb~kdgrp ) EQ @p_bstkd
                AND coalesce( vk~kdgrp, vkb~kdgrp ) IN @s_kdgrp
                AND coalesce( vk~inco1, vkb~inco1 ) IN @s_inco1
                AND coalesce( vk~zterm, vkb~zterm ) IN @s_zterm
                AND coalesce( ft~kunnr, ftb~kunnr ) IN @s_kunre
                AND coalesce( rg~kunnr, frg~kunnr ) IN @s_kunrg
                AND coalesce( mt~kunnr, mtb~kunnr ) IN @s_kunwe
                AND coalesce( vb~parvw, vbb~parvw, @space ) IN @t_parvw
                AND coalesce( vb~kunnr, vbb~kunnr, @space ) IN @s_partn

                AND ( sk~kwmeng NE 0 OR sk~zmeng NE 0 )

                AND (lv_t_filter)

       GROUP BY sk~vbeln, sk~posnr, sp~audat, sk~erdat, sk~erzet, sk~ernam, sp~auart, sp~bukrs_vf, sp~vkbur, sp~kunnr, sk~ean11, sk~gbsta,
                sp~vkorg, sp~vtweg, sp~spart, sk~matnr, ma~matkl, ma~mtart, mv~ktgrm, mv~mvgr1, mv~mvgr2, mv~mvgr3, mv~mvgr4, mv~mvgr5,
                sk~vrkme, sk~werks, sk~lgort, sk~vstel, sp~augru, sk~abgru, sk~shkzg, sk~prctr, sk~vkaus,
                sk~netwr, sk~netpr, sk~mwsbp, sk~waerk, sk~vgbel, sk~vgpos, sk~vgtyp, sk~posex, sk~kpein,
                tk~fkarv, ftb~kunnr, frg~kunnr, mtb~kunnr, ft~kunnr, rg~kunnr, mt~kunnr,
                vk~zterm, vk~inco1, vk~inco2, vk~bzirk, vk~kdgrp, vk~bstkd, vkb~zterm, vkb~inco1, vkb~inco2, vkb~bzirk, vkb~kdgrp, vkb~bstkd,
                bp~ktokd, bpst~vip, bpst~unw_customer, bpap~xblck, bpkv~ktgrd, bpkv~konda, vbb~kunnr, vb~kunnr, vbb~parvw, vb~parvw,
                sk~kwmeng, sk~klmeng, sk~zmeng, zt~ztag1

    INTO TABLE @DATA(lb_data).

    SORT lb_data BY vbeln posnr.
    DELETE ADJACENT DUPLICATES FROM lb_data COMPARING vbeln posnr.

    DATA : lv_count_source TYPE i.
    lv_count_source = lines( lb_data ).

    IF lv_count_source GT gv_max_ordernum.
      MESSAGE VALUE #( gt_textlist[ sym = 'A01' ]-text OPTIONAL ) TYPE 'S' DISPLAY LIKE 'E'.
      gv_halt = abap_true.
      RETURN.
    ENDIF.

    IF p_term = 'T'.

      SELECT sk~vbeln, sk~posnr, sk~audat, sk~erdat, sk~erzet, sk~ernam, sk~auart, sk~bukrs, sk~vkbur, sk~kunnr,
             sk~vkorg, sk~vtweg, sk~spart, sk~vrkme, sk~werks, sk~lgort, sk~vstel, sk~inco1, sk~inco2, sk~vkaus,
             sk~matnr, sk~matkl, sk~mtart, sk~mvgr1, sk~mvgr2, sk~mvgr3, sk~mvgr4, sk~mvgr5, sk~bzirk, sk~kdgrp, sk~bstkd,
             sk~ktokd, sk~kunre, sk~kunrg, sk~kunwe, sk~partn, sk~bpvip, sk~bpunw, sk~bpblk, sk~konda, sk~zterm, sk~ztage,
             sk~shkzg, sk~waerk, sk~vgbel, sk~vgpos, sk~vgtyp, sk~posex, sk~augru, sk~abgru, sk~gbsta,

             CASE WHEN sk~fkarv IS INITIAL THEN 'I' ELSE 'D' END AS ttype,
             CASE WHEN sk~fkarv IS INITIAL THEN fk~fkimg ELSE lp~lfimg END AS tm_quan,
             lp~lfimg AS lf_quan,
             CASE WHEN lp~wbsta EQ 'C' THEN lp~lfimg ELSE 0 END AS wa_quan,
             CASE WHEN lp~wbsta EQ 'C' THEN 0 ELSE lp~lfimg END AS wa_bqua,
             CASE WHEN fk~vbeln IS NULL THEN 0 ELSE ( CASE WHEN sk~fkarv IS INITIAL THEN fk~fkimg ELSE lp~lfimg END ) END AS fk_quan,
             CASE WHEN fk~vbeln IS NOT NULL THEN 0 ELSE ( CASE WHEN sk~fkarv IS INITIAL THEN fk~fkimg ELSE lp~lfimg END ) END AS fk_bqua,
             CASE WHEN fk~vbeln IS NOT NULL THEN 0 ELSE ( CASE WHEN sk~fkarv IS INITIAL THEN fk~fkimg ELSE lp~lfimg END ) END AS fk_wqua,

             coalesce( fb~ktgrd, sk~ktgrd ) AS ktgrd,
             coalesce( fk~ktgrm, sk~ktgrm ) AS ktgrm,

             CASE WHEN sk~wa_quan GT 0 THEN mp~bwart ELSE @space END AS bwart,                   " Mal Hareketi Türü
             CASE WHEN sk~wa_quan GT 0 THEN mp~mblnr ELSE @space END AS mblnr,                   " Malzeme Belgesi
             mp~budat AS bldat,                                                                  " Mal Çıkış Tarihi
             fk~vbeln AS fkbel,                                                                  " Fatura Belgesi
             fk~posnr AS fkpos,                                                                  " Fatura Kalemi
             fk~prsdt,                                                                           " Fiyatlandırma Tarihi
             fb~fkdat,                                                                           " Fatura Tarihi
             fb~vf_status AS fstat,                                                              " Fatura Durumu
             fb~belnr,                                                                           " Muhasebe Belgesi
             mp~sakto AS hkont,                                                                  " Kebir Hesabı
             sk~prctr AS prctr,                                                                  " Kar Merkezi
             lp~bwtar,                                                                           " Değerleme Türü
             lp~charg,                                                                           " Parti Numarası
             lp~erdat AS lfdat,                                                                  " Teslim Tarihi
             lp~vbeln AS lfbel,                                                                  " Teslimat Belgesi
             lp~posnr AS lfpos,                                                                  " Teslimat Kalemi
           "  CASE WHEN lp~uecha NE '000000' THEN lp~uecha ELSE lp~posnr END AS lfpos,           " Teslimat Parti Kalemi
             lp~wbsta,                                                                           " Teslimat Durumu
             bs~augbl,                                                                           " Denkleştirme Belgesi
             bs~augdt,                                                                           " Denkleştirme Tarihi

             sk~vp_quan,                                                                         " Sipariş Miktarı
             sk~nt_pric,                                                                         " Satış Fiyatı
             sk~vp_amnt,                                                                         " Sipariş Tutarı
             sk~tx_amnt,                                                                         " Sipariş KDV Tutarı

             CASE WHEN coalesce( fk~fkimg, 0 ) EQ 0 THEN lp~lfimg ELSE fk~fkimg END AS kd_quan,  " Koşul Miktarı
             fk~netwr AS fk_amnt                                                                 " Fatura Tutarı

      FROM @lb_data AS sk
      " Teslimat
      LEFT JOIN lips AS lp
             ON lp~vgbel EQ sk~vbeln
            AND lp~vgpos EQ sk~posnr
            AND lp~lfimg NE 0
      " Malzeme Belgesi
      LEFT JOIN matdoc AS mp
             ON mp~vbeln_im EQ lp~vbeln
            AND mp~vbelp_im EQ lp~posnr
            AND mp~vbeln_im IS NOT INITIAL
            AND mp~cancelled IS INITIAL
            AND mp~cancellation_type IS INITIAL
            AND ( ( mp~shkzg EQ 'H' AND ( mp~bwart EQ 601 OR mp~bwart EQ 631 OR mp~bwart EQ 633 OR mp~bwart EQ 641 ) )
             OR ( mp~shkzg EQ 'S' AND ( mp~bwart EQ 632 OR mp~bwart EQ 651 OR mp~bwart EQ 653 ) ) )
      " Fatura Kalemi
      LEFT JOIN vbrp AS fk
             ON ( ( fk~vgbel = sk~vbeln AND fk~vgpos = sk~posnr )
             OR ( fk~vgbel = lp~vbeln AND ( fk~vgpos = lp~posnr OR fk~vgpos = lp~uecha ) ) )
             AND ( fk~vbtyp_ana EQ 'M' OR fk~vbtyp_ana EQ 'O' OR fk~vbtyp_ana EQ 'P' )
             AND fk~vf_status_ana NE 'C'
      " Fatura Başlığı
      LEFT JOIN vbrk AS fb
             ON fb~vbeln EQ fk~vbeln
            AND fb~fksto IS INITIAL
      " Denkleştirme
      LEFT JOIN bsad_view AS bs
             ON bs~bukrs EQ fb~bukrs
            AND bs~belnr EQ fb~belnr
            AND bs~gjahr EQ fb~gjahr
            AND bs~buzei EQ 1
            AND bs~blart EQ 'RV'

          WHERE ( lp~lfimg IS NOT NULL OR fk~fkimg IS NOT NULL )

            AND coalesce( lp~charg, ' ' )         IN @s_charg
            AND coalesce( lp~bwtar, ' ' )         IN @s_bwtar
            AND coalesce( lp~wbsta, ' ' )         IN @s_wbsta
            AND coalesce( lp~erdat, '00000000' )  IN @s_edatu
            AND coalesce( mp~budat, '00000000' )  IN @s_bldat
            AND coalesce( fb~fkdat, '00000000' )  IN @s_fkdat
            AND coalesce( fb~vf_status, ' ' )     IN @s_fstat
            AND coalesce( lp~vbeln, ' ' )         IN @s_lfbel
            AND coalesce( fb~vbeln, ' ' )         IN @s_fkbel
            AND coalesce( mp~mblnr, ' ' )         IN @s_mblnr
            AND coalesce( fb~belnr, ' ' )         IN @s_belnr
            AND coalesce( bs~augbl, ' ' )         IN @s_augbl

            APPENDING CORRESPONDING FIELDS OF TABLE @gt_base_data.

      SORT gt_base_data BY vbeln posnr lfbel lfpos fkbel fkpos.
      DELETE ADJACENT DUPLICATES FROM gt_base_data COMPARING vbeln posnr lfbel lfpos fkbel fkpos.

    ENDIF.


    IF p_blin EQ 'X' AND ( dlv_selected EQ abap_false OR inv_selected EQ abap_false ).

      " Backorder
      SELECT sk~vbeln, sk~posnr, sk~audat, sk~erdat, sk~erzet, sk~ernam, sk~auart, sk~bukrs, sk~vkbur, sk~kunnr,
             sk~vkorg, sk~vtweg, sk~spart, sk~vrkme, sk~werks, sk~lgort, sk~vstel, sk~inco1, sk~inco2, sk~vkaus,
             sk~matnr, sk~matkl, sk~mtart, sk~ktgrm, sk~mvgr1, sk~mvgr2, sk~mvgr3, sk~mvgr4, sk~mvgr5, sk~bzirk, sk~kdgrp, sk~bstkd,
             sk~ktokd, sk~kunre, sk~kunrg, sk~kunwe, sk~partn, sk~bpvip, sk~bpunw, sk~bpblk, sk~ktgrd, sk~konda, sk~zterm, sk~ztage,
             sk~shkzg, sk~waerk, sk~vgbel, sk~vgpos, sk~vgtyp, sk~posex, sk~augru, sk~abgru, sk~gbsta,

             CASE WHEN sk~fkarv IS INITIAL THEN 'IB' ELSE 'DB' END AS ttype,

             CASE WHEN sk~fkarv IS INITIAL  THEN
              ( CASE WHEN fk_quan GT vp_quan THEN fk_quan ELSE vp_quan END )
             ELSE
              ( CASE WHEN lf_quan GT vp_quan THEN lf_quan ELSE vp_quan END ) - lf_quan
             END AS  tm_quan,

             CASE WHEN sk~fkarv IS INITIAL THEN 0 ELSE ( CASE WHEN lf_quan GT vp_quan THEN lf_quan ELSE vp_quan END ) - lf_quan END AS lf_bqua,
             vp_quan - fk_quan AS fk_bqua,
             CASE WHEN sk~fkarv IS NOT INITIAL THEN 0 ELSE vp_quan - fk_quan END AS fk_wqua,

             sk~vp_quan,                                                " Sipariş Miktarı
             nt_pric,                                                   " Satış Fiyatı
             sk~vp_amnt,                                                " Sipariş Tutarı
             sk~tx_amnt                                                 " Sipariş KDV Tutarı

      FROM @lb_data AS sk

      WHERE ( ( sk~lf_quan LT sk~vp_quan AND sk~fkarv IS NOT INITIAL AND @dlv_selected EQ @abap_false AND @inv_selected EQ @abap_false )   " Teslimat ilişkili
           OR ( sk~fk_quan LT sk~vp_quan AND sk~fkarv IS INITIAL AND @inv_selected EQ @abap_false ) )                                      " Fatura ilişkili

          APPENDING CORRESPONDING FIELDS OF TABLE @gt_base_data.

    ENDIF.


    IF p_term = 'S'.

      SELECT sk~vbeln, sk~posnr, sk~audat, sk~erdat, sk~erzet, sk~ernam, sk~auart, sk~bukrs, sk~vkbur, sk~kunnr,
             sk~vkorg, sk~vtweg, sk~spart, sk~vrkme, sk~werks, sk~lgort, sk~vstel, sk~inco1, sk~inco2, sk~vkaus,
             sk~matnr, sk~matkl, sk~mtart, sk~ktgrm, sk~mvgr1, sk~mvgr2, sk~mvgr3, sk~mvgr4, sk~mvgr5, sk~bzirk, sk~kdgrp, sk~bstkd,
             sk~ktokd, sk~kunre, sk~kunrg, sk~kunwe, sk~partn, sk~bpvip, sk~bpunw, sk~bpblk, sk~ktgrd, sk~konda, sk~zterm, sk~ztage,
             sk~shkzg, sk~waerk, sk~vgbel, sk~vgpos, sk~vgtyp, sk~posex, sk~augru, sk~abgru, sk~gbsta,

             'OI' AS ttype,

             CASE WHEN sk~fkarv IS INITIAL  THEN
              ( CASE WHEN fk_quan GT vp_quan THEN fk_quan ELSE vp_quan END )
             ELSE
              ( CASE WHEN lf_quan GT vp_quan THEN lf_quan ELSE vp_quan END )
             END AS tm_quan,

             lf_quan,
             CASE WHEN sk~fkarv IS INITIAL THEN 0 ELSE ( CASE WHEN lf_quan GT vp_quan THEN lf_quan ELSE vp_quan END ) - lf_quan END AS lf_bqua,
             wa_quan,
             lf_quan - wa_quan AS wa_bqua,
             fk_quan,
             CASE WHEN fk_quan GT vp_quan THEN fk_quan ELSE vp_quan END - fk_quan AS fk_bqua,
             CASE WHEN sk~fkarv IS INITIAL THEN ( CASE WHEN fk_quan GT vp_quan THEN fk_quan ELSE vp_quan END ) - fk_quan ELSE lf_quan - fk_quan END AS fk_wqua,

             sk~vp_quan,                                    " Sipariş Miktarı
             sk~nt_pric,                                    " Satış Fiyatı
             sk~vp_amnt,                                    " Sipariş Tutarı
             sk~tx_amnt,                                    " Vergi Tutarı

             SUM( coalesce( fk~fkimg, 0 ) ) AS kd_quan,     " Koşul Miktarı
             SUM( coalesce( fk~netwr, 0 ) ) AS fk_amnt      " Fatura Tutarı

      FROM @lb_data AS sk
      " Teslimat
      LEFT JOIN lips AS lp
             ON lp~vgbel EQ sk~vbeln
            AND lp~vgpos EQ sk~posnr
            AND lp~lfimg NE 0
      " Fatura Kalemi
      LEFT JOIN vbrp AS fk
             ON ( ( fk~vgbel = sk~vbeln AND fk~vgpos = sk~posnr )
             OR ( fk~vgbel = lp~vbeln AND ( fk~vgpos = lp~posnr OR fk~vgpos = lp~uecha ) ) )
             AND ( fk~vbtyp_ana EQ 'M' OR fk~vbtyp_ana EQ 'O' OR fk~vbtyp_ana EQ 'P' )
             AND fk~vf_status_ana NE 'C'
      " Fatura Başlığı
      LEFT JOIN vbrk AS fb
             ON fb~vbeln EQ fk~vbeln
            AND fb~fksto IS INITIAL

            GROUP BY
            sk~vbeln, sk~posnr, sk~audat, sk~erdat, sk~erzet, sk~ernam, sk~auart, sk~bukrs, sk~vkbur, sk~kunnr,
            sk~vkorg, sk~vtweg, sk~spart, sk~vrkme, sk~werks, sk~lgort, sk~vstel, sk~inco1, sk~inco2, sk~vkaus,
            sk~matnr, sk~matkl, sk~mtart, sk~ktgrm, sk~mvgr1, sk~mvgr2, sk~mvgr3, sk~mvgr4, sk~mvgr5, sk~bzirk, sk~kdgrp,  sk~bstkd,
            sk~ktokd, sk~kunre, sk~kunrg, sk~kunwe, sk~partn, sk~bpvip, sk~bpunw, sk~bpblk, sk~ktgrd, sk~konda, sk~gbsta,
            sk~shkzg, sk~waerk, sk~vgbel, sk~vgpos, sk~vgtyp, sk~posex, sk~augru, sk~abgru, sk~fkarv, sk~zterm,
            sk~vp_quan, sk~lf_quan, sk~wa_quan, sk~fk_quan, sk~vp_amnt, nt_pric, sk~tx_amnt, sk~ztage

            APPENDING CORRESPONDING FIELDS OF TABLE @gt_base_data.

    ENDIF.


  ENDMETHOD.


  METHOD get_result_data.
    " **********************************************
    " ALV Genel Veri
    " **********************************************
    SELECT
      concat( concat( bd~vbeln, '-' ), bd~posnr ) AS vbelk,
      concat( concat( concat( concat( bd~vkorg, '-' ), bd~vtweg ), '-' ), bd~spart ) AS sdorg,
      CASE WHEN bd~audat IS NOT INITIAL THEN concat( concat( substring( bd~audat, 1, 4 ), '-' ), substring( bd~audat, 5, 2 ) ) END AS vkper,
      CASE WHEN bd~lfdat IS NOT INITIAL THEN concat( concat( substring( bd~lfdat, 1, 4 ), '-' ), substring( bd~lfdat, 5, 2 ) ) END AS lfper,
      CASE WHEN bd~fkdat IS NOT INITIAL THEN concat( concat( substring( bd~fkdat, 1, 4 ), '-' ), substring( bd~fkdat, 5, 2 ) ) END AS fkper,
      CAST( substring( bd~fkdat, 1, 4 ) AS NUMC ) AS gjahr,
      1 AS count,
      bd~ttype,                             " Termin Tipi
      st~ddtext AS gbsta_d,                 " Genel Durum Tanımı
      bd~auart,                             " Satış Belge Türü
      bt~bezei AS auart_x,                  " Satış belge türü adı
      bd~vbeln,                             " Sipariş No
      bd~posnr,                             " Sipariş Kalem
      bd~vgbel,                             " Sipariş Ref. Belge
      bd~vgpos,                             " Sipariş Ref. Kalem
      bd~vgtyp,                             " Sipariş Ref. Tipi
      bd~lfbel,                             " Teslimat
      bd~lfpos,                             " Teslimat Kalemi
      bd~lfdat,                             " Teslimat Tarihi
      bd~wbsta,                             " Mal Çıkış Durumu
      bd~bwart,                             " Mal Hareketi Türü
      bd~mblnr,                             " Malzeme Belgesi
      bd~bldat,                             " Mal Çıkış Tarihi
      bd~fkbel,                             " Fatura Belgesi
      bd~fkpos,                             " Fatura Kalemi
      bd~prsdt,                             " Fiyatlandırma Tarihi
      bd~fkdat,                             " Fatura Tarihi
      bd~fstat,                             " Fatura Durumu
      bd~belnr,                             " Muhasebe Belgesi
      bd~augbl,                             " Denkleştirme Belgesi
      bd~augdt,                             " Denkleştirme Tarihi
      bd~hkont,                             " Kebir Hesabı
      bd~prctr,                             " Kar Merkezi
      bd~matnr,                             " Malzeme
      mt~maktx,                             " Malzeme Adı
      bd~bwtar,                             " Değerleme Türü
      bd~charg,                             " Parti No
      bd~matkl,                             " Mal Grubu
      mg~wgbez,                             " Mal Grubu Adı
      bd~mtart,                             " Malzeme Türü
      mr~mtbez,                             " Malzeme Türü Adı
      bd~ktgrm,                             " Malzeme Hesap Tayin Grubu
      tk~vtext AS ktgrm_x,                  " Malzeme HTG Tanımı
      bd~mvgr1, mg1~bezei AS mvgr1_x, bd~mvgr2, mg2~bezei AS mvgr2_x, bd~mvgr3, mg3~bezei AS mvgr3_x, bd~mvgr4, mg4~bezei AS mvgr4_x, bd~mvgr5, mg5~bezei AS mvgr5_x,
      bd~vkaus,                             " Kullanım Süresi
      tvlvt~bezei AS vkaus_x,               " Kullanım Süresi Tanımı
      bd~posex,                             " SAS ref
      bd~shkzg,                             " İade
      bd~bstkd,                             " Müşteri Referansı
      bd~inco1,                             " Incoterms
      bd~inco2,                             " Incoterms Yer
      bd~zterm,                             " Ödeme Koşulu
      ztb~text1 AS zterm_x,                 " Ödeme Koşulu Tanımı
      bd~ztage,                             " Vade Gün Sayısı
      bd~audat,                             " Sipariş Tarihi
      bd~erdat,                             " Sipariş Giriş Tarihi
      bd~erzet,                             " Sipariş Giriş Saati
      bd~ernam,                             " Sipariş Açan
      ( CASE WHEN bd~shkzg EQ 'X' THEN -1 ELSE 1 END ) * bd~tm_quan  AS tm_quan,   " Termin Miktarı
      ( CASE WHEN bd~shkzg EQ 'X' THEN -1 ELSE 1 END ) * bd~lf_quan  AS lf_quan,   " Teslim Miktarı
      ( CASE WHEN bd~shkzg EQ 'X' THEN -1 ELSE 1 END ) * bd~lf_bqua  AS lf_bqua,   " Teslim Bakiyesi
      ( CASE WHEN bd~shkzg EQ 'X' THEN -1 ELSE 1 END ) * bd~wa_quan  AS wa_quan,   " Mal Çıkış Miktarı
      ( CASE WHEN bd~shkzg EQ 'X' THEN -1 ELSE 1 END ) * bd~wa_bqua  AS wa_bqua,   " Mal Çıkış Bakiyesi
      ( CASE WHEN bd~shkzg EQ 'X' THEN -1 ELSE 1 END ) * bd~fk_quan  AS fk_quan,   " Fatura Miktarı
      ( CASE WHEN bd~shkzg EQ 'X' THEN -1 ELSE 1 END ) * bd~fk_bqua  AS fk_bqua,   " Fatura Bakiyesi
      ( CASE WHEN bd~shkzg EQ 'X' THEN -1 ELSE 1 END ) * bd~fk_wqua  AS fk_wqua,   " Faturalama Bekleyen Miktar
      bd~vrkme,                                                    " Ölçü Birimi
      bd~vrkme AS cvrkm,                                           " Belge Ölçü Birimi
      bd~vp_quan,                                                  " Sipariş Kalemi Miktarı
      bd~nt_pric,                                                  " Satış Fiyatı
      bd~vp_amnt,                                                  " Sipariş Kalemi Tutarı
      bd~tx_amnt,                                                  " Sipariş KDV Tutarı
      bd~kd_quan,                                                  " Fiyatlandırma Miktarı
      bd~fk_amnt,                                                  " Fatura Üzerindeki Tutar
      bd~waerk,                                                    " Para Birimi
      bd~waerk AS cwaer,                                           " Belge Para Birimi
      bd~bukrs,                                                    " Şirket
      bd~vkorg,                                                    " Satış Organizasyonu
      bd~vtweg,                                                    " Dağıtım Kanalı
      bd~spart,                                                    " Bölüm
      bu~butxt AS bukrs_x,                                         " Şirket Adı
      tvkot~vtext AS vkorg_x,                                      " Satış Organizasyonu Ad
      tvtwt~vtext AS vtweg_x,                                      " Dağıtım Kanalı Ad
      tspat~vtext AS spart_x,                                      " Bölüm Ad
      bd~vkbur,                                                    " Satış Bürosu
      sb~bezei AS vkbur_x,                                         " Satış Bürosu Adı
      bd~vkgrp,                                                    " Satış Grubu
      sg~bezei AS vkgrp_x,                                         " Satış Grubu Adı
      bd~bzirk,                                                    " Satış Bölgesi
      bz~bztxt AS bzirk_x,                                         " Satış Bölgesi Adı
      bd~vstel,                                                    " Sevkiyat Noktası
      bd~werks,                                                    " Üretim Yeri
      bd~lgort,                                                    " Depo Yeri
      tv~vtext AS vstel_x,                                         " Sevkiyat Noktası Adı
      tw~name1 AS werks_x,                                         " Üretim Yeri Adı
      tl~lgobe AS lgort_x,                                         " Depo Yeri Adı
      bd~kdgrp,                                                    " Müşteri Grubu
      kg~ktext AS kdgrp_x,                                         " Müşteri Grubu Adı
      bd~kunnr,                                                    " Sipariş Veren
      bd~kunre,                                                    " Fatura Edilen
      bd~kunrg,                                                    " Ödeme Yapan
      bd~kunwe,                                                    " Malı Teslim Alan
      bd~parvw,                                                    " Rol
      tp~vtext AS parvw_x,                                         " Rol Adı
      bd~partn,                                                    " Rol Muhatabı
      concat_with_space( bpvw~name1, bpvw~name2, 1 ) AS partn_x,   " Rol Muahatabı Adı
      concat_with_space( bpsv~name1, bpsv~name2, 1 ) AS kunnr_x,   " Sipariş Veren
      bd~ktokd,                                                    " Müşteri Hesap Grubu
      ko~txt30 AS ktokd_x,                                         " Müşteri Hesap Grubu Tanımı
      bd~bpvip,                                                    " Müşteri VIP
      bd~bpunw,                                                    " Müşteri İstenmeyen
      bd~bpblk,                                                    " Müşteri Bloke
      bd~ktgrd,                                                    " Müşteri Hesap Tayin Grubu
      pk~vtext AS ktgrd_x,                                         " Müşteri Hesap Tayin Grubu Tanımı
      bd~konda,                                                    " Müşteri Fiyat Grubu
      pg~vtext AS konda_x,                                         " Müşteri Fiyat Grubu Tanımı
      concat_with_space( bpft~name1, bpft~name2, 1 ) AS kunre_x,   " Fatura Edilen
      concat_with_space( bprg~name1, bprg~name2, 1 ) AS kunrg_x,   " Ödeme Yapan
      concat_with_space( bpmt~name1, bpmt~name2, 1 ) AS kunwe_x,   " Malı Teslim Alan
      " Malı Teslim Alan Adres
      concat_with_space( concat_with_space( concat_with_space( concat_with_space( concat_with_space( admt~street,admt~str_suppl1,1 ),admt~str_suppl2,1 ),admt~str_suppl3,1 ),admt~location,1 ),admt~city2,1 ) AS we_adrs,
      admt~city1 AS we_city,                " Yerleşim Yeri (İlçe)
      admt~post_code1 AS we_pstc,           " Posta Kodu
      admt~region AS we_regi,               " İl Kodu
      ctmt~bezei AS we_regn,                " İl Adı
      cnmt~landx AS we_cnty,                " Ülke Adı
      bd~augru,                             " Sipariş Nedeni
      tu~bezei AS augru_x,                  " Sipariş Nedeni Tanımı
      bd~abgru,                             " Ret Nedeni
      tg~bezei AS abgru_x                   " Ret Nedeni Tanımı

      FROM @gt_base_data AS bd

      " Şirket Adı
      LEFT JOIN t001 AS bu
             ON bu~bukrs EQ bd~bukrs
      " Ödeme koşulu tanımı
      LEFT JOIN t052u AS ztb
             ON ztb~spras   EQ @sy-langu
            AND ztb~zterm   EQ bd~zterm
      " Satış Belge Türü Adı
      LEFT JOIN tvakt AS bt
             ON bt~spras EQ @sy-langu
            AND bt~auart EQ bd~auart
      " Satış Bürosu Adı
      LEFT JOIN tvkbt AS sb
             ON sb~spras EQ @sy-langu
            AND sb~vkbur EQ bd~vkbur
      " Satış Grubu Adı
      LEFT JOIN tvgrt AS sg
             ON sg~spras EQ @sy-langu
            AND sg~vkgrp EQ bd~vkgrp
      " Satış Bölgesi
      LEFT JOIN t171t AS bz
             ON bz~spras EQ @sy-langu
            AND bz~bzirk EQ bd~bzirk
      " Malzeme Verileri
      LEFT JOIN mara  AS ma
             ON ma~matnr  EQ bd~matnr
      " Malzeme Metni
      LEFT JOIN makt  AS mt
             ON mt~matnr  EQ bd~matnr
            AND mt~spras  EQ @sy-langu
      " Mal Grubu Adı
      LEFT JOIN t023t AS mg
             ON mg~spras  EQ @sy-langu
            AND mg~matkl  EQ bd~matkl
      " Malzeme Türü Adı
      LEFT JOIN t134t AS mr
             ON mr~spras  EQ @sy-langu
            AND mr~mtart  EQ bd~mtart
      " Malzeme Hesap Tayin Grubu
      LEFT JOIN tvkmt AS tk
             ON tk~spras = @sy-langu
            AND tk~ktgrm EQ bd~ktgrm
      " Kullanım Süresi Tanımı
      LEFT JOIN tvlvt
             ON tvlvt~abrvw = bd~vkaus
            AND tvlvt~spras = @sy-langu
      " Malzeme Grubu
      LEFT JOIN tvm1t AS mg1
             ON mg1~spras EQ @sy-langu
            AND mg1~mvgr1 EQ bd~mvgr1
      LEFT JOIN tvm2t AS mg2
             ON mg2~spras EQ @sy-langu
            AND mg2~mvgr2 EQ bd~mvgr2
      LEFT JOIN tvm3t AS mg3
             ON mg3~spras EQ @sy-langu
            AND mg3~mvgr3 EQ bd~mvgr3
      LEFT JOIN tvm4t AS mg4
             ON mg4~spras EQ @sy-langu
            AND mg4~mvgr4 EQ bd~mvgr4
      LEFT JOIN tvm5t AS mg5
             ON mg5~spras EQ @sy-langu
            AND mg5~mvgr5 EQ bd~mvgr5
      " Müşteri Grubu
      LEFT JOIN t151t AS kg
             ON kg~spras EQ @sy-langu
            AND kg~kdgrp EQ bd~kdgrp
      " Muhatap
      LEFT JOIN kna1 AS bpsv
             ON bpsv~kunnr EQ bd~kunnr
      LEFT JOIN kna1 AS bpft
             ON bpft~kunnr EQ bd~kunre
      LEFT JOIN kna1 AS bprg
             ON bprg~kunnr EQ bd~kunrg
      LEFT JOIN kna1 AS bpmt
             ON bpmt~kunnr EQ bd~kunwe
      " Rol Adı
      LEFT JOIN tpart AS tp
             ON tp~spras EQ @sy-langu
            AND tp~parvw EQ bd~parvw
      " Rol Muhatabı Adı
      LEFT JOIN kna1 AS bpvw
             ON bpvw~kunnr EQ bd~partn
      " Müşteri Hesap Grubu
      LEFT JOIN t077x AS ko
             ON ko~spras EQ @sy-langu
            AND ko~ktokd EQ bd~ktokd
      " Müşteri Hesap Tayin Grubu Tanımı
      LEFT JOIN tvktt AS pk
             ON pk~spras EQ @sy-langu
            AND pk~ktgrd EQ bd~ktgrd
      " Müşteri Fiyat Grubu Tanımı
      LEFT JOIN t188t AS pg
             ON pg~spras EQ @sy-langu
            AND pg~konda EQ bd~konda
      " Adres kodları
      LEFT JOIN adrc AS admt
             ON admt~addrnumber EQ bpmt~adrnr
      " Şehir
      LEFT JOIN t005u AS ctmt
             ON ctmt~spras  EQ @sy-langu
            AND ctmt~land1  EQ admt~country
            AND ctmt~bland  EQ admt~region
      " Ülke
      LEFT JOIN t005t AS cnmt
             ON cnmt~spras  EQ @sy-langu
            AND cnmt~land1  EQ admt~country
      " Satış Organizasyonu
      LEFT JOIN tvkot
             ON tvkot~spras EQ @sy-langu
            AND tvkot~vkorg EQ bd~vkorg
      LEFT JOIN tvtwt
             ON tvtwt~spras EQ @sy-langu
            AND tvtwt~vtweg EQ bd~vtweg
      LEFT JOIN tspat
             ON tspat~spras EQ @sy-langu
            AND tspat~spart EQ bd~spart
      " Üretim Yeri
      LEFT JOIN t001w AS tw
             ON tw~werks   EQ bd~werks
            AND tw~spras   EQ @sy-langu
      " Depo Yeri
      LEFT JOIN t001l AS tl
             ON tl~werks   EQ bd~werks
            AND tl~lgort   EQ bd~lgort
      " Sevkiyat Noktası
      LEFT JOIN tvstt AS tv
             ON tv~spras   EQ @sy-langu
            AND tv~vstel   EQ bd~vstel
      " Sipariş Nedeni Tanımı
      LEFT JOIN tvaut AS tu
             ON tu~spras   EQ @sy-langu
            AND tu~augru   EQ bd~augru
      " Ret Nedeni Tanımı
      LEFT JOIN tvagt AS tg
             ON tg~spras   EQ @sy-langu
            AND tg~abgru   EQ bd~abgru
      " Genel durum tanımı
      LEFT JOIN dd07t AS st
             ON st~domname    EQ 'STATV'
            AND st~valpos     EQ bd~wbsta
            AND st~ddlanguage EQ @sy-langu

     WHERE  bd~charg       IN @s_charg
       AND  bd~bwtar       IN @s_bwtar

       INTO CORRESPONDING FIELDS OF TABLE @gt_main_data.

  ENDMETHOD.



  METHOD get_formatted_data.

    DATA z_field TYPE string.

    rd_result = abap_true.

    " Sorts
    IF p_xval IS NOT INITIAL.

      z_field = VALUE #( gt_fieldlist[ isgrp = p_xval ]-fname OPTIONAL ).
      SORT gt_main_data BY (z_field) AS TEXT.

      LOOP AT gt_main_data ASSIGNING FIELD-SYMBOL(<fs_itab_group>)
                                      GROUP BY ( level = ret_group_level( i_ls_value = <fs_itab_group> iv_level = z_field )
                                                 size  = GROUP SIZE
                                                 index = GROUP INDEX )
                                      ASCENDING
                                      REFERENCE INTO DATA(sheet_group).

        LOOP AT GROUP sheet_group ASSIGNING FIELD-SYMBOL(<fs_group_item>).
          <fs_group_item>-sheet = sheet_group->index.
        ENDLOOP.

      ENDLOOP.

      IF p_asde IS INITIAL .

        CASE p_sort.
          WHEN '1'. SORT gt_main_data BY sheet vbeln posnr ttype lfbel lfpos fkbel fkpos.   " Sipariş Numarası
          WHEN '2'. SORT gt_main_data BY sheet erdat erzet .                                " Yaratma Tarihi
          WHEN '3'. SORT gt_main_data BY sheet audat ttype lfbel lfpos fkbel fkpos.         " Sipariş Tarihi
          WHEN '4'. SORT gt_main_data BY sheet lfdat lfbel lfpos .                          " Teslim Tarihi
          WHEN '5'. SORT gt_main_data BY sheet fkdat fkbel fkpos.                           " Fatura Tarihi
          WHEN OTHERS. SORT gt_main_data BY sheet.
        ENDCASE.
      ELSE.
        CASE p_sort.
          WHEN '1'. SORT gt_main_data BY sheet ASCENDING vbeln DESCENDING posnr ttype lfbel lfpos fkbel fkpos.
          WHEN '2'. SORT gt_main_data BY sheet ASCENDING erdat DESCENDING erzet DESCENDING.
          WHEN '3'. SORT gt_main_data BY sheet ASCENDING audat DESCENDING ttype lfbel lfpos fkbel fkpos.
          WHEN '4'. SORT gt_main_data BY sheet ASCENDING lfdat DESCENDING lfbel DESCENDING lfpos DESCENDING.
          WHEN '5'. SORT gt_main_data BY sheet ASCENDING fkdat DESCENDING fkbel DESCENDING fkpos.
        ENDCASE.
      ENDIF.

    ELSE.

      IF p_asde IS INITIAL .
        CASE p_sort.
          WHEN '1'. SORT gt_main_data BY vbeln posnr ttype lfbel lfpos fkbel fkpos.         " Sipariş Numarası
          WHEN '2'. SORT gt_main_data BY erdat erzet .                                      " Yaratma Tarihi
          WHEN '3'. SORT gt_main_data BY audat ttype lfbel lfpos fkbel fkpos.               " Sipariş Tarihi
          WHEN '4'. SORT gt_main_data BY lfdat lfbel lfpos .                                " Teslim Tarihi
          WHEN '5'. SORT gt_main_data BY fkdat fkbel fkpos.                                 " Fatura Tarihi
        ENDCASE.
      ELSE.
        CASE p_sort.
          WHEN '1'. SORT gt_main_data BY vbeln DESCENDING posnr ttype lfbel lfpos fkbel fkpos.
          WHEN '2'. SORT gt_main_data BY erdat DESCENDING erzet DESCENDING.
          WHEN '3'. SORT gt_main_data BY audat DESCENDING ttype lfbel lfpos fkbel fkpos.
          WHEN '4'. SORT gt_main_data BY lfdat DESCENDING lfbel DESCENDING lfpos DESCENDING.
          WHEN '5'. SORT gt_main_data BY fkdat DESCENDING fkbel DESCENDING fkpos.
        ENDCASE.
      ENDIF.

    ENDIF.


    DATA: lv_menge TYPE ekpo-menge,
          lv_subrc TYPE sy-subrc.

    DATA: lv_date   TYPE sydate,
          lv_time   TYPE syuzeit,
          lv_date_s TYPE i,
          lv_time_s TYPE i,
          lv_time_d TYPE syuzeit,
          lv_result TYPE p DECIMALS 3.

    DATA: cur_date TYPE sydate.
    DATA: ein_cur  TYPE kurrf.
    DATA: con_cur  TYPE kurrf.
    DATA: week_num(6) TYPE n.

    IF p_mein IS NOT INITIAL. gv_mng_cnv_all = abap_true. ENDIF.
    IF p_wahr IS NOT INITIAL. gv_amt_cnv_all = abap_true. ENDIF.

    LOOP AT gt_main_data ASSIGNING FIELD-SYMBOL(<fs_items>).

      <fs_items>-hiera = 1.

      IF gv_iso_week EQ 'X'.
        IF <fs_items>-audat IS NOT INITIAL.

        ENDIF.
        IF <fs_items>-fkdat IS NOT INITIAL.

        ENDIF.
      ELSE.
        IF <fs_items>-audat IS NOT INITIAL.
          CALL FUNCTION 'DATE_GET_WEEK'
            EXPORTING
              date = <fs_items>-audat
            IMPORTING
              week = week_num.
          <fs_items>-vkwek = week_num.
        ENDIF.
        IF <fs_items>-fkdat IS NOT INITIAL.
          CALL FUNCTION 'DATE_GET_WEEK'
            EXPORTING
              date = <fs_items>-fkdat
            IMPORTING
              week = week_num.
          <fs_items>-fkwek = week_num.
        ENDIF.
      ENDIF.

      CASE <fs_items>-ttype.
        WHEN 'D'.  <fs_items>-ttype = VALUE #( gt_textlist[ sym = 'TLF' ]-text OPTIONAL ).
        WHEN 'I'.  <fs_items>-ttype = VALUE #( gt_textlist[ sym = 'TFK' ]-text OPTIONAL ).
        WHEN 'DB'. <fs_items>-ttype = VALUE #( gt_textlist[ sym = 'TLB' ]-text OPTIONAL ).
        WHEN 'IB'. <fs_items>-ttype = VALUE #( gt_textlist[ sym = 'TFB' ]-text OPTIONAL ).
        WHEN 'OI'. <fs_items>-ttype = VALUE #( gt_textlist[ sym = 'TOI' ]-text OPTIONAL ).
      ENDCASE.

      CASE <fs_items>-fkdat+4(2).
        WHEN '01'. <fs_items>-gmont = VALUE #( gt_textlist[ sym = 'P01' ]-text OPTIONAL ).
        WHEN '02'. <fs_items>-gmont = VALUE #( gt_textlist[ sym = 'P02' ]-text OPTIONAL ).
        WHEN '03'. <fs_items>-gmont = VALUE #( gt_textlist[ sym = 'P03' ]-text OPTIONAL ).
        WHEN '04'. <fs_items>-gmont = VALUE #( gt_textlist[ sym = 'P04' ]-text OPTIONAL ).
        WHEN '05'. <fs_items>-gmont = VALUE #( gt_textlist[ sym = 'P05' ]-text OPTIONAL ).
        WHEN '06'. <fs_items>-gmont = VALUE #( gt_textlist[ sym = 'P06' ]-text OPTIONAL ).
        WHEN '07'. <fs_items>-gmont = VALUE #( gt_textlist[ sym = 'P07' ]-text OPTIONAL ).
        WHEN '08'. <fs_items>-gmont = VALUE #( gt_textlist[ sym = 'P08' ]-text OPTIONAL ).
        WHEN '09'. <fs_items>-gmont = VALUE #( gt_textlist[ sym = 'P09' ]-text OPTIONAL ).
        WHEN '10'. <fs_items>-gmont = VALUE #( gt_textlist[ sym = 'P10' ]-text OPTIONAL ).
        WHEN '11'. <fs_items>-gmont = VALUE #( gt_textlist[ sym = 'P11' ]-text OPTIONAL ).
        WHEN '12'. <fs_items>-gmont = VALUE #( gt_textlist[ sym = 'P12' ]-text OPTIONAL ).
      ENDCASE .

      CASE <fs_items>-fkdat+4(2).
        WHEN '01' OR '02' OR '03'. <fs_items>-gquar = VALUE #( gt_textlist[ sym = 'Q01' ]-text OPTIONAL ).
        WHEN '04' OR '05' OR '06'. <fs_items>-gquar = VALUE #( gt_textlist[ sym = 'Q02' ]-text OPTIONAL ).
        WHEN '07' OR '08' OR '09'. <fs_items>-gquar = VALUE #( gt_textlist[ sym = 'Q03' ]-text OPTIONAL ).
        WHEN '10' OR '11' OR '12'. <fs_items>-gquar = VALUE #( gt_textlist[ sym = 'Q04' ]-text OPTIONAL ).
      ENDCASE .

      IF <fs_items>-fk_quan EQ 0 AND <fs_items>-fk_bqua EQ 0 AND <fs_items>-lf_quan EQ 0 AND <fs_items>-lf_bqua EQ 0.
        <fs_items>-tstat = VALUE #( gt_textlist[ sym = 'S01' ]-text OPTIONAL ).
      ELSEIF <fs_items>-fkbel IS NOT INITIAL AND <fs_items>-belnr IS INITIAL.
        <fs_items>-tstat = VALUE #( gt_textlist[ sym = 'S02' ]-text OPTIONAL ).
      ELSEIF <fs_items>-lfbel IS NOT INITIAL AND <fs_items>-mblnr IS INITIAL.
        <fs_items>-tstat = VALUE #( gt_textlist[ sym = 'S03' ]-text OPTIONAL ).
      ELSEIF <fs_items>-ag_amnt EQ <fs_items>-fk_amnt.
        <fs_items>-tstat = VALUE #( gt_textlist[ sym = 'S04' ]-text OPTIONAL ).
      ELSEIF <fs_items>-ag_amnt GT 0.
        <fs_items>-tstat = VALUE #( gt_textlist[ sym = 'S05' ]-text OPTIONAL ).
      ELSEIF <fs_items>-fk_quan EQ <fs_items>-tm_quan.
        <fs_items>-tstat = VALUE #( gt_textlist[ sym = 'S06' ]-text OPTIONAL ).
      ELSEIF <fs_items>-fk_quan GT 0.
        <fs_items>-tstat = VALUE #( gt_textlist[ sym = 'S07' ]-text OPTIONAL ).
      ELSEIF <fs_items>-fk_quan EQ 0 AND <fs_items>-fk_wqua GT 0.
        <fs_items>-tstat = VALUE #( gt_textlist[ sym = 'S08' ]-text OPTIONAL ).
      ELSEIF <fs_items>-lf_quan EQ <fs_items>-tm_quan.
        <fs_items>-tstat = VALUE #( gt_textlist[ sym = 'S09' ]-text OPTIONAL ).
      ELSEIF <fs_items>-lf_quan GT 0.
        <fs_items>-tstat = VALUE #( gt_textlist[ sym = 'S10' ]-text OPTIONAL ).
      ELSEIF <fs_items>-lf_quan EQ 0 AND <fs_items>-lf_bqua GT 0.
        <fs_items>-tstat = VALUE #( gt_textlist[ sym = 'S11' ]-text OPTIONAL ).
      ELSE.
        <fs_items>-tstat = ' '.
      ENDIF .

      " Vergiler Dahil Fiyat
      <fs_items>-nt_txpr = <fs_items>-nt_pric .

      " Tutar
      IF <fs_items>-tm_quan NE 0 AND <fs_items>-vp_quan NE 0 AND <fs_items>-vp_amnt NE 0.
        <fs_items>-tm_amnt = <fs_items>-tm_quan  / <fs_items>-vp_quan * ( <fs_items>-vp_amnt + <fs_items>-tx_amnt ).  " Termin Tutarı
        <fs_items>-lf_amnt = <fs_items>-lf_quan  / <fs_items>-vp_quan * ( <fs_items>-vp_amnt + <fs_items>-tx_amnt ).  " Teslim Tutarı
        <fs_items>-lf_bamn = <fs_items>-lf_bqua  / <fs_items>-vp_quan * ( <fs_items>-vp_amnt + <fs_items>-tx_amnt ).  " Teslim Bakiye Tutarı
        <fs_items>-fk_amnt = <fs_items>-fk_quan  / <fs_items>-vp_quan * ( <fs_items>-vp_amnt + <fs_items>-tx_amnt ).  " Fatura Tutarı
        <fs_items>-fk_bamn = <fs_items>-fk_bqua  / <fs_items>-vp_quan * ( <fs_items>-vp_amnt + <fs_items>-tx_amnt ).  " Fatura Bakiye Tutarı
        <fs_items>-fk_wamn = <fs_items>-fk_wqua  / <fs_items>-vp_quan * ( <fs_items>-vp_amnt + <fs_items>-tx_amnt ).  " Fatura Bekleyen Tutar
      ENDIF.

      " Termin Vergi Tutarları
      IF <fs_items>-tm_quan NE 0 AND <fs_items>-vp_quan NE 0.
        IF <fs_items>-tx_amnt NE 0 .
          <fs_items>-tx_amnt = <fs_items>-tm_quan / <fs_items>-vp_quan * <fs_items>-tx_amnt.
        ENDIF.
      ENDIF.

      <fs_items>-fk_totl = <fs_items>-fk_amnt + <fs_items>-tx_amnt.

      IF <fs_items>-augbl IS NOT INITIAL.
        <fs_items>-ag_amnt = <fs_items>-fk_totl.
      ELSE.
        IF <fs_items>-belnr IS NOT INITIAL AND <fs_items>-shkzg NE 'X'.
          <fs_items>-ag_bamn = <fs_items>-fk_totl.
        ENDIF.
      ENDIF.

      " ikincil alanlara değerleri ata
      <fs_items>-nt_pric_2 = <fs_items>-nt_pric.
      <fs_items>-nt_txpr_2 = <fs_items>-nt_txpr.
      <fs_items>-fk_amnt_2 = <fs_items>-fk_amnt.
      <fs_items>-fk_totl_2 = <fs_items>-fk_totl.


      ein_cur = 1.

      IF p_wah2 IS NOT INITIAL.

        CASE p_cur2.
          WHEN '01'. cur_date = <fs_items>-audat.
          WHEN '02'. cur_date = <fs_items>-lfdat.
          WHEN '03'. cur_date = <fs_items>-fkdat.
          WHEN '04'. cur_date = <fs_items>-prsdt.
          WHEN '05'. cur_date = <fs_items>-augdt.
          WHEN '06'. cur_date = sy-datum.
        ENDCASE.

        IF cur_date IS NOT INITIAL AND <fs_items>-cwaer NE p_wah2.

          con_cur = 0.
          CALL FUNCTION 'CONVERT_TO_LOCAL_CURRENCY'
            EXPORTING
              date             = cur_date
              foreign_amount   = ein_cur
              foreign_currency = <fs_items>-cwaer
              local_currency   = p_wah2
              type_of_rate     = 'M'
            IMPORTING
              local_amount     = con_cur
            EXCEPTIONS
              no_rate_found    = 1
              overflow         = 2
              no_factors_found = 3
              no_spread_found  = 4
              derived_2_times  = 5
              OTHERS           = 6.

          IF sy-subrc <> 0.
            gv_amt_cnv_all = abap_false.
          ENDIF.

          <fs_items>-nt_pric_2 = <fs_items>-nt_pric_2 * con_cur.    " Satış Fiyat
          <fs_items>-nt_txpr_2 = <fs_items>-nt_txpr_2 * con_cur.    " Vergili Satış Fiyat
          <fs_items>-fk_amnt_2 = <fs_items>-fk_amnt_2 * con_cur.    " Fatura Tutarı
          <fs_items>-fk_totl_2 = <fs_items>-fk_totl_2 * con_cur.    " Fatura Vergiler Dahil Toplam Tutar

        ENDIF.

        <fs_items>-waerk_2 = p_wah2.

      ENDIF.


      IF p_wahr IS NOT INITIAL.

        CASE p_cur1.
          WHEN '01'. cur_date = <fs_items>-audat.
          WHEN '02'. cur_date = <fs_items>-lfdat.
          WHEN '03'. cur_date = <fs_items>-fkdat.
          WHEN '04'. cur_date = <fs_items>-prsdt.
          WHEN '05'. cur_date = <fs_items>-augdt.
          WHEN '06'. cur_date = sy-datum.
        ENDCASE.

        IF cur_date IS NOT INITIAL AND <fs_items>-cwaer NE p_wahr.

          con_cur = 0.
          CALL FUNCTION 'CONVERT_TO_LOCAL_CURRENCY'
            EXPORTING
              date             = cur_date
              foreign_amount   = ein_cur
              foreign_currency = <fs_items>-cwaer
              local_currency   = p_wahr
              type_of_rate     = 'M'
            IMPORTING
              local_amount     = con_cur
            EXCEPTIONS
              no_rate_found    = 1
              overflow         = 2
              no_factors_found = 3
              no_spread_found  = 4
              derived_2_times  = 5
              OTHERS           = 6.

          IF sy-subrc <> 0.
             gv_amt_cnv_all = abap_false.
          ENDIF.

          <fs_items>-nt_pric  = <fs_items>-nt_pric  * con_cur.    " Satış Fiyat
          <fs_items>-nt_txpr  = <fs_items>-nt_txpr  * con_cur.    " Vergili Satış Fiyat
          <fs_items>-tx_amnt  = <fs_items>-tx_amnt  * con_cur.    " KDV Tutarı
          <fs_items>-tm_amnt  = <fs_items>-tm_amnt  * con_cur.    " Termin Tutarı
          <fs_items>-lf_amnt  = <fs_items>-lf_amnt  * con_cur.    " Teslim Tutarı
          <fs_items>-lf_bamn  = <fs_items>-lf_bamn  * con_cur.    " Teslim Bakiye Tutarı
          <fs_items>-fk_amnt  = <fs_items>-fk_amnt  * con_cur.    " Fatura Tutarı
          <fs_items>-fk_bamn  = <fs_items>-fk_bamn  * con_cur.    " Fatura Bakiye Tutarı
          <fs_items>-fk_totl  = <fs_items>-fk_totl  * con_cur.    " Fatura Vergiler Dahil Toplam Tutar
          <fs_items>-ag_amnt  = <fs_items>-ag_amnt  * con_cur.    " Denkleştirme Tutarı
          <fs_items>-ag_bamn  = <fs_items>-ag_bamn  * con_cur.    " Denkleştirme Bakiyesi

        ENDIF.

        <fs_items>-waerk = p_wahr.

      ENDIF.


      " Kur Farkı
      <fs_items>-ec_amnt = <fs_items>-fk_amnt_2 - <fs_items>-fk_amnt.
      <fs_items>-ec_tamn = <fs_items>-fk_totl_2 - <fs_items>-fk_totl.


      " Miktar Dönüşümleri
      IF p_mein IS NOT INITIAL.
        IF <fs_items>-vrkme NE p_mein.
          lv_menge = 1.
          IF lv_menge NE 0.
            CALL FUNCTION 'MD_CONVERT_MATERIAL_UNIT'
              EXPORTING
                i_matnr              = <fs_items>-matnr
                i_in_me              = <fs_items>-cvrkm
                i_out_me             = p_mein
                i_menge              = lv_menge
              IMPORTING
                e_menge              = lv_menge
              EXCEPTIONS
                error_in_application = 1
                error                = 2
                OTHERS               = 3.
          ENDIF.
          IF sy-subrc EQ 0.
            <fs_items>-vrkme  = p_mein.
            <fs_items>-tm_quan  =  <fs_items>-tm_quan  *  lv_menge.
            <fs_items>-lf_quan  =  <fs_items>-lf_quan  *  lv_menge.
            <fs_items>-lf_bqua  =  <fs_items>-lf_bqua  *  lv_menge.
            <fs_items>-wa_quan  =  <fs_items>-wa_quan  *  lv_menge.
            <fs_items>-wa_bqua  =  <fs_items>-wa_bqua  *  lv_menge.
            <fs_items>-fk_quan  =  <fs_items>-fk_quan  *  lv_menge.
            <fs_items>-fk_bqua  =  <fs_items>-fk_bqua  *  lv_menge.
            <fs_items>-fk_wqua  =  <fs_items>-fk_wqua  *  lv_menge.
            <fs_items>-vp_quan  =  <fs_items>-vp_quan  *  lv_menge.

            IF p_cprc EQ 'X'.
              <fs_items>-nt_pric  =  <fs_items>-nt_pric  /  lv_menge.
              <fs_items>-nt_txpr  =  <fs_items>-nt_txpr  /  lv_menge.
              <fs_items>-nt_pric_2 =  <fs_items>-nt_pric_2  /  lv_menge.
              <fs_items>-nt_txpr_2 =  <fs_items>-nt_txpr_2  /  lv_menge.
            ENDIF.

          ELSE.
            gv_mng_cnv_all = abap_false.
          ENDIF.
        ENDIF.
      ENDIF.

      " Tanım alanları kod ile
      IF p_nolb EQ 'Y'.
        <fs_items>-auart_x  =  condense( <fs_items>-auart  ) && | - | && <fs_items>-auart_x .
        <fs_items>-maktx    =  condense( <fs_items>-matnr  ) && | - | && <fs_items>-maktx   .
        <fs_items>-wgbez    =  condense( <fs_items>-matkl  ) && | - | && <fs_items>-wgbez   .
        <fs_items>-zterm_x  =  condense( <fs_items>-zterm  ) && | - | && <fs_items>-zterm_x .
        <fs_items>-vkorg_x  =  condense( <fs_items>-vkorg  ) && | - | && <fs_items>-vkorg_x .
        <fs_items>-vtweg_x  =  condense( <fs_items>-vtweg  ) && | - | && <fs_items>-vtweg_x .
        <fs_items>-spart_x  =  condense( <fs_items>-spart  ) && | - | && <fs_items>-spart_x .
        <fs_items>-vkbur_x  =  condense( <fs_items>-vkbur  ) && | - | && <fs_items>-vkbur_x .
        <fs_items>-vkgrp_x  =  condense( <fs_items>-vkgrp  ) && | - | && <fs_items>-vkgrp_x .
        <fs_items>-bzirk_x  =  condense( <fs_items>-bzirk  ) && | - | && <fs_items>-bzirk_x .
        <fs_items>-kdgrp_x  =  condense( <fs_items>-kdgrp  ) && | - | && <fs_items>-kdgrp_x .
        <fs_items>-vstel_x  =  condense( <fs_items>-vstel  ) && | - | && <fs_items>-vstel_x .
        <fs_items>-werks_x  =  condense( <fs_items>-werks  ) && | - | && <fs_items>-werks_x .
        <fs_items>-lgort_x  =  condense( <fs_items>-lgort  ) && | - | && <fs_items>-lgort_x .
        <fs_items>-kunnr_x  =  condense( <fs_items>-kunnr  ) && | - | && <fs_items>-kunnr_x .
        <fs_items>-ktokd_x  =  condense( <fs_items>-ktokd  ) && | - | && <fs_items>-ktokd_x .
        <fs_items>-ktgrd_x  =  condense( <fs_items>-ktgrd  ) && | - | && <fs_items>-ktgrd_x .
        <fs_items>-konda_x  =  condense( <fs_items>-konda  ) && | - | && <fs_items>-konda_x .
        <fs_items>-kunwe_x  =  condense( <fs_items>-kunwe  ) && | - | && <fs_items>-kunwe_x .
        <fs_items>-kunre_x  =  condense( <fs_items>-kunre  ) && | - | && <fs_items>-kunre_x .
        <fs_items>-kunrg_x  =  condense( <fs_items>-kunrg  ) && | - | && <fs_items>-kunrg_x .
        <fs_items>-parvw_x  =  condense( <fs_items>-parvw  ) && | - | && <fs_items>-parvw_x .
        <fs_items>-partn_x  =  condense( <fs_items>-partn  ) && | - | && <fs_items>-partn_x .
        <fs_items>-ktgrm_x  =  condense( <fs_items>-ktgrm  ) && | - | && <fs_items>-ktgrm_x .
        <fs_items>-mvgr1_x  =  condense( <fs_items>-mvgr1  ) && | - | && <fs_items>-mvgr1_x .
        <fs_items>-mvgr2_x  =  condense( <fs_items>-mvgr2  ) && | - | && <fs_items>-mvgr2_x .
        <fs_items>-mvgr3_x  =  condense( <fs_items>-mvgr3  ) && | - | && <fs_items>-mvgr3_x .
        <fs_items>-mvgr4_x  =  condense( <fs_items>-mvgr4  ) && | - | && <fs_items>-mvgr4_x .
        <fs_items>-mvgr5_x  =  condense( <fs_items>-mvgr5  ) && | - | && <fs_items>-mvgr5_x .
        <fs_items>-vkaus_x  =  condense( <fs_items>-vkaus  ) && | - | && <fs_items>-vkaus_x .
        <fs_items>-we_regn  =  condense( <fs_items>-we_regi ) && | - | && <fs_items>-we_regn .
        <fs_items>-augru_x  =  condense( CONV string( <fs_items>-augru ) ) && | - | && <fs_items>-augru_x .
        <fs_items>-abgru_x  =  condense( CONV string( <fs_items>-abgru ) ) && | - | && <fs_items>-abgru_x .
      ENDIF.

    ENDLOOP.


    DATA lv_t_filter TYPE string.

    IF p_fld1a NE '' AND p_cnd1 NE '' AND ( ( p_fov1 EQ 'FIELD' AND p_fld1b NE '' ) OR ( p_fov1 EQ 'VALUE' )  ).

      LOOP AT gt_functions ASSIGNING FIELD-SYMBOL(<fs_functions>).
        REPLACE ALL OCCURRENCES OF <fs_functions>-modtext IN p_flt1b WITH <fs_functions>-modval.
        REPLACE ALL OCCURRENCES OF <fs_functions>-modtext IN p_flt2b WITH <fs_functions>-modval.
        REPLACE ALL OCCURRENCES OF <fs_functions>-modtext IN p_flt3b WITH <fs_functions>-modval.
        REPLACE ALL OCCURRENCES OF <fs_functions>-modtext IN p_flt4b WITH <fs_functions>-modval.
        REPLACE ALL OCCURRENCES OF <fs_functions>-modtext IN p_flt5b WITH <fs_functions>-modval.
      ENDLOOP.

      IF VALUE #( gt_allfields_text[ name = p_fld1a ]-type OPTIONAL ) EQ 'P'.
        REPLACE ALL OCCURRENCES OF ',' IN p_flt1b WITH '.'.
      ENDIF.
      IF VALUE #( gt_allfields_text[ name = p_fld2a ]-type OPTIONAL ) EQ 'P'.
        REPLACE ALL OCCURRENCES OF ',' IN p_flt2b WITH '.'.
      ENDIF.
      IF VALUE #( gt_allfields_text[ name = p_fld3a ]-type OPTIONAL ) EQ 'P'.
        REPLACE ALL OCCURRENCES OF ',' IN p_flt3b WITH '.'.
      ENDIF.
      IF VALUE #( gt_allfields_text[ name = p_fld4a ]-type OPTIONAL ) EQ 'P'.
        REPLACE ALL OCCURRENCES OF ',' IN p_flt4b WITH '.'.
      ENDIF.
      IF VALUE #( gt_allfields_text[ name = p_fld5a ]-type OPTIONAL ) EQ 'P'.
        REPLACE ALL OCCURRENCES OF ',' IN p_flt5b WITH '.'.
      ENDIF.

      IF p_case NE 'X'.
        IF VALUE #( gt_allfields_text[ name = p_fld1a ]-type OPTIONAL ) EQ 'C' AND p_fov1 EQ 'VALUE'.
          p_fld1a = |UPPER( t~| && p_fld1a && | )|.
          p_flt1b = to_upper( p_flt1b ).
        ELSE.
          p_fld1a = 't~' && p_fld1a.
        ENDIF.
        p_fld1b = 't~' && p_fld1b.

        IF VALUE #( gt_allfields_text[ name = p_fld2a ]-type OPTIONAL ) EQ 'C' AND p_fov2 EQ 'VALUE'.
          p_fld2a = |UPPER( t~| && p_fld2a && | )|.
          p_flt2b = to_upper( p_flt2b ).
        ELSE.
          p_fld2a = 't~' && p_fld2a.
        ENDIF.
        p_fld2b = 't~' && p_fld2b.

        IF VALUE #( gt_allfields_text[ name = p_fld3a ]-type OPTIONAL ) EQ 'C' AND p_fov3 EQ 'VALUE'.
          p_fld3a = | UPPER( t~| && p_fld3a && | ) |.
          p_flt3b = to_upper( p_flt3b ).
        ELSE.
          p_fld3a = 't~' && p_fld3a.
        ENDIF.
        p_fld3b = 't~' && p_fld3b.

        IF VALUE #( gt_allfields_text[ name = p_fld4a ]-type OPTIONAL ) EQ 'C' AND p_fov4 EQ 'VALUE'.
          p_fld4a = |UPPER( t~| && p_fld4a && | )|.
          p_flt4b = to_upper( p_flt4b ).
        ELSE.
          p_fld4a = 't~' && p_fld4a.
        ENDIF.
        p_fld4b = 't~' && p_fld4b.

        IF VALUE #( gt_allfields_text[ name = p_fld5a ]-type OPTIONAL ) EQ 'C' AND p_fov5 EQ 'VALUE'.
          p_fld5a = |UPPER( t~| && p_fld5a && | )|.
          p_flt5b = to_upper( p_flt5b ).
        ELSE.
          p_fld5a = 't~' && p_fld5a.
        ENDIF.
        p_fld5b = 't~' && p_fld5b.

      ELSE.
        p_fld1a = 't~' && p_fld1a.
        p_fld1b = 't~' && p_fld1b.
        p_fld2a = 't~' && p_fld2a.
        p_fld2b = 't~' && p_fld2b.
        p_fld3a = 't~' && p_fld3a.
        p_fld3b = 't~' && p_fld3b.
        p_fld4a = 't~' && p_fld4a.
        p_fld4b = 't~' && p_fld4b.
        p_fld5a = 't~' && p_fld5a.
        p_fld5b = 't~' && p_fld5b.
      ENDIF.


      REPLACE ALL OCCURRENCES OF '''' IN p_flt1b WITH ''''''.
      REPLACE ALL OCCURRENCES OF '''' IN p_flt2b WITH ''''''.
      REPLACE ALL OCCURRENCES OF '''' IN p_flt3b WITH ''''''.
      REPLACE ALL OCCURRENCES OF '''' IN p_flt4b WITH ''''''.
      REPLACE ALL OCCURRENCES OF '''' IN p_flt5b WITH ''''''.

      IF p_flt1b CA '*'.
        REPLACE ALL OCCURRENCES OF '%' IN p_flt1b WITH '#%'.
        REPLACE ALL OCCURRENCES OF '_' IN p_flt1b WITH '#_'.
        REPLACE ALL OCCURRENCES OF '*' IN p_flt1b WITH '%'.
        IF p_cnd1 NE '='.
          p_cnd1 = 'NOT LIKE'.
        ELSE.
          p_cnd1 = 'LIKE'.
        ENDIF.
      ENDIF.

      IF p_flt2b CA '*'.
        REPLACE ALL OCCURRENCES OF '%' IN p_flt2b WITH '#%'.
        REPLACE ALL OCCURRENCES OF '_' IN p_flt2b WITH '#_'.
        REPLACE ALL OCCURRENCES OF '*' IN p_flt2b WITH '%'.
        IF p_cnd2 NE '='.
          p_cnd2 = 'NOT LIKE'.
        ELSE.
          p_cnd2 = 'LIKE'.
        ENDIF.
      ENDIF.

      IF p_flt3b CA '*'.
        REPLACE ALL OCCURRENCES OF '%' IN p_flt3b WITH '#%'.
        REPLACE ALL OCCURRENCES OF '_' IN p_flt3b WITH '#_'.
        REPLACE ALL OCCURRENCES OF '*' IN p_flt3b WITH '%'.
        IF p_cnd3 NE '='.
          p_cnd3 = 'NOT LIKE'.
        ELSE.
          p_cnd3 = 'LIKE'.
        ENDIF.
      ENDIF.

      IF p_flt4b CA '*'.
        REPLACE ALL OCCURRENCES OF '%' IN p_flt4b WITH '#%'.
        REPLACE ALL OCCURRENCES OF '_' IN p_flt4b WITH '#_'.
        REPLACE ALL OCCURRENCES OF '*' IN p_flt4b WITH '%'.
        IF p_cnd4 NE '='.
          p_cnd4 = 'NOT LIKE'.
        ELSE.
          p_cnd4 = 'LIKE'.
        ENDIF.
      ENDIF.

      IF p_flt5b CA '*'.
        REPLACE ALL OCCURRENCES OF '%' IN p_flt5b WITH '#%'.
        REPLACE ALL OCCURRENCES OF '_' IN p_flt5b WITH '#_'.
        REPLACE ALL OCCURRENCES OF '*' IN p_flt5b WITH '%'.
        IF p_cnd5 NE '='.
          p_cnd5 = 'NOT LIKE'.
        ELSE.
          p_cnd5 = 'LIKE'.
        ENDIF.
      ENDIF.

      lv_t_filter = | ( (|.

      lv_t_filter = lv_t_filter && | | && p_fld1a && | | && p_cnd1.
      IF p_fov1 EQ 'FIELD'.
        lv_t_filter = lv_t_filter && | | && p_fld1b.
      ELSE.
        lv_t_filter = lv_t_filter && | '| && p_flt1b && |'|.
        IF p_flt1b CA '#%' OR p_flt1b CA '#_'.
          lv_t_filter = lv_t_filter && | ESCAPE '#'|.
        ENDIF.
      ENDIF.
      lv_t_filter = lv_t_filter && | )|.

      IF p_fld2a NE '' AND p_cnd2 NE '' AND ( ( p_fov2 EQ 'FIELD' AND p_fld2b NE '' ) OR ( p_fov2 EQ 'VALUE' )  ).
        lv_t_filter = lv_t_filter && | | && p_opt2 && | ( ( |.
        lv_t_filter = lv_t_filter && p_fld2a && | | && p_cnd2.
        IF p_fov2 EQ 'FIELD'.
          lv_t_filter = lv_t_filter && | | && p_fld2b.
        ELSE.
          lv_t_filter = lv_t_filter && | '| && p_flt2b && |'|.
          IF p_flt2b CA '#%' OR p_flt2b CA '#_'.
            lv_t_filter = lv_t_filter && | ESCAPE '#'|.
          ENDIF.
        ENDIF.
        lv_t_filter = lv_t_filter && | )|.

        IF p_fld3a NE '' AND p_cnd3 NE '' AND ( ( p_fov3 EQ 'FIELD' AND p_fld3b NE '' ) OR ( p_fov3 EQ 'VALUE' )  ).
          lv_t_filter = lv_t_filter && | | && p_opt3 && | ( |.
          lv_t_filter = lv_t_filter && p_fld3a && | | && p_cnd3.
          IF p_fov3 EQ 'FIELD'.
            lv_t_filter = lv_t_filter && | | && p_fld3b.
          ELSE.
            lv_t_filter = lv_t_filter && | '| && p_flt3b && |'|.
            IF p_flt3b CA '#%' OR p_flt3b CA '#_'.
              lv_t_filter = lv_t_filter && | ESCAPE '#'|.
            ENDIF.
            lv_t_filter = lv_t_filter && | )|.
          ENDIF.
        ENDIF.
        lv_t_filter = lv_t_filter && | )|.
      ENDIF.

      IF p_fld4a NE '' AND p_cnd4 NE '' AND ( ( p_fov4 EQ 'FIELD' AND p_fld4b NE '' ) OR ( p_fov4 EQ 'VALUE' )  ).
        lv_t_filter = lv_t_filter && | )|.
        lv_t_filter = lv_t_filter && | | && p_opt4 && | ( ( |.
        lv_t_filter = lv_t_filter && p_fld4a && | | && p_cnd4.
        IF p_fov4 EQ 'FIELD'.
          lv_t_filter = lv_t_filter && | | && p_fld4b.
        ELSE.
          lv_t_filter = lv_t_filter && | '| && p_flt4b && |'|.
          IF p_flt4b CA '#%' OR p_flt4b CA '#_'.
            lv_t_filter = lv_t_filter && | ESCAPE '#'|.
          ENDIF.
        ENDIF.
        lv_t_filter = lv_t_filter && | )|.

        IF p_fld5a NE '' AND p_cnd5 NE '' AND ( ( p_fov5 EQ 'FIELD' AND p_fld5b NE '' ) OR ( p_fov5 EQ 'VALUE' )  ).
          lv_t_filter = lv_t_filter && | | && p_opt5 && | ( |.
          lv_t_filter = lv_t_filter && p_fld5a && | | && p_cnd5.
          IF p_fov5 EQ 'FIELD'.
            lv_t_filter = lv_t_filter && | | && p_fld5b.
          ELSE.
            lv_t_filter = lv_t_filter && | '| && p_flt5b && |'|.
            IF p_flt5b CA '#%' OR p_flt5b CA '#_'.
              lv_t_filter = lv_t_filter && | ESCAPE '#'|.
            ENDIF.
          ENDIF.
          lv_t_filter = lv_t_filter && | )|.
        ENDIF.
      ENDIF.
      lv_t_filter = lv_t_filter && | )|.
    ENDIF.

    IF lv_t_filter IS NOT INITIAL.

      SELECT *
        FROM @gt_main_data AS t
       WHERE (lv_t_filter)
        INTO TABLE @DATA(new_data).

      gt_main_data[] = new_data[].

      REFRESH: new_data.

    ENDIF.



  ENDMETHOD.


  METHOD convert_to_group.

    DATA: lv_fields   TYPE string,
          lv_list     TYPE string,
          lv_aggrtype TYPE string.

    DATA sheet_max TYPE int4.
    DATA sort_loop TYPE int4.

    DATA(max_group) = 0.
    DATA(max_hiera) = 0.

    DATA m_name TYPE string.
    DATA a_name TYPE string.

    FIELD-SYMBOLS: <fs_cellcolor> TYPE lvc_s_scol.

    fill_choices( EXPORTING pv_only_fill = abap_true ).

    " Group data dynamic table
    DATA: lr_itab TYPE REF TO data.
    DATA: lr_table TYPE REF TO data.
    FIELD-SYMBOLS: <t_cellcolors> TYPE lvc_t_scol.
    FIELD-SYMBOLS: <gs_group_itab> TYPE STANDARD TABLE.

    gt_fcat = set_fieldcatalog( ).

    LOOP AT gt_fcat ASSIGNING FIELD-SYMBOL(<gs_fcat>).
      IF <gs_fcat>-inttype EQ 'P'.
        <gs_fcat>-outputlen = 30.
        <gs_fcat>-rollname = 'BAPICURR_D'.
        <gs_fcat>-datatype = 'DEC'.
        <gs_fcat>-intlen = 23.
        <gs_fcat>-domname = 'BAPICURR'.
        <gs_fcat>-decimals_o = 2.
        <gs_fcat>-dd_outlen = 30.
        <gs_fcat>-decimals = 4.
        <gs_fcat>-dd_roll = 'BAPICURR_D'.
      ENDIF.
    ENDLOOP.

    CALL METHOD cl_alv_table_create=>create_dynamic_table
      EXPORTING
        "   i_style_table             = 'X'
        it_fieldcatalog           = gt_fcat
      IMPORTING
        ep_table                  = lr_itab
      EXCEPTIONS
        generate_subpool_dir_full = 1
        OTHERS                    = 2.

    ASSIGN lr_itab->* TO <gs_group_itab>.


    gt_fcat = set_fieldcatalog( ).

    CALL METHOD cl_alv_table_create=>create_dynamic_table
      EXPORTING
        "   i_style_table             = 'X'
        it_fieldcatalog           = gt_fcat
      IMPORTING
        ep_table                  = lr_table
      EXCEPTIONS
        generate_subpool_dir_full = 1
        OTHERS                    = 2.

    ASSIGN lr_table->* TO <gs_group_data>.
    " --------------------------

    " Max grup
    LOOP AT gt_group_key_columns ASSIGNING FIELD-SYMBOL(<fs_group_key_columns>).
      max_group = <fs_group_key_columns>-grup.
    ENDLOOP.

    " Subtotal list
    DATA t_sub_list TYPE STANDARD TABLE OF i WITH EMPTY KEY.

    IF p_addt EQ 'X'.
      INSERT 1 INTO TABLE t_sub_list.
    ENDIF.
    IF p_addp EQ 'X'.
      LOOP AT s_subts ASSIGNING FIELD-SYMBOL(<f_subts>).
        DATA(add_group) = sy-tabix.
        IF p_addt EQ 'X'.
          add_group += 1.
        ENDIF.
        IF <f_subts>-high EQ 'X' AND add_group LT max_group.
          INSERT add_group INTO TABLE t_sub_list.
        ENDIF.
      ENDLOOP.
    ENDIF.
    INSERT max_group INTO TABLE t_sub_list.

    LOOP AT t_sub_list ASSIGNING FIELD-SYMBOL(<dumm>).
      max_hiera = sy-tabix.
      IF p_addt EQ 'X'.
        max_hiera -= 1.
      ENDIF.
    ENDLOOP.


    LOOP AT t_sub_list ASSIGNING FIELD-SYMBOL(<fs_sub>).

      CLEAR: lv_fields.
      CLEAR: lv_list.

      DATA(hiera) = sy-tabix.
      IF p_addt EQ 'X'.
        hiera -= 1.
      ENDIF.

      LOOP AT gt_group_key_columns ASSIGNING <fs_group_key_columns> WHERE grup <= <fs_sub>.
        IF lv_fields IS NOT INITIAL.
          lv_fields = |{ lv_fields }| & |, | & |{ <fs_group_key_columns>-fnam }|.
        ELSE.
          lv_fields =  <fs_group_key_columns>-fnam  .
        ENDIF.
      ENDLOOP.

      lv_list =  lv_fields.

      LOOP AT gt_group_key_columns ASSIGNING <fs_group_key_columns> WHERE grup <= <fs_sub> AND ikey = 'X'.
        lv_list =  |{ lv_list }| & |, CAST( | &  |{ <fs_group_key_columns>-fnam }| & | AS CHAR ) AS sort| & |{ <fs_group_key_columns>-grup }|.
      ENDLOOP.

      IF p_disp NE '3'.
        sort_loop = <fs_sub> .
        DO ( max_group - <fs_sub> ) TIMES.
          sort_loop = sort_loop + 1.
          lv_list = |{ lv_list }| & |, | & |'ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ' AS sort000| & |{ sort_loop }|.
        ENDDO.
      ENDIF.

      LOOP AT gt_fieldlist ASSIGNING FIELD-SYMBOL(<fs_fieldlist>) WHERE cumty NE ' ' .
        """"""""""""""""""""""""""""""""""""""""""""
        " EKLENECEK
        " _2 alanları tech durumdaysa atla
        IF <fs_fieldlist>-fname EQ 'NT_PRIC_2'.
          DATA(tmp) = 1.
        ENDIF.
        """"""""""""""""""""""""""""""""""""""""""""

        lv_aggrtype = VALUE #( gt_aggregation_fields[ fnam = <fs_fieldlist>-fname ]-type OPTIONAL ).

        IF lv_aggrtype EQ 'W'.
          lv_list = |{ lv_list }| & |, ROUND( SUM( | & |{ <fs_fieldlist>-fname }| && | * TM_QUAN ), 6 ) AS | && |{ <fs_fieldlist>-fname }|.
        ELSEIF lv_aggrtype EQ 'A'.
          lv_list = |{ lv_list }| & |, AVG( | & |{ <fs_fieldlist>-fname }| && | ) AS | && |{ <fs_fieldlist>-fname }|.
        ELSEIF lv_aggrtype EQ 'M'.
          lv_list = |{ lv_list }| & |, MAX( | & |{ <fs_fieldlist>-fname }| && | ) AS | && |{ <fs_fieldlist>-fname }|.
        ELSEIF lv_aggrtype EQ 'L'.
          lv_list = |{ lv_list }| & |, MIN( | & |{ <fs_fieldlist>-fname }| && | ) AS | && |{ <fs_fieldlist>-fname }|.
        ELSE.
          lv_list = |{ lv_list }| & |, SUM( | & |{ <fs_fieldlist>-fname }| && | ) AS | && |{ <fs_fieldlist>-fname }|.
        ENDIF.
      ENDLOOP.

      REFRESH <gs_group_itab>.

      SELECT (lv_list)
        FROM @gt_main_data AS t1
    GROUP BY (lv_fields)
   APPENDING CORRESPONDING FIELDS OF TABLE @<gs_group_itab>.


      LOOP AT <gs_group_itab> ASSIGNING FIELD-SYMBOL(<fs_g_itab>).

        APPEND INITIAL LINE TO <gs_group_data> ASSIGNING FIELD-SYMBOL(<fs_g_data>).
        MOVE-CORRESPONDING <fs_g_itab> TO <fs_g_data>.

        ASSIGN COMPONENT 'SCOL_TAB' OF STRUCTURE <fs_g_data> TO <t_cellcolors>.

        " Hiyerarşi ve grup kolonlarını gri renklendir.
        IF hiera = max_hiera  .
          APPEND INITIAL LINE TO <t_cellcolors> ASSIGNING <fs_cellcolor>.
          <fs_cellcolor>-color-col = 2.
          <fs_cellcolor>-color-int = 0.
          <fs_cellcolor>-color-inv = 0.
          <fs_cellcolor>-fname = 'HIERA'.
          <fs_cellcolor>-nokeycol = 'X'.

          LOOP AT gt_group_key_columns INTO DATA(key_fields) .
            APPEND INITIAL LINE TO <t_cellcolors> ASSIGNING <fs_cellcolor>.
            <fs_cellcolor>-color-col = 2.
            <fs_cellcolor>-color-int = 0.
            <fs_cellcolor>-color-inv = 0.
            <fs_cellcolor>-fname = key_fields-fnam.
            <fs_cellcolor>-nokeycol = 'X'.
          ENDLOOP.
        ENDIF.

        a_name = 'TM_QUAN' .
        ASSIGN COMPONENT a_name OF STRUCTURE <fs_g_data> TO FIELD-SYMBOL(<ac_value>).

        LOOP AT gt_fieldlist ASSIGNING <fs_fieldlist> WHERE cumty NE ' ' .

          m_name = <fs_fieldlist>-fname.
          ASSIGN COMPONENT m_name OF STRUCTURE <fs_g_data> TO FIELD-SYMBOL(<mc_value>).

          lv_aggrtype = VALUE #( gt_aggregation_fields[ fnam = <fs_fieldlist>-fname ]-type OPTIONAL ).

          IF lv_aggrtype EQ 'W'.
            IF <mc_value> IS NOT INITIAL AND <ac_value> IS NOT INITIAL.
              <mc_value> = <mc_value> / <ac_value>.
            ENDIF.
          ENDIF.

          IF lv_aggrtype EQ 'P'.
            DATA: accu TYPE p LENGTH 16 DECIMALS 6.
            CLEAR: accu.
            LOOP AT <gs_group_itab> ASSIGNING FIELD-SYMBOL(<fs_p_itab>).
              ASSIGN COMPONENT m_name OF STRUCTURE <fs_p_itab> TO FIELD-SYMBOL(<pc_value>).
              accu += <pc_value>.
            ENDLOOP.
            IF accu NE 0 .
              <mc_value> = <mc_value> * 100 / accu .
            ENDIF.
          ENDIF.

          <mc_value> = round( val = <mc_value> dec = 2 ).

          " Negatif değer kırmızı font
          IF <mc_value> LT 0 AND hiera EQ max_hiera. "max_group EQ <fs_sub>.
            APPEND INITIAL LINE TO <t_cellcolors> ASSIGNING <fs_cellcolor>.
            <fs_cellcolor>-color-col = 6.
            <fs_cellcolor>-color-int = 0.
            <fs_cellcolor>-color-inv = 1.
            <fs_cellcolor>-fname = m_name.
            <fs_cellcolor>-nokeycol = 'X'.
          ENDIF.

        ENDLOOP.

        ASSIGN COMPONENT 'COLOR' OF STRUCTURE <fs_g_data> TO FIELD-SYMBOL(<c_value>).
        ASSIGN COMPONENT 'DUMBE' OF STRUCTURE <fs_g_data> TO FIELD-SYMBOL(<x_value>).
        <x_value> = 'TO'.
        ASSIGN COMPONENT 'HIERA' OF STRUCTURE <fs_g_data> TO FIELD-SYMBOL(<hiera>).
        <hiera> = CONV char2( hiera ).

        IF hiera NE max_hiera .
          CASE hiera.
            WHEN 0.  <c_value> = 'C600'.   " kırmızı   FF988C
            WHEN 1.  <c_value> = 'C300'.   " sarı      FFFDBF
            WHEN 2.  <c_value> = 'C500'.   " yeşil     C6F9C1
            WHEN 3.  <c_value> = 'C100'.   " turk      A6E5F4
            WHEN 4.  <c_value> = 'C700'.   " kiremit   F8E5C8
            WHEN 5.  <c_value> = 'C400'.   " yeşil-gri CCE3E3
            WHEN 6.  <c_value> = 'C210'.   " gri       D4DFEF
            WHEN 7.  <c_value> = 'C200'.   " açıkgri   DFEBF5
            WHEN 8.  <c_value> = 'C610'.   " k.kırmızı FF6758
            WHEN 9.  <c_value> = 'C310'.   " k.sarı    FFF843
            WHEN 10. <c_value> = 'C510'.   " k.yeşil   94D88F
            WHEN 11. <c_value> = 'C110'.   " k.turk    C5EAEE
            WHEN 12. <c_value> = 'C710'.   " k.kiremit FDBB71
          ENDCASE.

          APPEND INITIAL LINE TO <t_cellcolors> ASSIGNING <fs_cellcolor>.
          <fs_cellcolor>-nokeycol = 'X'.
          <fs_cellcolor>-color-col = <c_value>+1(1).
          <fs_cellcolor>-color-int = <c_value>+2(1).
        ENDIF.

        IF <c_value> IS INITIAL.
          <c_value> = 'C000'.
          APPEND INITIAL LINE TO <t_cellcolors> ASSIGNING <fs_cellcolor>.
          <fs_cellcolor>-color-col = <c_value>+1(1).
          <fs_cellcolor>-color-int = <c_value>+2(1).
          <fs_cellcolor>-nokeycol = 'X'.
        ENDIF.

      ENDLOOP.

    ENDLOOP.

    SORT <gs_group_data> BY ('sort0001') AS TEXT ('sort0002') AS TEXT ('sort0003') AS TEXT ('sort0004') AS TEXT ('sort0005') AS TEXT ('sort0006') AS TEXT ('sort0007') AS TEXT
                            ('sort0008') AS TEXT ('sort0009') AS TEXT ('sort0010') AS TEXT ('sort0011') AS TEXT ('sort0012') AS TEXT ('sort0013') AS TEXT ('hiera') AS TEXT.

    IF p_wrks EQ 'X'.

      DATA sheet_text TYPE c LENGTH 35.
      DATA sort_text TYPE c LENGTH 35.

      sheet_text = ''.
      sort_text = ''.
      sheet_max = 1.

      LOOP AT <gs_group_data> ASSIGNING <fs_g_data>.

        ASSIGN COMPONENT 'HIERA' OF STRUCTURE <fs_g_data> TO <x_value>.

        IF <x_value> EQ 0.
          sheet_max = 0.
          CONTINUE.
        ENDIF.

        IF p_addt EQ 'X'. " 1. sort kolonu genel toplam
          ASSIGN COMPONENT 'SORT0002' OF STRUCTURE <fs_g_data> TO <x_value>.
          sort_text = <x_value>.
        ELSE.
          ASSIGN COMPONENT 'SORT0001' OF STRUCTURE <fs_g_data> TO <x_value>.
          sort_text = <x_value>.
        ENDIF.

        IF sy-tabix GT 1 AND sort_text NE sheet_text.
          sheet_max += 1.
        ENDIF.

        ASSIGN COMPONENT 'SHEET' OF STRUCTURE <fs_g_data> TO <x_value>.
        <x_value> = sheet_max.
        sheet_text = sort_text.

      ENDLOOP.

      " Max sayfadan fazla oluşuyorsa hata ver
      IF sheet_max GT gv_max_xlsheets.
        MESSAGE VALUE #( gt_textlist[ sym = 'A03' ]-text OPTIONAL ) TYPE 'S' DISPLAY LIKE 'E'.
        rd_result = abap_false.
        RETURN.
      ENDIF.

    ENDIF.

    rd_result = abap_true.

  ENDMETHOD.


  METHOD convert_to_pivot.

    DATA: lv_fields     TYPE string,
          lv_colfield   TYPE string,
          lv_aggrtype   TYPE string,
          lv_list       TYPE string,
          lv_col_suffix TYPE int4,
          sort_loop     TYPE int4.

    DATA: lv_ynam TYPE string.
    DATA: lv_ysel TYPE string.
    DATA: lv_yfld TYPE string.

    DATA(max_group) = 0.
    DATA(max_hiera) = 0.

    DATA: m_name TYPE string.
    DATA: a_name TYPE string.

    DATA(fnum) = 0.
    DATA(col_count) = 0.

    FIELD-SYMBOLS: <fs_cellcolor> TYPE lvc_s_scol.

    fill_choices( EXPORTING pv_only_fill = abap_true ).

    lv_col_suffix = 100.
    lv_yfld = gv_pivot_fieldname.
    lv_ysel = |CAST( | && gv_pivot_fieldname && | AS CHAR ) as text|.

    lv_ynam = VALUE #( gt_fieldlist[ fname = gv_pivot_fieldname ]-grpx1 OPTIONAL ) .
    IF lv_ynam IS NOT INITIAL.
      lv_yfld = gv_pivot_fieldname && |, | && lv_ynam.
      lv_ysel = lv_ysel && |, | && |CAST( | && lv_ynam && | AS CHAR ) as fnam|.
    ENDIF.

    lv_colfield = VALUE #( gt_fieldlist[ slynr = p_yval ]-fname OPTIONAL ) .
    lv_aggrtype = VALUE #( gt_aggregation_fields[ fnam = lv_colfield ]-type OPTIONAL ).

    SELECT (lv_ysel)
      FROM @gt_main_data AS t1
  GROUP BY (lv_yfld)
 APPENDING CORRESPONDING FIELDS OF TABLE @gt_group_data_columns.

    DESCRIBE TABLE gt_group_data_columns LINES col_count.

    IF col_count GT gv_max_ycolumns.
      MESSAGE VALUE #( gt_textlist[ sym = 'A02' ]-text OPTIONAL ) TYPE 'S' DISPLAY LIKE 'E'.
      rd_result = abap_false.
      RETURN.
    ENDIF.

    SORT gt_group_data_columns BY text AS TEXT .
    " Genel toplam kolonu ekle
    APPEND INITIAL LINE TO gt_group_data_columns .

    " Group data dynamic table ------
    DATA: lr_itab TYPE REF TO data.
    DATA: lr_table TYPE REF TO data.
    FIELD-SYMBOLS: <t_cellcolors> TYPE lvc_t_scol.
    FIELD-SYMBOLS: <gs_group_itab> TYPE STANDARD TABLE.

    gt_fcat = go_main->set_fieldcatalog( ).

    LOOP AT gt_fcat ASSIGNING FIELD-SYMBOL(<gs_fcat>).
      IF <gs_fcat>-inttype EQ 'P'.
        <gs_fcat>-outputlen = 30.
        <gs_fcat>-rollname = 'BAPICURR_D'.
        <gs_fcat>-datatype = 'DEC'.
        <gs_fcat>-intlen = 23.
        <gs_fcat>-domname = 'BAPICURR'.
        <gs_fcat>-decimals_o = 2.
        <gs_fcat>-dd_outlen = 30.
        <gs_fcat>-decimals = 4.
        <gs_fcat>-dd_roll = 'BAPICURR_D'.
      ENDIF.
    ENDLOOP.

    CALL METHOD cl_alv_table_create=>create_dynamic_table
      EXPORTING
        "i_style_table             = 'X'
        it_fieldcatalog           = gt_fcat
      IMPORTING
        ep_table                  = lr_itab
      EXCEPTIONS
        generate_subpool_dir_full = 1
        OTHERS                    = 2.

    ASSIGN lr_itab->* TO <gs_group_itab>.

    gt_fcat = go_main->set_fieldcatalog( ).  " ???

    CALL METHOD cl_alv_table_create=>create_dynamic_table
      EXPORTING
        "i_style_table             = 'X'
        it_fieldcatalog           = gt_fcat
      IMPORTING
        ep_table                  = lr_table
      EXCEPTIONS
        generate_subpool_dir_full = 1
        OTHERS                    = 2.

    ASSIGN lr_table->* TO <gs_group_data>.
    " -------------------------------

    " Max grup
    LOOP AT gt_group_key_columns ASSIGNING FIELD-SYMBOL(<fs_group_key_columns>).
      max_group = <fs_group_key_columns>-grup.
    ENDLOOP.

    " Subtotal list
    DATA t_sub_list TYPE STANDARD TABLE OF i WITH EMPTY KEY.

    IF p_addt EQ 'X'.
      INSERT 1 INTO TABLE t_sub_list.
    ENDIF.
    IF p_addp EQ 'X'.
      LOOP AT s_subts ASSIGNING FIELD-SYMBOL(<f_subts>).
        DATA(add_group) = sy-tabix.
        IF p_addt EQ 'X'.
          add_group += 1.
        ENDIF.
        IF <f_subts>-high EQ 'X' AND add_group LT max_group.
          INSERT add_group INTO TABLE t_sub_list.
        ENDIF.
      ENDLOOP.
    ENDIF.
    INSERT max_group INTO TABLE t_sub_list.

    LOOP AT t_sub_list ASSIGNING FIELD-SYMBOL(<dumm>).
      max_hiera = sy-tabix.
      IF p_addt EQ 'X'.
        max_hiera -= 1.
      ENDIF.
    ENDLOOP.


    LOOP AT t_sub_list ASSIGNING FIELD-SYMBOL(<fs_sub>).

      CLEAR: lv_fields.
      CLEAR: lv_list.

      DATA(hiera) = sy-tabix.
      IF p_addt EQ 'X'.
        hiera -= 1.
      ENDIF.

      LOOP AT gt_group_key_columns ASSIGNING <fs_group_key_columns> WHERE grup <= <fs_sub>.
        IF lv_fields IS NOT INITIAL.
          lv_fields = |{ lv_fields }| & |, | & |{ <fs_group_key_columns>-fnam }|.
        ELSE.
          lv_fields =  <fs_group_key_columns>-fnam  .
        ENDIF.
      ENDLOOP.

      lv_list =  lv_fields.

      LOOP AT gt_group_key_columns ASSIGNING <fs_group_key_columns> WHERE grup <= <fs_sub> AND ikey = 'X'.
        lv_list =  |{ lv_list }| & |, CAST( | &  |{ <fs_group_key_columns>-fnam }| & | AS CHAR ) AS sort| & |{ <fs_group_key_columns>-grup }|.
      ENDLOOP.

      IF p_disp NE '3'.
        sort_loop = <fs_sub> .
        DO ( max_group - <fs_sub> ) TIMES.
          sort_loop = sort_loop + 1.
          IF lv_list IS NOT INITIAL.
            lv_list = |{ lv_list }| & |, |.
          ENDIF.
          lv_list = |{ lv_list }| & |'ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ' AS sort000| & |{ sort_loop }|.
        ENDDO.
      ENDIF.

      lv_col_suffix = 100.
      LOOP AT gt_group_data_columns ASSIGNING FIELD-SYMBOL(<fs_group_data_columns>).

        lv_col_suffix = lv_col_suffix + 1.
        IF <fs_group_data_columns>-text IS INITIAL.
          <fs_group_data_columns>-text = '-'.
        ENDIF.

        IF lv_list IS NOT INITIAL.
          lv_list = |{ lv_list }| && |,|.
        ENDIF.

        IF lv_col_suffix EQ ( 100 + col_count + 1 ).

          IF lv_aggrtype EQ 'W'  .
            lv_list = |{ lv_list }| && | ROUND( SUM( | && |{ lv_colfield }| &&  | * TM_QUAN ), 6 ) AS | && | MENGE| && lv_col_suffix.
          ELSEIF lv_aggrtype EQ 'M'.
            lv_list = |{ lv_list }| && | MAX( | && |{ lv_colfield }| &&  | ) AS | && | MENGE| && lv_col_suffix.
          ELSEIF lv_aggrtype EQ 'L'.
            lv_list = |{ lv_list }| && | MIN( | && |{ lv_colfield }| &&  | ) AS | && | MENGE| && lv_col_suffix.
          ELSE.
            lv_list = |{ lv_list }| && | SUM( | && |{ lv_colfield }| &&  | ) AS | && | MENGE| && lv_col_suffix.
          ENDIF.

          IF lv_aggrtype EQ 'W' .
            lv_list = |{ lv_list }| && |, SUM( TM_QUAN ) AS | && | WADIV| && lv_col_suffix.
          ELSEIF lv_aggrtype EQ 'A' .
            lv_list = |{ lv_list }| && |, COUNT( TM_QUAN ) AS | && | WADIV| && lv_col_suffix.
          ENDIF.

        ELSE.

          IF lv_aggrtype EQ 'W'  .
            lv_list = |{ lv_list }| && | ROUND( SUM( CASE | && gv_pivot_fieldname .
          ELSEIF lv_aggrtype EQ 'M'.
            lv_list = |{ lv_list }| && | MAX( CASE | && gv_pivot_fieldname .
          ELSEIF lv_aggrtype EQ 'L'.
            lv_list = |{ lv_list }| && | MIN( CASE | && gv_pivot_fieldname .
          ELSE.
            lv_list = |{ lv_list }| && | SUM( CASE | && gv_pivot_fieldname .
          ENDIF.

          IF <fs_group_data_columns>-text = '-' .
            lv_list = |{ lv_list }| && | WHEN @space|.
          ELSE.
            lv_list = |{ lv_list }| && | WHEN '| &&  <fs_group_data_columns>-text && |'|.
          ENDIF.

          IF lv_aggrtype EQ 'W'  .
            lv_list = |{ lv_list }| && | THEN | && |{ lv_colfield }| &&  | * TM_QUAN END ), 6 ) AS | && | MENGE| && lv_col_suffix.
          ELSE.
            lv_list = |{ lv_list }| && | THEN | && |{ lv_colfield }| &&  | END ) AS | && | MENGE| && lv_col_suffix.
          ENDIF.

          IF lv_aggrtype EQ 'W' .
            lv_list = |{ lv_list }| && |, SUM( CASE | && gv_pivot_fieldname .
          ELSEIF lv_aggrtype EQ 'A' .
            lv_list = |{ lv_list }| && |, COUNT( CASE | && gv_pivot_fieldname .
          ENDIF.

          IF lv_aggrtype EQ 'W' OR lv_aggrtype EQ 'A' .
            IF <fs_group_data_columns>-text = '-' .
              lv_list = |{ lv_list }| && | WHEN @space|.
            ELSE.
              lv_list = |{ lv_list }| && | WHEN '| &&  <fs_group_data_columns>-text && |'|.
            ENDIF.
            lv_list = |{ lv_list }| && | THEN TM_QUAN END ) AS | && | WADIV| && lv_col_suffix.
          ENDIF.

        ENDIF.

      ENDLOOP.

      REFRESH <gs_group_itab>.

      SELECT (lv_list)
        FROM @gt_main_data AS t1
    GROUP BY (lv_fields)
    APPENDING CORRESPONDING FIELDS OF TABLE @<gs_group_itab>.


      LOOP AT <gs_group_itab> ASSIGNING FIELD-SYMBOL(<fs_g_itab>).

        APPEND INITIAL LINE TO <gs_group_data> ASSIGNING FIELD-SYMBOL(<fs_g_data>).
        MOVE-CORRESPONDING <fs_g_itab> TO <fs_g_data>.

        ASSIGN COMPONENT 'SCOL_TAB' OF STRUCTURE <fs_g_data> TO <t_cellcolors>.

        " Hiyerarşi ve grup kolonlarını gri renklendir.
        IF max_group EQ <fs_sub>.
          APPEND INITIAL LINE TO <t_cellcolors> ASSIGNING <fs_cellcolor>.
          <fs_cellcolor>-color-col = 2.
          <fs_cellcolor>-color-int = 0.
          <fs_cellcolor>-color-inv = 0.
          <fs_cellcolor>-fname = 'HIERA'.
          <fs_cellcolor>-nokeycol = 'X'.

          LOOP AT gt_group_key_columns INTO DATA(key_fields) .
            APPEND INITIAL LINE TO <t_cellcolors> ASSIGNING <fs_cellcolor>.
            <fs_cellcolor>-color-col = 2.
            <fs_cellcolor>-color-int = 0.
            <fs_cellcolor>-color-inv = 0.
            <fs_cellcolor>-fname = key_fields-fnam.
            <fs_cellcolor>-nokeycol = 'X'.
          ENDLOOP.
        ENDIF.

        fnum = 100.

        DO ( col_count + 1 ) TIMES.
          fnum = fnum + 1.
          m_name = 'MENGE' && fnum.
          a_name = 'WADIV' && fnum.
          ASSIGN COMPONENT m_name OF STRUCTURE <fs_g_data> TO FIELD-SYMBOL(<mc_value>).
          ASSIGN COMPONENT a_name OF STRUCTURE <fs_g_data> TO FIELD-SYMBOL(<ac_value>).

          IF lv_aggrtype EQ 'A' OR lv_aggrtype EQ 'W'.
            IF <mc_value> IS NOT INITIAL AND <ac_value> IS NOT INITIAL.
              <mc_value> = <mc_value> / <ac_value> .
            ENDIF.
          ENDIF.

          IF lv_aggrtype EQ 'P'.
            DATA(tot_col_number) = 100 + col_count + 1 .
            a_name = 'MENGE' && tot_col_number.
            ASSIGN COMPONENT a_name OF STRUCTURE <fs_g_data> TO <ac_value>.
            IF <mc_value> IS NOT INITIAL AND <ac_value> IS NOT INITIAL.
              <mc_value> = <mc_value> * 100 / <ac_value> .
            ENDIF.
          ENDIF.

          <mc_value> = round( val = <mc_value> dec = 2 ).

          " Negatif değer kırmızı font
          IF <mc_value> LT 0 AND hiera EQ max_hiera. "max_group EQ <fs_sub>.
            APPEND INITIAL LINE TO <t_cellcolors> ASSIGNING <fs_cellcolor>.
            <fs_cellcolor>-color-col = 6.
            <fs_cellcolor>-color-int = 0.
            <fs_cellcolor>-color-inv = 1.
            <fs_cellcolor>-fname = m_name.
            <fs_cellcolor>-nokeycol = 'X'.
          ENDIF.
        ENDDO.

        ASSIGN COMPONENT 'COLOR' OF STRUCTURE <fs_g_data> TO FIELD-SYMBOL(<c_value>).
        ASSIGN COMPONENT 'DUMBE' OF STRUCTURE <fs_g_data> TO FIELD-SYMBOL(<x_value>).
        <x_value> = 'TO'.
        ASSIGN COMPONENT 'HIERA' OF STRUCTURE <fs_g_data> TO FIELD-SYMBOL(<hiera>).
        <hiera> =  CONV char2( hiera ).

        IF hiera NE max_hiera .
          CASE hiera.
            WHEN 0.  <c_value> = 'C600'.   " kırmızı   FF988C
            WHEN 1.  <c_value> = 'C300'.   " sarı      FFFDBF
            WHEN 2.  <c_value> = 'C500'.   " yeşil     C6F9C1
            WHEN 3.  <c_value> = 'C100'.   " turk      A6E5F4
            WHEN 4.  <c_value> = 'C700'.   " kiremit   F8E5C8
            WHEN 5.  <c_value> = 'C400'.   " yeşil-gri CCE3E3
            WHEN 6.  <c_value> = 'C210'.   " gri       D4DFEF
            WHEN 7.  <c_value> = 'C200'.   " açıkgri   DFEBF5
            WHEN 8.  <c_value> = 'C610'.   " k.kırmızı FF6758
            WHEN 9.  <c_value> = 'C310'.   " k.sarı    FFF843
            WHEN 10. <c_value> = 'C510'.   " k.yeşil   94D88F
            WHEN 11. <c_value> = 'C110'.   " k.turk    C5EAEE
            WHEN 12. <c_value> = 'C710'.   " k.kiremit FDBB71
          ENDCASE.

          APPEND INITIAL LINE TO <t_cellcolors> ASSIGNING <fs_cellcolor>.
          <fs_cellcolor>-nokeycol = 'X'.
          <fs_cellcolor>-color-col = <c_value>+1(1).
          <fs_cellcolor>-color-int = <c_value>+2(1).
        ENDIF.

        IF <c_value> IS INITIAL.
          <c_value> = 'C000'.
          APPEND INITIAL LINE TO <t_cellcolors> ASSIGNING <fs_cellcolor>.
          <fs_cellcolor>-color-col = <c_value>+1(1).
          <fs_cellcolor>-color-int = <c_value>+2(1).
          <fs_cellcolor>-nokeycol = 'X'.
        ENDIF.

      ENDLOOP.

    ENDLOOP.

    SORT <gs_group_data> BY ('sort0001') AS TEXT ('sort0002') AS TEXT ('sort0003') AS TEXT ('sort0004') AS TEXT ('sort0005') AS TEXT ('sort0006') AS TEXT ('sort0007') AS TEXT
                            ('sort0008') AS TEXT ('sort0009') AS TEXT ('sort0010') AS TEXT ('sort0011') AS TEXT ('sort0012') AS TEXT ('sort0013') AS TEXT ('hiera') AS TEXT.

    IF p_wrks EQ 'X'.

      DATA sheet_max  TYPE int4.
      DATA sheet_text TYPE c LENGTH 35.
      DATA sort_text TYPE c LENGTH 35.

      sheet_text = ''.
      sort_text = ''.
      sheet_max = 1.

      LOOP AT <gs_group_data> ASSIGNING <fs_g_data>.

        ASSIGN COMPONENT 'HIERA' OF STRUCTURE <fs_g_data> TO <x_value>.

        IF <x_value> EQ 0.
          sheet_max = 0.
          CONTINUE.
        ENDIF.

        IF p_addt EQ 'X'. " 1. sort kolonu genel toplam
          ASSIGN COMPONENT 'SORT0002' OF STRUCTURE <fs_g_data> TO <x_value>.
          sort_text = <x_value>.
        ELSE.
          ASSIGN COMPONENT 'SORT0001' OF STRUCTURE <fs_g_data> TO <x_value>.
          sort_text = <x_value>.
        ENDIF.

        IF sy-tabix GT 1 AND sort_text NE sheet_text.
          sheet_max += 1.
        ENDIF.

        ASSIGN COMPONENT 'SHEET' OF STRUCTURE <fs_g_data> TO <x_value>.
        <x_value> = sheet_max.
        sheet_text = sort_text.

      ENDLOOP.

      " Max sayfadan fazla oluşuyorsa hata ver
      IF sheet_max GT gv_max_xlsheets.
        MESSAGE VALUE #( gt_textlist[ sym = 'A03' ]-text OPTIONAL ) TYPE 'S' DISPLAY LIKE 'E'.
        rd_result = abap_false.
        RETURN.
      ENDIF.

    ENDIF.

    rd_result = abap_true.

  ENDMETHOD.


  METHOD set_fieldlist.

    DATA: lt_fcat TYPE lvc_t_fcat.
    DATA: table TYPE REF TO data.
    CREATE DATA table LIKE gt_main_data.

    ASSIGN table->* TO FIELD-SYMBOL(<table>).

    TRY.
        cl_salv_table=>factory( IMPORTING
                                  r_salv_table   = DATA(salv_table)
                                CHANGING
                                  t_table        = <table>  ).

        lt_fcat = cl_salv_controller_metadata=>get_lvc_fieldcatalog( r_columns      = salv_table->get_columns( )      " ALV Filter
                                                                     r_aggregations = salv_table->get_aggregations( ) " ALV Aggregations
                                                                   ).
      CATCH cx_root.
    ENDTRY.

    CLEAR: gt_allfields_text.

    LOOP AT lt_fcat ASSIGNING FIELD-SYMBOL(<fs_fcat>).
      IF NOT ( <fs_fcat>-fieldname EQ 'HIERA'
            OR <fs_fcat>-fieldname EQ 'COLOR'
            OR <fs_fcat>-fieldname EQ 'COUNT'
            OR <fs_fcat>-fieldname EQ 'SHEET'
            OR <fs_fcat>-fieldname EQ 'DUMMY'
            OR <fs_fcat>-fieldname EQ 'DUMBE'
            OR <fs_fcat>-fieldname EQ 'SCOL_TAB'
            OR substring_before( val = <fs_fcat>-fieldname sub = '00' ) EQ 'SORT'
            OR VALUE #( gt_fieldlist[ fname = <fs_fcat>-fieldname ]-fname OPTIONAL ) IS INITIAL ).
        APPEND INITIAL LINE TO gt_allfields_text ASSIGNING FIELD-SYMBOL(<ls_allfields_text>).
        <ls_allfields_text>-text = VALUE #( gt_fieldlist[ fname = <fs_fcat>-fieldname ]-textl OPTIONAL ).
        DATA(offset) = strlen( <fs_fcat>-fieldname ) - 2.
        IF <fs_fcat>-fieldname+offset(2) EQ '_2' AND <ls_allfields_text>-text NA '(2)'.
          <ls_allfields_text>-text = <ls_allfields_text>-text && ' (2)'.
        ENDIF.
        <ls_allfields_text>-name = <fs_fcat>-fieldname.
        <ls_allfields_text>-type = <fs_fcat>-inttype.
        <ls_allfields_text>-leng = <fs_fcat>-intlen.
        <ls_allfields_text>-decm = <fs_fcat>-decimals.
      ENDIF.
    ENDLOOP.

    APPEND INITIAL LINE TO gt_allfields_text.
    SORT gt_allfields_text BY text AS TEXT.

  ENDMETHOD.




  METHOD set_fieldcatalog.

    DATA: lv_dtexs    TYPE scrtext_s,
          lv_dtext    TYPE scrtext_l,
          lv_aggrtype TYPE string.

    DATA: ls_new_column TYPE lvc_s_fcat.

    DATA(lv_pos) = 0.
    DATA(nr_count) = 0.

    REFRESH: rt_fcat.

    LOOP AT s_fnams ASSIGNING FIELD-SYMBOL(<dummy>).
      nr_count += 1.
    ENDLOOP.
    IF p_yval IS NOT INITIAL.
      nr_count -= 1.
    ENDIF.

    DATA: gt_group_data TYPE TABLE OF ty_group_data.
    DATA: table TYPE REF TO data.

    IF s_fnams[] IS NOT INITIAL AND gv_detail_view = abap_false.
      CREATE DATA table LIKE gt_group_data.
    ELSE.
      CREATE DATA table LIKE gt_main_data.
    ENDIF.

    ASSIGN table->* TO FIELD-SYMBOL(<table>).

    TRY.
        cl_salv_table=>factory( IMPORTING
                                  r_salv_table   = DATA(salv_table)
                                CHANGING
                                  t_table        = <table>  ).

        rt_fcat = cl_salv_controller_metadata=>get_lvc_fieldcatalog( r_columns      = salv_table->get_columns( )      " ALV Filter
                                                                     r_aggregations = salv_table->get_aggregations( ) " ALV Aggregations
                                                                   ).
      CATCH cx_root.
    ENDTRY.


    LOOP AT rt_fcat ASSIGNING FIELD-SYMBOL(<fs_fcat>).

      <fs_fcat>-qfieldname = ' '.
      <fs_fcat>-cfieldname = ' '.
      <fs_fcat>-lowercase = ' '.
      <fs_fcat>-no_sign = ' '.
      <fs_fcat>-no_out = ' '.
      <fs_fcat>-no_merging = p_ocds.
      <fs_fcat>-no_zero = ' '.
      IF <fs_fcat>-inttype EQ 'N' OR <fs_fcat>-inttype EQ 'D' OR <fs_fcat>-inttype EQ 'T' .
        <fs_fcat>-no_zero = 'X'.
      ELSEIF <fs_fcat>-inttype EQ 'P'.
        <fs_fcat>-no_zero = p_zero.
      ENDIF.

      <fs_fcat>-ref_field = ' '.
      IF <fs_fcat>-fieldname EQ 'VRKME' OR <fs_fcat>-fieldname EQ 'CVRKM'.
        <fs_fcat>-ref_table = 'VBRP'.
        <fs_fcat>-ref_field = 'VRKME'.
      ENDIF.

      CLEAR lv_dtext.
      CLEAR lv_dtexs.

      " Alanları grupla
      DATA(spgrp) = VALUE #( gt_fieldlist[ fname = <fs_fcat>-fieldname ]-spgrp OPTIONAL ) .

      IF spgrp IS NOT INITIAL.
        <fs_fcat>-sp_group = spgrp.
      ENDIF.

      " Alanları adlandır
      IF p_tech EQ 'X'.
        lv_dtext = VALUE #( gt_fieldlist[ fname = <fs_fcat>-fieldname ]-techl OPTIONAL ) .
      ELSE.
        lv_dtexs = VALUE #( gt_fieldlist[ fname = <fs_fcat>-fieldname ]-texts OPTIONAL ) .
        lv_dtext = VALUE #( gt_fieldlist[ fname = <fs_fcat>-fieldname ]-textl OPTIONAL ) .
      ENDIF.

      lv_aggrtype = VALUE #( gt_aggregation_fields[ fnam = <fs_fcat>-fieldname ]-type OPTIONAL ).

      " Küme ön ekleri
      IF s_fnams[] IS NOT INITIAL AND gv_detail_view = abap_false.

        IF lv_aggrtype EQ 'A'.
          IF p_tech IS INITIAL.
            lv_dtexs = VALUE #( gt_textlist[ sym = 'TW1' ]-text OPTIONAL ) && lv_dtexs.
            lv_dtext = VALUE #( gt_textlist[ sym = 'TW2' ]-text OPTIONAL ) && | | && lv_dtext.
          ELSE.
            lv_dtext = VALUE #( gt_textlist[ sym = 'TZ1' ]-text OPTIONAL ) && lv_dtext.
          ENDIF.
        ELSEIF lv_aggrtype EQ 'W'.
          IF p_tech IS INITIAL.
            lv_dtexs = VALUE #( gt_textlist[ sym = 'TW4' ]-text OPTIONAL ) && lv_dtexs.
            lv_dtext = VALUE #( gt_textlist[ sym = 'TW5' ]-text OPTIONAL ) && | | && lv_dtext.
          ELSE.
            lv_dtext = VALUE #( gt_textlist[ sym = 'TZ3' ]-text OPTIONAL ) && lv_dtext.
          ENDIF.
        ELSEIF lv_aggrtype EQ 'M'.
          IF p_tech IS INITIAL.
            lv_dtexs = VALUE #( gt_textlist[ sym = 'TW8' ]-text OPTIONAL ) && lv_dtexs.
            lv_dtext = VALUE #( gt_textlist[ sym = 'TW6' ]-text OPTIONAL ) && | | && lv_dtext.
          ELSE.
            lv_dtext = VALUE #( gt_textlist[ sym = 'TZM' ]-text OPTIONAL ) && lv_dtext.
          ENDIF.
        ELSEIF lv_aggrtype EQ 'L'.
          IF p_tech IS INITIAL.
            lv_dtexs = VALUE #( gt_textlist[ sym = 'TW9' ]-text OPTIONAL ) && lv_dtexs.
            lv_dtext = VALUE #( gt_textlist[ sym = 'TW7' ]-text OPTIONAL ) && | | && lv_dtext.
          ELSE.
            lv_dtext = VALUE #( gt_textlist[ sym = 'TZL' ]-text OPTIONAL ) && lv_dtext.
          ENDIF.
        ELSEIF lv_aggrtype EQ 'P'.
          IF p_tech IS INITIAL.
            lv_dtexs = |% | && lv_dtexs.
            lv_dtext = |% | && lv_dtext.
          ELSE.
            lv_dtext = lv_dtext && VALUE #( gt_textlist[ sym = 'TZP' ]-text OPTIONAL ) .
          ENDIF.
        ENDIF.

      ENDIF.

      IF p_tech EQ 'X'.
        IF lv_dtext IS NOT INITIAL. MOVE lv_dtext TO : <fs_fcat>-scrtext_s, <fs_fcat>-scrtext_m, <fs_fcat>-scrtext_l, <fs_fcat>-reptext, <fs_fcat>-coltext. ENDIF.
      ELSE.
        IF lv_dtexs IS NOT INITIAL. MOVE lv_dtexs TO : <fs_fcat>-scrtext_s. ENDIF.
        IF lv_dtext IS NOT INITIAL. MOVE lv_dtext TO : <fs_fcat>-scrtext_l, <fs_fcat>-scrtext_m, <fs_fcat>-reptext. ENDIF.
      ENDIF.

      " Kolon renklendir
      IF p_colr = 'X' .
        <fs_fcat>-emphasize = VALUE #( gt_fieldlist[ fname = <fs_fcat>-fieldname ]-emphs OPTIONAL ) .
      ENDIF.

      " Başlangıçta Gizle
      IF ( s_fnams[] IS INITIAL AND p_layo EQ ' ' ) OR gv_detail_view = abap_true.
        <fs_fcat>-no_out = VALUE #( gt_fieldlist[ fname = <fs_fcat>-fieldname ]-shide OPTIONAL ) .
      ENDIF.

      " Kod açıklama ile ise kod gizle
      IF p_nolb EQ 'Y' AND p_layo EQ ' ' AND VALUE #( gt_fieldlist[ fname = <fs_fcat>-fieldname ]-grpx1 OPTIONAL ) IS NOT INITIAL.
        <fs_fcat>-no_out = 'X'.
      ENDIF.

      " Toplam al
      IF ( lv_aggrtype = 'Q' OR lv_aggrtype = 'C' OR lv_aggrtype = 'T' )
        AND ( ( s_fnams[] IS INITIAL AND p_addt EQ 'X' AND p_layo EQ ' ' ) OR ( gv_detail_view = abap_true AND p_layd EQ ' ' ) ) .
        <fs_fcat>-do_sum = 'X'.
      ENDIF.

      " Referans birimleri belirle
      DATA(offset) = strlen( <fs_fcat>-fieldname ) - 2.

      IF s_fnams[] IS INITIAL.

        IF <fs_fcat>-datatype EQ 'DEC'.
          <fs_fcat>-decimals_o = '0'.
        ENDIF.

        IF <fs_fcat>-datatype EQ 'QUAN' .
          " Miktar
          IF p_cdec = 'X'.
            "<fs_fcat>-qfieldname = 'DUMBE'.
            <fs_fcat>-decimals_o = '3'.
          ELSEIF p_twoc EQ 'X' .
            <fs_fcat>-qfieldname = 'CVRKM'.
          ELSE.
            <fs_fcat>-qfieldname = 'VRKME'.
          ENDIF.
        ENDIF.

        IF <fs_fcat>-datatype EQ 'CURR' .
          IF p_twoc EQ 'X'.
            <fs_fcat>-cfieldname = 'CWAER'.
          ELSE.
            <fs_fcat>-cfieldname = 'WAERK'.
          ENDIF.

          IF <fs_fcat>-fieldname+offset(2) EQ '_2'.
            IF p_wah2 IS NOT INITIAL.
              IF p_twoc EQ 'X' .
                <fs_fcat>-cfieldname = 'CWAER'.
              ELSE.
                <fs_fcat>-cfieldname = 'WAERK_2'.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.

      ENDIF.

      " Tutar kur bilgisi kolon başlığına ekle
      IF <fs_fcat>-datatype EQ 'CURR'.

        IF <fs_fcat>-fieldname+offset(2) EQ '_2'.

          IF p_wah2 IS NOT INITIAL.
            DATA(curdat_sym) = 'M' && p_cur2.
            DATA(curdat_txt) = VALUE #( gt_textlist[ sym = curdat_sym ]-text OPTIONAL ).

            IF p_tech IS INITIAL.
              <fs_fcat>-scrtext_s = <fs_fcat>-scrtext_s && ' [' && p_wah2 && ' ¤' && curdat_txt && ']'.
              <fs_fcat>-scrtext_l = <fs_fcat>-scrtext_l && ' [' && p_wah2 && ' ¤' && curdat_txt && ']'.
            ELSE.
              <fs_fcat>-scrtext_l = <fs_fcat>-scrtext_l && p_wah2 && to_upper( curdat_txt ).
            ENDIF.
          ELSE.
            <fs_fcat>-scrtext_s = <fs_fcat>-scrtext_s && ' (2)'.
            <fs_fcat>-scrtext_l = <fs_fcat>-scrtext_l && ' (2)'.
            <fs_fcat>-tech = 'X'.
          ENDIF.

        ELSE.

          IF p_wahr IS NOT INITIAL.
            curdat_sym = 'M' && p_cur1.
            "IF <fs_fcat>-fieldname EQ 'FK_WAMN' OR <fs_fcat>-fieldname EQ 'LF_BAMN' .
            "  curdat_txt = VALUE #( gt_textlist[ sym = 'M06' ]-text OPTIONAL ).
            "ELSE.
              curdat_txt = VALUE #( gt_textlist[ sym = curdat_sym ]-text OPTIONAL ).
            "ENDIF.

            IF p_tech IS INITIAL.
              IF <fs_fcat>-fieldname EQ 'EC_AMNT' OR <fs_fcat>-fieldname EQ 'EC_TAMN' .
                <fs_fcat>-scrtext_s = <fs_fcat>-scrtext_s  && ' [' && p_wahr && ']'.
                <fs_fcat>-scrtext_l = <fs_fcat>-scrtext_l  && ' [' && p_wahr && ']'.
              ELSE.
                <fs_fcat>-scrtext_s = <fs_fcat>-scrtext_s && ' [' && p_wahr && ' ¤' && curdat_txt && ']'.
                <fs_fcat>-scrtext_l = <fs_fcat>-scrtext_l && ' [' && p_wahr && ' ¤' && curdat_txt && ']'.
              ENDIF.
            ELSE.
              <fs_fcat>-scrtext_l = <fs_fcat>-scrtext_l  && p_wahr && to_upper( curdat_txt ).
            ENDIF.
          ENDIF.

        ENDIF.

      ENDIF.

      " Kur farkı alanını gizle
      IF p_wah2 IS INITIAL OR p_cur1 EQ p_cur2.
        CASE <fs_fcat>-fieldname.
          WHEN 'EC_AMNT' OR 'EC_TAMN'.
            <fs_fcat>-tech = 'X' .
        ENDCASE.
      ENDIF.

      " Hiyerarşi kolonu
      IF <fs_fcat>-fieldname EQ 'HIERA'.
        IF nr_count LT 2 OR ( p_addp IS INITIAL AND p_disp NE '3' ).
          <fs_fcat>-tech = 'X'.
        ELSE.
          <fs_fcat>-key = 'X'.
        ENDIF.
      ENDIF.

      " Her zaman tech
      IF <fs_fcat>-fieldname EQ 'COLOR'
      OR <fs_fcat>-fieldname EQ 'SHEET'
      OR <fs_fcat>-fieldname EQ 'DUMMY'
      OR <fs_fcat>-fieldname EQ 'DUMBE'
      OR <fs_fcat>-fieldname EQ 'SCOL_TAB'
      OR substring_before( val = <fs_fcat>-fieldname sub = '00' ) EQ 'SORT'
      OR VALUE #( gt_fieldlist[ fname = <fs_fcat>-fieldname ]-fname OPTIONAL ) IS INITIAL.
        <fs_fcat>-tech = 'X'.
        <fs_fcat>-no_out = 'X'.
      ENDIF.

      IF p_yval IS INITIAL.
        <fs_fcat>-reptext = <fs_fcat>-scrtext_m = <fs_fcat>-scrtext_l.
      ELSE.
        " if pivot reptext set with schlüssel für doppelclicke
        <fs_fcat>-scrtext_m = <fs_fcat>-scrtext_l.
      ENDIF.

      " Kolon optimize
      IF p_colr EQ ' ' .
        IF ( gv_detail_view = abap_false AND p_layo EQ ' ' ) OR ( gv_detail_view = abap_true AND p_layd EQ ' ' ).
          <fs_fcat>-col_opt = 'X'.
        ENDIF.
      ENDIF.

      IF p_colr EQ 'X' AND <fs_fcat>-inttype = 'P'.
        IF ( gv_detail_view = abap_false AND p_layo EQ ' ' ) OR ( gv_detail_view = abap_true AND p_layd EQ ' ' ).
          <fs_fcat>-scrtext_m = ''.
          <fs_fcat>-scrtext_s = ''.
        ENDIF.
      ENDIF.

      IF p_tech EQ 'X'.
        <fs_fcat>-colddictxt = 'L'.
      ENDIF.

      " Pivot kolon için alan tipi
      IF <fs_fcat>-fieldname EQ VALUE #( gt_fieldlist[ slynr = p_yval ]-fname OPTIONAL ).
        ls_new_column = <fs_fcat>.
      ENDIF.

    ENDLOOP.


    " GROUPING
    IF s_fnams[] IS NOT INITIAL AND gv_detail_view = abap_false.

      LOOP AT rt_fcat ASSIGNING <fs_fcat>.
        " Grup kolon dışındakileri sil
        IF ( p_yval IS NOT INITIAL OR VALUE #( gt_fieldlist[ fname = <fs_fcat>-fieldname ]-cumty OPTIONAL ) IS INITIAL  )
            AND VALUE #( gt_group_key_columns[ fnam = <fs_fcat>-fieldname ]-fnam OPTIONAL ) IS INITIAL
            AND <fs_fcat>-fieldname NE 'HIERA' AND <fs_fcat>-fieldname NE 'COLOR' AND <fs_fcat>-fieldname NE 'SCOL_TAB'
            AND <fs_fcat>-fieldname NE 'SHEET' AND <fs_fcat>-fieldname NE 'DUMBE' AND substring_before( val = <fs_fcat>-fieldname sub = '00' ) NE 'SORT'.
          DELETE rt_fcat WHERE fieldname EQ <fs_fcat>-fieldname.
        ENDIF.
      ENDLOOP.

      " Grup kolonları sırala ve göster
      LOOP AT gt_group_key_columns ASSIGNING FIELD-SYMBOL(<fs_group_key_columns>).
        LOOP AT rt_fcat ASSIGNING <fs_fcat>.
          IF <fs_fcat>-fieldname EQ <fs_group_key_columns>-fnam.
            lv_pos = lv_pos + 1.
            <fs_fcat>-col_pos = lv_pos .
            <fs_fcat>-no_out = ' '.
            <fs_fcat>-key = 'X'.
            " Kod açıklama ile ise kod gizle
            IF p_nolb EQ 'Y' AND p_layo EQ ' ' AND VALUE #( gt_fieldlist[ fname = <fs_fcat>-fieldname ]-grpx1 OPTIONAL ) IS NOT INITIAL.
              <fs_fcat>-no_out = 'X'.
            ENDIF.
          ENDIF.
        ENDLOOP.
      ENDLOOP.

      " Kümülatif Alanları sırala ve göster
      LOOP AT rt_fcat ASSIGNING <fs_fcat>.
        lv_aggrtype = VALUE #( gt_aggregation_fields[ fnam = <fs_fcat>-fieldname ]-type OPTIONAL ).

        offset = strlen( <fs_fcat>-fieldname ) - 2.
        IF <fs_fcat>-fieldname+offset(2) EQ '_2'.
          DATA(main_field) = substring( val = <fs_fcat>-fieldname off = 0 len = strlen( <fs_fcat>-fieldname ) - 2 ).
          DATA(lv_aggrtype_main) = VALUE #( gt_aggregation_fields[ fnam = main_field ]-type OPTIONAL ).
          IF lv_aggrtype NE lv_aggrtype_main.
            <fs_fcat>-tech = ' '.
          ENDIF.
        ENDIF.

        IF lv_aggrtype IS NOT INITIAL.
          lv_pos = lv_pos + 1.
          <fs_fcat>-col_pos = lv_pos .
          <fs_fcat>-no_out = ' '.
        ENDIF.
      ENDLOOP.

      DATA: wa_fieldcat LIKE LINE OF rt_fcat.
      FIELD-SYMBOLS: <t_cellcolors> TYPE lvc_t_scol.
      wa_fieldcat-fieldname = 'SCOL_TAB'.
      wa_fieldcat-ref_field = 'COLTAB'.
      wa_fieldcat-ref_table = 'CALENDAR_TYPE'.
      wa_fieldcat-tech = 'X'.
      APPEND wa_fieldcat TO rt_fcat.

    ENDIF.


    " PIVOTTING
    IF p_yval IS NOT INITIAL AND gv_detail_view = abap_false.

      DATA: lv_col_suffix TYPE int4.
      DATA: lv_coltext    TYPE string.

      DATA(col_count) = 0.
      DESCRIBE TABLE gt_group_data_columns LINES col_count.

      lv_col_suffix = 100.

      lv_aggrtype = VALUE #( gt_aggregation_fields[ fnam = ls_new_column-fieldname ]-type OPTIONAL ).

      LOOP AT gt_group_data_columns ASSIGNING FIELD-SYMBOL(<fs_group_data_columns>).

        APPEND INITIAL LINE TO rt_fcat ASSIGNING <fs_fcat>.
        MOVE-CORRESPONDING ls_new_column TO <fs_fcat>.

        ADD 1 TO lv_col_suffix.
        <fs_fcat>-col_pos = lv_col_suffix.

        <fs_fcat>-fieldname = 'MENGE' && lv_col_suffix.

        IF ( s_fnams[] IS INITIAL AND p_addt EQ 'X' AND p_layo EQ ' ' ) .
          IF lv_aggrtype = 'T' .
            <fs_fcat>-do_sum = 'X'.
          ENDIF.
        ENDIF.

        " Column Text
        IF lv_col_suffix EQ ( 100 + col_count ).
          IF p_tech EQ 'X'.
            CASE lv_aggrtype .
              WHEN 'W'.    lv_coltext = VALUE #( gt_textlist[ sym = 'TZ4' ]-text OPTIONAL ).
              WHEN 'A'.    lv_coltext = VALUE #( gt_textlist[ sym = 'TZ2' ]-text OPTIONAL ).
              WHEN 'P'.    lv_coltext = VALUE #( gt_textlist[ sym = 'TZP' ]-text OPTIONAL ).
              WHEN 'M'.    lv_coltext = VALUE #( gt_textlist[ sym = 'TZM' ]-text OPTIONAL ).
              WHEN 'L'.    lv_coltext = VALUE #( gt_textlist[ sym = 'TZL' ]-text OPTIONAL ).
              WHEN OTHERS. lv_coltext = VALUE #( gt_textlist[ sym = 'TZT' ]-text OPTIONAL ).
            ENDCASE.
          ELSE.
            CASE lv_aggrtype .
              WHEN 'W'.    lv_coltext = VALUE #( gt_textlist[ sym = 'TWT' ]-text OPTIONAL ).
              WHEN 'A'.    lv_coltext = VALUE #( gt_textlist[ sym = 'TW3' ]-text OPTIONAL ).
              WHEN 'P'.    lv_coltext = VALUE #( gt_textlist[ sym = 'TW0' ]-text OPTIONAL ).
              WHEN 'M'.    lv_coltext = VALUE #( gt_textlist[ sym = 'TW6' ]-text OPTIONAL ).
              WHEN 'L'.    lv_coltext = VALUE #( gt_textlist[ sym = 'TW7' ]-text OPTIONAL ).
              WHEN OTHERS. lv_coltext = VALUE #( gt_textlist[ sym = 'TXT' ]-text OPTIONAL ).
            ENDCASE.
          ENDIF.
        ELSE.
          IF <fs_group_data_columns>-text IS INITIAL.
            lv_coltext = '-'.
          ELSE.
            lv_coltext = <fs_group_data_columns>-text.
          ENDIF.
        ENDIF.
        <fs_fcat>-reptext = lv_coltext.

        IF <fs_group_data_columns>-fnam IS NOT INITIAL.
          IF p_nolb IS INITIAL.
            <fs_fcat>-coltext = lv_coltext && | - | && <fs_group_data_columns>-fnam.
          ELSE.
            <fs_fcat>-coltext = <fs_group_data_columns>-fnam.
          ENDIF.
        ELSE.
          IF ls_new_column-datatype = 'DATS' AND lv_col_suffix NE ( 100 + col_count )..
            CONCATENATE lv_coltext+6(2) lv_coltext+4(2) lv_coltext(4) INTO <fs_fcat>-coltext SEPARATED BY '.'.
          ELSE.
            <fs_fcat>-coltext = lv_coltext.
          ENDIF.
        ENDIF.
        <fs_fcat>-scrtext_s = <fs_fcat>-scrtext_m =  <fs_fcat>-scrtext_l = <fs_fcat>-coltext .

        " Datatype
        "CASE <fs_fcat>-datatype.
        "
        "  WHEN 'INT4' OR 'INT8' .
        "    <fs_fcat>-decimals_o = 0.
        "    <fs_fcat>-inttype = 'I'.
        "
        "  WHEN 'DEC'  .
        "    <fs_fcat>-decimals_o = 2.
        "    <fs_fcat>-inttype = 'P'.
        "
        "  WHEN 'QUAN'.
        "    IF p_cdec EQ 'X'.
        "      <fs_fcat>-qfieldname = ' '.
        "      <fs_fcat>-decimals_o = 3.
        "    ELSE.
        "      <fs_fcat>-qfieldname = 'DUMBE'.
        "    ENDIF.
        "    <fs_fcat>-inttype = 'P'.
        "    <fs_fcat>-intlen = 15.
        "
        "  WHEN 'CURR'.
        "    <fs_fcat>-cfieldname = ' '.
        "    "  <fs_fcat>-datatype = 'DEC'.
        "    <fs_fcat>-inttype = 'P'.
        "    <fs_fcat>-intlen = 15.
        "    <fs_fcat>-decimals_o = 2.
        "
        "ENDCASE.

      ENDLOOP.

      lv_col_suffix = 100.

      LOOP AT gt_group_data_columns ASSIGNING <fs_group_data_columns>.

        APPEND INITIAL LINE TO rt_fcat ASSIGNING <fs_fcat>.
        MOVE-CORRESPONDING ls_new_column TO <fs_fcat>.

        ADD 1 TO lv_col_suffix.
        <fs_fcat>-col_pos   = lv_col_suffix.
        <fs_fcat>-fieldname = 'WADIV' && lv_col_suffix.
        <fs_fcat>-datatype = 'DEC'.
        <fs_fcat>-inttype = 'P'.
        <fs_fcat>-intlen = 23.
        <fs_fcat>-decimals = 3.
        <fs_fcat>-tech = 'X'.

      ENDLOOP.

    ENDIF.


    IF s_fnams[] IS NOT INITIAL AND gv_detail_view = abap_false.
      LOOP AT rt_fcat ASSIGNING <fs_fcat>.
        IF p_yval IS NOT INITIAL.
          lv_aggrtype = VALUE #( gt_aggregation_fields[ fnam = ls_new_column-fieldname ]-type OPTIONAL ).
        ELSE.
          lv_aggrtype = VALUE #( gt_aggregation_fields[ fnam = <fs_fcat>-fieldname ]-type OPTIONAL ).
        ENDIF.

        IF <fs_fcat>-datatype EQ 'QUAN' .
          IF p_cdec IS INITIAL.
            <fs_fcat>-qfieldname = 'DUMBE'.
          ELSE.
            <fs_fcat>-qfieldname = ' '.
          ENDIF.
        ENDIF.

        IF <fs_fcat>-datatype EQ 'CURR' .
          <fs_fcat>-cfieldname = ' '.
        ENDIF.

        IF <fs_fcat>-datatype EQ 'DEC'.
          IF ( lv_aggrtype EQ 'P' OR lv_aggrtype EQ 'A' OR lv_aggrtype EQ 'W' ) .
            <fs_fcat>-decimals_o = '2'.
          ELSE.
            <fs_fcat>-decimals_o = '0'.
          ENDIF.
        ENDIF.
      ENDLOOP.
    ENDIF.

  ENDMETHOD.


  METHOD f4_fpath.

    DATA: v_default_file_name TYPE string,
          v_filename          TYPE string,
          v_file_path         TYPE string,
          v_full_path         TYPE string.

    DATA tz0 TYPE string.
    tz0 = VALUE #( gt_textlist[ sym = 'TZ0' ]-text OPTIONAL ).
    CONCATENATE tz0 '_' sy-datum '_' sy-uzeit(4) '.xlsx' INTO v_default_file_name.

    cl_gui_frontend_services=>file_save_dialog(
      EXPORTING
        window_title        = CONV string( VALUE #( gt_textlist[ sym = 'TXF' ]-text OPTIONAL ) )
        default_extension   = 'XLSX'
        default_file_name   = v_default_file_name
        initial_directory   = gv_initial_dir
        prompt_on_overwrite = 'X'
      CHANGING
        filename            = v_filename
        path                = v_file_path
        fullpath            = v_full_path
      EXCEPTIONS
        cntl_error          = 1
        error_no_gui        = 2
        not_supported_by_gui = 3
        OTHERS              = 4
           ).
    IF sy-subrc <> 0.
*     TODO: Error Handling
    ENDIF.

    p_path = v_full_path.

  ENDMETHOD.


  METHOD f4_mlto.

    DATA: lt_return   TYPE STANDARD TABLE OF ddshretval,
          lt_mapping  TYPE STANDARD TABLE OF dselc,
          lv_dynfield TYPE help_info-dynprofld.

    SELECT name_text,
           smtp_addr
      FROM puser002 AS p1
     WHERE smtp_addr NE @space
      INTO TABLE @DATA(lt_addr).

    SORT lt_addr BY name_text AS TEXT .

    IF sy-subrc EQ 0.

      lv_dynfield = iv_fname.
      lt_mapping = VALUE #( ( fldname = 'F0001' dyfldname = lv_dynfield ) ).

      CALL FUNCTION 'F4IF_INT_TABLE_VALUE_REQUEST'
        EXPORTING
          retfield        = 'SMTP_ADDR'
          window_title    = CONV char30( VALUE #( gt_textlist[ sym = 'TXM' ]-text OPTIONAL ) )
          value_org       = 'S'
          dynpprog        = sy-repid
          dynpnr          = sy-dynnr
          dynprofield     = lv_dynfield
        TABLES
          value_tab       = lt_addr
          return_tab      = lt_return
          dynpfld_mapping = lt_mapping
        EXCEPTIONS
          parameter_error = 1
          no_values_found = 2
          OTHERS          = 3.

      IF sy-subrc <> 0.
        MESSAGE ID 'S' TYPE sy-msgty NUMBER sy-msgno
                       WITH sy-msgv1 sy-msgv2 sy-msgv3 sy-msgv4 DISPLAY LIKE 'I'.
      ELSE.
        READ TABLE lt_return REFERENCE INTO DATA(lr_return) INDEX 1.
        CHECK sy-subrc IS INITIAL.
        IF lv_dynfield EQ 'P_MLTO-LOW'.
          p_mlto-low = lr_return->fieldval.
        ELSE.
          p_mlto-high = lr_return->fieldval.
        ENDIF.
      ENDIF.

    ENDIF.

  ENDMETHOD.


  METHOD f4_ernam.

    DATA: lt_return   TYPE STANDARD TABLE OF ddshretval,
          lt_mapping  TYPE STANDARD TABLE OF dselc,
          lv_dynfield TYPE help_info-dynprofld.

    SELECT DISTINCT vb~ernam,
                    CASE WHEN ad~name_text IS NULL THEN vb~ernam ELSE ad~name_text END AS name_text
               FROM vbap AS vb
          LEFT JOIN user_addrs AS ad
                 ON ad~bname EQ vb~ernam
    INTO TABLE @DATA(lt_ernam).

    SORT lt_ernam BY name_text AS TEXT .

    IF sy-subrc EQ 0.

      lv_dynfield = iv_fname.
      lt_mapping = VALUE #( ( fldname = 'F0001' dyfldname = lv_dynfield ) ).

      CALL FUNCTION 'F4IF_INT_TABLE_VALUE_REQUEST'
        EXPORTING
          retfield        = 'ERNAM'
          window_title    = CONV char30( VALUE #( gt_textlist[ sym = 'TXU' ]-text OPTIONAL ) )
          value_org       = 'S'
          dynpprog        = sy-repid
          dynpnr          = sy-dynnr
          dynprofield     = lv_dynfield
        TABLES
          value_tab       = lt_ernam
          return_tab      = lt_return
          dynpfld_mapping = lt_mapping
        EXCEPTIONS
          parameter_error = 1
          no_values_found = 2
          OTHERS          = 3.

      IF sy-subrc <> 0.
        MESSAGE ID 'S' TYPE sy-msgty NUMBER sy-msgno
                       WITH sy-msgv1 sy-msgv2 sy-msgv3 sy-msgv4 DISPLAY LIKE 'I'.
      ELSE.
        READ TABLE lt_return REFERENCE INTO DATA(lr_return) INDEX 1.
        CHECK sy-subrc IS INITIAL.
        IF lv_dynfield EQ 'S_ERNAM-LOW'.
          s_ernam-low = lr_return->fieldval.
        ELSE.
          s_ernam-high = lr_return->fieldval.
        ENDIF.
      ENDIF.

    ENDIF.

  ENDMETHOD.


  METHOD f4_regio.

    DATA: lt_return   TYPE STANDARD TABLE OF ddshretval,
          lt_mapping  TYPE STANDARD TABLE OF dselc,
          lv_dynfield TYPE help_info-dynprofld.

    SELECT DISTINCT land1,
                    bland,
                    bezei
               FROM t005u AS vb
              WHERE spras EQ @sy-langu
           ORDER BY land1, bland
    INTO TABLE @DATA(lt_regio).

    IF sy-subrc EQ 0.
      lv_dynfield = iv_fname.
      lt_mapping = VALUE #( ( fldname = 'F0001' dyfldname = lv_dynfield ) ).

      CALL FUNCTION 'F4IF_INT_TABLE_VALUE_REQUEST'
        EXPORTING
          retfield        = 'BLAND'
          value_org       = 'S'
          dynpprog        = sy-cprog
          dynpnr          = sy-dynnr
          dynprofield     = lv_dynfield
        TABLES
          value_tab       = lt_regio
          return_tab      = lt_return
          dynpfld_mapping = lt_mapping
        EXCEPTIONS
          parameter_error = 1
          no_values_found = 2
          OTHERS          = 3.

      IF sy-subrc <> 0.
        MESSAGE ID 'S' TYPE sy-msgty NUMBER sy-msgno
                       WITH sy-msgv1 sy-msgv2 sy-msgv3 sy-msgv4 DISPLAY LIKE 'I'.
      ELSE.
        READ TABLE lt_return REFERENCE INTO DATA(lr_return) INDEX 1.
        CHECK sy-subrc IS INITIAL.
        IF lv_dynfield EQ 'S_REGIO-LOW'.
          s_regio-low = lr_return->fieldval.
        ELSE.
          s_regio-high = lr_return->fieldval.
        ENDIF.
      ENDIF.

    ENDIF.

  ENDMETHOD.


  METHOD clear_selection.

    CLEAR: p_blin, p_mein, p_wahr, p_cur1, p_cur2, p_wahr, p_wah2, p_zero, p_twoc, p_ocds, p_cdec, p_yval, p_grp1, p_grp2, p_grp3, p_grp4, p_grp5, p_grp6,
           p_addp, p_hlev, p_layo, p_layd, p_sort, p_asde, p_colr, p_expo, p_tech, p_disp, p_mail, p_excl, p_xval, p_path, s_parvw, p_body, p_info.
    REFRESH: s_fnams, s_aggrs, s_subts, s_auart, s_vkbur, s_audat, s_edatu, s_bldat, s_fkdat, s_vbeln, s_posnr, s_lfbel, s_fkbel, s_abgru, s_vgtyp, s_wbsta, s_fstat, s_partn,
             s_vkorg, s_vtweg, s_spart, s_kunnr, s_kunre, s_kunrg, s_zterm, s_inco1, s_vkaus, s_kunwe, s_kdgrp, s_werks, s_lgort, s_vstel, s_regio, s_augru, s_lfsta,
             s_cntry, s_matnr, s_matkl, s_mtart, s_bwtar, s_charg, s_mvgr1, s_mvgr2, s_mvgr3, s_mvgr4, s_mvgr5, s_mblnr, s_belnr, s_augbl, s_erdat, s_ernam, p_mlto.

    CLEAR: p_flt1a, p_flt1b, p_flt2a, p_flt2b, p_flt3a, p_flt3b, p_flt4a, p_flt4b, p_flt5a, p_flt5b,
           p_fld1a, p_fld1b, p_fld2a, p_fld2b, p_fld3a, p_fld3b, p_fld4a, p_fld4b, p_fld5a, p_fld5b,
           p_cnd1, p_cnd2, p_cnd3, p_cnd4, p_cnd5,
           p_fov1, p_fov2, p_fov3, p_fov4, p_fov5,
           p_opt2, p_opt3, p_opt4, p_opt5.

    p_term = 'S'.
    p_disp = '1'.
    p_addt = 'X'.
    p_oprp = 'X'.

    fill_subts( ).
    fill_aggrs( ).

  ENDMETHOD.


  METHOD set_title.

    DATA colgroup_title TYPE string.
    DATA conv_title TYPE string.
    DATA curr_title TYPE string.
    DATA aggr_title TYPE string.
    DATA lv_colfield TYPE string.
    DATA lv_datatype TYPE string.
    DATA lv_aggrtype TYPE string.

    IF p_yval IS NOT INITIAL AND gv_detail_view = abap_false.

      lv_colfield = VALUE #( gt_fieldlist[ slynr = p_yval ]-fname OPTIONAL ) .
      lv_aggrtype = VALUE #( gt_aggregation_fields[ fnam = lv_colfield ]-type OPTIONAL ).
      lv_datatype = VALUE #( gt_fcat[ fieldname = 'MENGE101' ]-datatype OPTIONAL ).

      CASE lv_aggrtype.
        WHEN 'P'.
          aggr_title = '%'.
        WHEN 'A'.
          aggr_title = VALUE #( gt_textlist[ sym = 'TW1' ]-text OPTIONAL ).
        WHEN 'W'.
          aggr_title = VALUE #( gt_textlist[ sym = 'TW4' ]-text OPTIONAL ).
        WHEN 'M'.
          aggr_title = VALUE #( gt_textlist[ sym = 'TW6' ]-text OPTIONAL ).
        WHEN 'L'.
          aggr_title = VALUE #( gt_textlist[ sym = 'TW7' ]-text OPTIONAL ).
      ENDCASE.

      colgroup_title = aggr_title && | | && VALUE #( gt_fieldlist[ slynr = p_yval ]-textl OPTIONAL ) .

      " AŞAĞIDAKİNİ fs_fcat datatype ile belirler CURR or QUAN

      IF lv_datatype EQ 'CURR'.
        IF gv_amt_cnv_all = abap_true AND p_wahr IS NOT INITIAL .
          conv_title = | (| && p_wahr && |)| .
          IF lv_colfield EQ 'LF_AMNT' .
            curr_title = VALUE #( gt_textlist[ sym = 'TT1' ]-text OPTIONAL ).
          ENDIF.
          IF lv_colfield EQ 'FK_AMNT' OR lv_colfield EQ 'TX_AMNT' OR lv_colfield EQ 'FK_TOTL'.
            curr_title = VALUE #( gt_textlist[ sym = 'TT2' ]-text OPTIONAL ).
          ENDIF.
          IF lv_colfield EQ 'LF_BAMN' OR lv_colfield EQ 'FK_BAMN' OR lv_colfield EQ 'FK_WAMN'.
            curr_title = VALUE #( gt_textlist[ sym = 'TT3' ]-text OPTIONAL ).
          ENDIF.
        ELSE.
          conv_title = VALUE #( gt_textlist[ sym = 'TT4' ]-text OPTIONAL ).
        ENDIF.
      ENDIF.

      IF lv_datatype EQ 'QUAN'.
        IF gv_mng_cnv_all = abap_true AND p_mein IS NOT INITIAL .
          CALL FUNCTION 'CONVERSION_EXIT_CUNIT_OUTPUT'
            EXPORTING
              input    = p_mein
              language = sy-langu
            IMPORTING
              output   = conv_title.
          conv_title = | (| && conv_title && |)| .
        ELSE.
          conv_title = VALUE #( gt_textlist[ sym = 'TT5' ]-text OPTIONAL ).
        ENDIF.
      ENDIF.

      IF variant_name IS NOT INITIAL.
        gv_alv_title = variant_name && | - | && colgroup_title && | | && conv_title && | | && curr_title .
      ELSE.
        gv_alv_title = colgroup_title && | | && conv_title && | | && curr_title .
      ENDIF.

    ELSE.

      IF variant_name IS NOT INITIAL .
        gv_alv_title = variant_name.
      ELSE.
        gv_alv_title = sy-title.
      ENDIF.

      IF gv_detail_view = abap_true.
        gv_alv_title = gv_alv_title && | - | && VALUE #( gt_textlist[ sym = 'TXD' ]-text OPTIONAL ).
      ENDIF.

    ENDIF.

  ENDMETHOD.


  METHOD ret_function_values.

    preyear = CONV string( CONV #( sy-datum(4) - 1 ) ).

    IF sy-datum+4(2) EQ '01'.
      preperiod = preyear && '12'.
    ELSE.
      IF CONV int2( sy-datum+4(2) ) LT 10.
        preperiod = sy-datum(4) && '0' && CONV string( CONV int2( sy-datum+4(2) ) - 1 ) .
      ELSE.
        preperiod = sy-datum(4) && CONV string( CONV int2( sy-datum+4(2) ) - 1 ) .
      ENDIF.
    ENDIF.

    yesterday = sy-datum - 1 .

    " mail ve excel hesaplanan değerler için kullanıcı bilgisi
    SELECT name_text, smtp_addr
      FROM puser002
     WHERE bname = @sy-uname
    INTO TABLE @DATA(lt_user).

    LOOP AT lt_user ASSIGNING FIELD-SYMBOL(<fs_user>).
      user_fullname = <fs_user>-name_text.
      user_mailaddr = <fs_user>-smtp_addr.
    ENDLOOP.

    user_name = sy-uname.
    tcode_name = sy-tcode.
    tcode_title = sy-title.  "  TSTC tablosu ???

    variant_code = p_vari.   "  SY-SLSET ???
    SELECT vtext
      FROM varit
     WHERE langu = @sy-langu
       AND report = @sy-cprog
       AND variant = @p_vari
    INTO TABLE @DATA(lt_varid).

    LOOP AT lt_varid ASSIGNING FIELD-SYMBOL(<fs_varid>).
      variant_name = <fs_varid>-vtext.
    ENDLOOP.

    display_code = p_layo.
    SELECT text
      FROM ltdxt
     WHERE relid   = 'LT'
       AND report  = @sy-cprog
       AND variant = @p_layo
    INTO TABLE @DATA(lt_layid).

    LOOP AT lt_layid ASSIGNING FIELD-SYMBOL(<fs_layid>).
      display_name = <fs_layid>-text.
    ENDLOOP.

    IF sy-batch IS INITIAL AND sy-binpt IS INITIAL.

      SELECT tcode
        FROM tstc
       WHERE pgmna  = @sy-cprog
      INTO TABLE @DATA(lt_tcode).

      LOOP AT lt_tcode ASSIGNING FIELD-SYMBOL(<fs_tcode>).

        IF <fs_tcode>-tcode = sy-tcode OR sy-tcode = 'SE38' OR sy-tcode = 'SEU_INT'.
          CALL METHOD cl_gui_frontend_services=>get_desktop_directory
            CHANGING
              desktop_directory = desktop_path
            EXCEPTIONS
              cntl_error        = 1.

          IF sy-subrc <> 0.
            MESSAGE ID sy-msgid TYPE sy-msgty NUMBER sy-msgno
                       WITH sy-msgv1 sy-msgv2 sy-msgv3 sy-msgv4.
          ENDIF.

          CALL METHOD cl_gui_cfw=>update_view.

          CALL METHOD cl_gui_frontend_services=>get_temp_directory
            CHANGING
              temp_dir   = temp_path
            EXCEPTIONS
              cntl_error = 1.
          IF sy-subrc <> 0.
            MESSAGE ID sy-msgid TYPE sy-msgty NUMBER sy-msgno
                       WITH sy-msgv1 sy-msgv2 sy-msgv3 sy-msgv4.
          ENDIF.

          CALL METHOD cl_gui_cfw=>update_view.
          EXIT.
        ENDIF.

      ENDLOOP.

    ENDIF.

    documents_path = desktop_path.
    REPLACE 'Desktop' IN documents_path WITH 'Documents'.
    downloads_path = desktop_path.
    REPLACE 'Desktop' IN downloads_path WITH 'Downloads'.

    CLEAR gt_functions[].

    APPEND VALUE #( modtext = '${DESKTOP}'        modval = desktop_path    ) TO gt_functions.
    APPEND VALUE #( modtext = '${DOCUMENTS}'      modval = documents_path  ) TO gt_functions.
    APPEND VALUE #( modtext = '${DOWNLOADS}'      modval = downloads_path  ) TO gt_functions.
    APPEND VALUE #( modtext = '${TEMP}'           modval = temp_path       ) TO gt_functions.
    APPEND VALUE #( modtext = '${USERNAME}'       modval = user_name       ) TO gt_functions.
    APPEND VALUE #( modtext = '${USERMAIL}'       modval = user_mailaddr   ) TO gt_functions.
    APPEND VALUE #( modtext = '${FULLNAME}'       modval = user_fullname   ) TO gt_functions.
    APPEND VALUE #( modtext = '${TCODE}'          modval = tcode_name      ) TO gt_functions.
    APPEND VALUE #( modtext = '${TITLE}'          modval = tcode_title     ) TO gt_functions.
    APPEND VALUE #( modtext = '${SELECTION}'      modval = variant_code    ) TO gt_functions.
    APPEND VALUE #( modtext = '${SELECTIONTITLE}' modval = variant_name    ) TO gt_functions.
    APPEND VALUE #( modtext = '${LAYOUT}'         modval = display_code    ) TO gt_functions.
    APPEND VALUE #( modtext = '${LAYOUTTITLE}'    modval = display_name    ) TO gt_functions.
    APPEND VALUE #( modtext = '${YEAR}'           modval = sy-datum(4)     ) TO gt_functions.
    APPEND VALUE #( modtext = '${MONTH}'          modval = sy-datum+4(2)   ) TO gt_functions.
    APPEND VALUE #( modtext = '${DAY}'            modval = sy-datum+6(2)   ) TO gt_functions.
    APPEND VALUE #( modtext = '${DATE}'           modval = sy-datum        ) TO gt_functions.
    APPEND VALUE #( modtext = '${TIME}'           modval = sy-uzeit(4)     ) TO gt_functions.
    APPEND VALUE #( modtext = '${PREYEAR}'        modval = preyear         ) TO gt_functions.
    APPEND VALUE #( modtext = '${PREPERIOD}'      modval = preperiod       ) TO gt_functions.
    APPEND VALUE #( modtext = '${YESTERDAY}'      modval = yesterday       ) TO gt_functions.

  ENDMETHOD.


  METHOD set_text_variables.

    l_obr0 = '('.
    l_cbr0 = ')'.
    l_obr1 = '('.
    l_obr2 = '('.
    l_cbr1 = ')'.
    l_cbr2 = ')'.

    IF but02 EQ icon_next_page.
      l_grp1 = VALUE #( gt_textlist[ sym = 'R01' ]-text OPTIONAL ).
      l_grp2 = VALUE #( gt_textlist[ sym = 'R02' ]-text OPTIONAL ).
      l_grp3 = VALUE #( gt_textlist[ sym = 'R03' ]-text OPTIONAL ).
      l_grp4 = VALUE #( gt_textlist[ sym = 'R04' ]-text OPTIONAL ).
      l_grp5 = VALUE #( gt_textlist[ sym = 'R05' ]-text OPTIONAL ).
      l_grp6 = VALUE #( gt_textlist[ sym = 'R06' ]-text OPTIONAL ).
    ELSE.
      l_grp1 = VALUE #( gt_textlist[ sym = 'R07' ]-text OPTIONAL ).
      l_grp2 = VALUE #( gt_textlist[ sym = 'R08' ]-text OPTIONAL ).
      l_grp3 = VALUE #( gt_textlist[ sym = 'R09' ]-text OPTIONAL ).
      l_grp4 = VALUE #( gt_textlist[ sym = 'R10' ]-text OPTIONAL ).
      l_grp5 = VALUE #( gt_textlist[ sym = 'R11' ]-text OPTIONAL ).
      l_grp6 = VALUE #( gt_textlist[ sym = 'R12' ]-text OPTIONAL ).
    ENDIF.

    fill_groups( ).

    l11 = VALUE #( gt_textlist[ sym = 'L11' ]-text OPTIONAL ).
    l12 = VALUE #( gt_textlist[ sym = 'L12' ]-text OPTIONAL ).
    l13 = VALUE #( gt_textlist[ sym = 'L13' ]-text OPTIONAL ).
    l14 = VALUE #( gt_textlist[ sym = 'L14' ]-text OPTIONAL ).
    l15 = VALUE #( gt_textlist[ sym = 'L15' ]-text OPTIONAL ).
    l16 = VALUE #( gt_textlist[ sym = 'L16' ]-text OPTIONAL ).
    l21 = VALUE #( gt_textlist[ sym = 'L21' ]-text OPTIONAL ).
    l22 = VALUE #( gt_textlist[ sym = 'L22' ]-text OPTIONAL ).
    l23 = VALUE #( gt_textlist[ sym = 'L23' ]-text OPTIONAL ).
    l31 = VALUE #( gt_textlist[ sym = 'L31' ]-text OPTIONAL ).
    l32 = VALUE #( gt_textlist[ sym = 'L32' ]-text OPTIONAL ).
    l33 = VALUE #( gt_textlist[ sym = 'L33' ]-text OPTIONAL ).
    l34 = VALUE #( gt_textlist[ sym = 'L34' ]-text OPTIONAL ).
    l41 = VALUE #( gt_textlist[ sym = 'L41' ]-text OPTIONAL ).
    l42 = VALUE #( gt_textlist[ sym = 'L42' ]-text OPTIONAL ).
    ptp = VALUE #( gt_textlist[ sym = 'PTP' ]-text OPTIONAL ).
    pbo = VALUE #( gt_textlist[ sym = 'PBO' ]-text OPTIONAL ).
    prv = VALUE #( gt_textlist[ sym = 'PRV' ]-text OPTIONAL ).
    pcp = VALUE #( gt_textlist[ sym = 'PCP' ]-text OPTIONAL ).
    pw1 = VALUE #( gt_textlist[ sym = 'PW1' ]-text OPTIONAL ).
    pc1 = VALUE #( gt_textlist[ sym = 'PC1' ]-text OPTIONAL ).
    pw2 = VALUE #( gt_textlist[ sym = 'PW2' ]-text OPTIONAL ).
    pc2 = VALUE #( gt_textlist[ sym = 'PC2' ]-text OPTIONAL ).
    ptw = VALUE #( gt_textlist[ sym = 'PTW' ]-text OPTIONAL ).
    pcd = VALUE #( gt_textlist[ sym = 'PCD' ]-text OPTIONAL ).
    poc = VALUE #( gt_textlist[ sym = 'POC' ]-text OPTIONAL ).
    pzr = VALUE #( gt_textlist[ sym = 'PZR' ]-text OPTIONAL ).
    pyv = VALUE #( gt_textlist[ sym = 'PYV' ]-text OPTIONAL ).
    pat = VALUE #( gt_textlist[ sym = 'PAT' ]-text OPTIONAL ).
    pbd = VALUE #( gt_textlist[ sym = 'PBD' ]-text OPTIONAL ).
    psr = VALUE #( gt_textlist[ sym = 'PSR' ]-text OPTIONAL ).
    pad = VALUE #( gt_textlist[ sym = 'PAD' ]-text OPTIONAL ).
    pdm = VALUE #( gt_textlist[ sym = 'PDM' ]-text OPTIONAL ).
    pco = VALUE #( gt_textlist[ sym = 'PCO' ]-text OPTIONAL ).
    pcs = VALUE #( gt_textlist[ sym = 'PCS' ]-text OPTIONAL ).
    ptc = VALUE #( gt_textlist[ sym = 'PTC' ]-text OPTIONAL ).
    pdd = VALUE #( gt_textlist[ sym = 'PDD' ]-text OPTIONAL ).
    ptr = VALUE #( gt_textlist[ sym = 'PTR' ]-text OPTIONAL ).
    pml = VALUE #( gt_textlist[ sym = 'PML' ]-text OPTIONAL ).
    psb = VALUE #( gt_textlist[ sym = 'PSB' ]-text OPTIONAL ).
    pex = VALUE #( gt_textlist[ sym = 'PEX' ]-text OPTIONAL ).
    plo = VALUE #( gt_textlist[ sym = 'PLO' ]-text OPTIONAL ).
    pws = VALUE #( gt_textlist[ sym = 'PWS' ]-text OPTIONAL ).
    pdr = VALUE #( gt_textlist[ sym = 'PDR' ]-text OPTIONAL ).
    pox = VALUE #( gt_textlist[ sym = 'POX' ]-text OPTIONAL ).
    sob = VALUE #( gt_textlist[ sym = 'SOB' ]-text OPTIONAL ).
    sop = VALUE #( gt_textlist[ sym = 'SOP' ]-text OPTIONAL ).
    ssk = VALUE #( gt_textlist[ sym = 'SSK' ]-text OPTIONAL ).
    slb = VALUE #( gt_textlist[ sym = 'SLB' ]-text OPTIONAL ).
    smb = VALUE #( gt_textlist[ sym = 'SMB' ]-text OPTIONAL ).
    sfb = VALUE #( gt_textlist[ sym = 'SFB' ]-text OPTIONAL ).
    snb = VALUE #( gt_textlist[ sym = 'SNB' ]-text OPTIONAL ).
    sab = VALUE #( gt_textlist[ sym = 'SAB' ]-text OPTIONAL ).
    sau = VALUE #( gt_textlist[ sym = 'SAU' ]-text OPTIONAL ).
    sag = VALUE #( gt_textlist[ sym = 'SAG' ]-text OPTIONAL ).
    sls = VALUE #( gt_textlist[ sym = 'SLS' ]-text OPTIONAL ).
    svt = VALUE #( gt_textlist[ sym = 'SVT' ]-text OPTIONAL ).
    sws = VALUE #( gt_textlist[ sym = 'SWS' ]-text OPTIONAL ).
    sfs = VALUE #( gt_textlist[ sym = 'SFS' ]-text OPTIONAL ).
    ocr = VALUE #( gt_textlist[ sym = 'OCR' ]-text OPTIONAL ).
    ocd = VALUE #( gt_textlist[ sym = 'OCD' ]-text OPTIONAL ).

  ENDMETHOD.


  METHOD export_data.  " (not quick but dirty.)

    " SALV FILTER
    DATA: ls_filter             TYPE  lvc_s_filt,
          lt_grouplevels        TYPE  lvc_t_grpl,
          iv_ignoring_case      TYPE  char01,
          lt_filter_index       TYPE  lvc_t_fidx,
          lt_grouplevels_filter TYPE  lvc_t_grpl.

    FIELD-SYMBOLS: <fs_itab>       TYPE STANDARD TABLE,
                   <fs_itab_sheet> TYPE STANDARD TABLE,
                   <ls_itab>       TYPE ANY TABLE,
                   <s_line>        TYPE any,
                   <f_line>        TYPE any,
                   <f_field>       TYPE any,
                   <index>         TYPE i.

    DATA  sheets_wa LIKE LINE OF gt_sheets.

    DATA  lt_ctyp TYPE STANDARD TABLE OF c WITH EMPTY KEY.
    DATA  lt_clen TYPE STANDARD TABLE OF i WITH EMPTY KEY.
    DATA  lt_ckey TYPE STANDARD TABLE OF c WITH EMPTY KEY.

    "  TABLES
    DATA: lr_table   TYPE REF TO data,
          ls_table   TYPE REF TO data,
          new_line   TYPE REF TO data,
          nsh_line   TYPE REF TO data,

          lo_node    TYPE REF TO cl_salv_node,
          lo_column  TYPE REF TO cl_salv_column,
          lo_table   TYPE REF TO cl_salv_table,
          lo_columns TYPE REF TO cl_salv_columns_table,
          lt_cols    TYPE salv_t_column_ref.

    " EXCEL
    DATA: lr_xlzip           TYPE REF TO cl_abap_zip,
          lr_xlzip_new       TYPE REF TO cl_abap_zip,
          lr_xlfile          TYPE REF TO cl_xml_document,
          lr_xlshstrfile     TYPE REF TO cl_xml_document,
          lr_xliterator      TYPE REF TO if_ixml_node_iterator,
          lr_xlnode          TYPE REF TO if_ixml_node,

          lr_xlcols          TYPE REF TO if_ixml_node_list,
          lr_xlrows          TYPE REF TO if_ixml_node_list,
          lr_xlcells         TYPE REF TO if_ixml_node_collection,
          lr_xlcol           TYPE REF TO if_ixml_element,
          lr_xlrow           TYPE REF TO if_ixml_element,
          lr_xlcell          TYPE REF TO if_ixml_element,

          lr_xlworksheet     TYPE REF TO if_ixml_element,
          lr_xldimension     TYPE REF TO if_ixml_node,
          lr_xlstylesheet    TYPE REF TO if_ixml_element,
          lr_xlformat        TYPE REF TO if_ixml_element,
          lr_xlsheetformatpr TYPE REF TO if_ixml_element,
          lr_xlphoneticpr    TYPE REF TO if_ixml_element,
          lr_xlsheetview     TYPE REF TO if_ixml_element,
          lr_xlsheets        TYPE REF TO if_ixml_element,
          lr_xlsheet         TYPE REF TO if_ixml_element,
          lr_xlrels          TYPE REF TO if_ixml_element,
          lr_xlrel           TYPE REF TO if_ixml_element,
          lr_xlautofilter    TYPE REF TO if_ixml_element,

          lr_xlstrings       TYPE REF TO if_ixml_node_list,
          lr_xlstring        TYPE REF TO if_ixml_element,
          lr_xlstringcells   TYPE REF TO if_ixml_node_list,
          lr_xlstringcell    TYPE REF TO if_ixml_element,
          lr_xlsst           TYPE REF TO if_ixml_element.

    DATA: lv_file         TYPE xstring,
          lv_xml          TYPE string,
          lv_sheet        TYPE string,
          lv_name         TYPE string,
          lv_dim          TYPE string,
          lv_num          TYPE int4,

          lv_x_field      TYPE string,
          lv_x_field_desc TYPE string,
          lv_sheet_num    TYPE int4,
          lv_sheet_rows   TYPE int4,
          lv_sheet_count  TYPE int2,
          lv_sheet_title  TYPE string,
          lv_sheet_no     TYPE string,
          lv_sheet_id     TYPE string,
          lv_sheet_file   TYPE string,
          lv_sheet_name   TYPE string,

          lv_file_name    TYPE string,
          lv_file_path    TYPE string,
          lv_full_path    TYPE string,

          lv_xstring      TYPE xstring,
          lv_size         TYPE i,
          lt_bintab       TYPE solix_tab.

    CREATE OBJECT lr_xlzip.
    CREATE OBJECT lr_xlzip_new.
    CREATE OBJECT lr_xlfile.
    CREATE OBJECT lr_xlshstrfile.

    " FILE NAME
    IF p_excl EQ 'X' OR p_mail EQ 'X'.
      IF p_path IS INITIAL.

        DATA tz0 TYPE string.
        tz0 = VALUE #( gt_textlist[ sym = 'TZ0' ]-text OPTIONAL ).
        CONCATENATE tz0 '_' sy-datum '_' sy-uzeit(4) '.xlsx' INTO lv_file_name.

        IF p_excl EQ 'X' AND sy-batch IS INITIAL AND sy-binpt IS INITIAL.
          cl_gui_frontend_services=>file_save_dialog(
            EXPORTING
              window_title        = CONV string( VALUE #( gt_textlist[ sym = 'TXF' ]-text OPTIONAL ) )
              default_extension   = 'XLSX'
              default_file_name   = lv_file_name
              initial_directory   = gv_initial_dir
              prompt_on_overwrite = 'X'
            CHANGING
              filename            = lv_file_name
              path                = gv_initial_dir
              fullpath            = lv_full_path
            EXCEPTIONS
              cntl_error          = 1
              error_no_gui        = 2
              not_supported_by_gui = 3
              OTHERS              = 4
                 ).
          IF sy-subrc <> 0.
*           TODO: Error Handling
          ENDIF.
        ELSE.
          lv_full_path = lv_file_name.
        ENDIF.

        IF lv_full_path IS INITIAL.
          RETURN.
        ELSE.
          p_path = lv_full_path.
        ENDIF.

      ELSE.

        LOOP AT gt_functions ASSIGNING FIELD-SYMBOL(<fs_functions>).
          REPLACE ALL OCCURRENCES OF <fs_functions>-modtext IN p_path WITH <fs_functions>-modval.
        ENDLOOP.

        REPLACE ALL OCCURRENCES OF REGEX '[\!\@\#\$\%\^\&\*\+\-\=\?\<\>\,\~\;\|\(\)\{\}\''\""]' IN p_path WITH '\_'.
        lv_full_path = p_path .

        CALL FUNCTION 'SO_SPLIT_FILE_AND_PATH'
          EXPORTING
            full_name     = lv_full_path
          IMPORTING
            stripped_name = lv_file_name
          EXCEPTIONS
            x_error       = 1
            OTHERS        = 2.

        IF lv_file_name IS INITIAL.
          lv_file_name = lv_full_path.
        ENDIF.

        lv_file_path = substring_before( val = lv_full_path sub = lv_file_name ).

        REPLACE ALL OCCURRENCES OF '.xlsx' IN lv_file_name WITH ''.
        REPLACE ALL OCCURRENCES OF '.xls' IN lv_file_name WITH ''.

        lv_file_name = lv_file_name && '.xlsx'.

        IF lv_file_path IS NOT INITIAL.
          lv_full_path = lv_file_path && lv_file_name.
        ELSE.
          lv_full_path = lv_file_name.
        ENDIF.

        IF sy-subrc <> 0.
          "     MESSAGE ID sy-msgid TYPE sy-msgty NUMBER sy-msgno
          "    WITH sy-msgv1 sy-msgv2 sy-msgv3 sy-msgv4.
        ENDIF.

      ENDIF.
    ENDIF.

    "****************************************************************
    "****************************************************************
    " SUBMIT REPORT AND GET DATA
    "****************************************************************
    cl_salv_bs_runtime_info=>set( display  = abap_false    "supress display of alv_grid
                                  metadata = abap_true
                                  data     = abap_true ).

    PERFORM submit_report.
    "****************************************************************
    "****************************************************************
    "****************************************************************

    " ALV SALV data
    cl_salv_bs_runtime_info=>get_data_ref( IMPORTING r_data = DATA(lr_itab) ).
    IF lr_itab IS INITIAL.
      RETURN.
    ENDIF.
    ASSIGN lr_itab->* TO <fs_itab>.

    " Meta data al
    DATA(ls_meta) = cl_salv_bs_runtime_info=>get_metadata( ).
    cl_salv_bs_runtime_info=>clear_all( ).

    " get rid off ref_field
    LOOP AT ls_meta-t_fcat ASSIGNING FIELD-SYMBOL(<fs_fcat>).
      <fs_fcat>-ref_field = ' '.
    ENDLOOP.

    " As Filtered Internal Table
    IF ls_meta-t_filter IS NOT INITIAL.
      READ TABLE ls_meta-t_filter INTO ls_filter INDEX 1.
      CALL FUNCTION 'LVC_FILTER_APPLY'
        EXPORTING
          it_fieldcatalog       = ls_meta-t_fcat
          it_filter             = ls_meta-t_filter
          it_grouplevels        = lt_grouplevels
          i_tabname             = ls_filter-tabname
          i_ignoring_case       = iv_ignoring_case
        IMPORTING
          et_filter_index       = lt_filter_index
          et_grouplevels_filter = lt_grouplevels_filter
        TABLES
          it_data               = <fs_itab>.
      SORT lt_filter_index BY table_line DESCENDING.
      LOOP AT lt_filter_index ASSIGNING <index>.
        DELETE <fs_itab> INDEX <index>.
      ENDLOOP.
    ENDIF.

    IF <fs_itab> IS INITIAL.
      RETURN.
    ENDIF.


    "**************************************************
    "**************************************************
    "**************************************************
    DATA(debug_test) = 0.
    IF debug_test NE 0.
      gv_max_level = gv_group_count.
      """"""""""""""""""""""""""""""""""""
      " Filtre varsa ağaç hiyerarşi düzelt
      """"""""""""""""""""""""""""""""""""
      IF ls_meta-t_filter IS NOT INITIAL AND p_disp EQ '3'.
        DATA(hier) = 0.
        DO gv_group_count TIMES.
          hier += 1.
          DATA(check) = 0.
          LOOP AT <fs_itab> ASSIGNING FIELD-SYMBOL(<fs_data>).
            ASSIGN COMPONENT 'HIERA' OF STRUCTURE <fs_data> TO FIELD-SYMBOL(<f_hier>).
            IF <f_hier> = hier.
              check = 1.
              gv_max_level = hier.
              EXIT.
            ENDIF.
          ENDLOOP.
          IF check EQ 0.
            DATA(next) = hier.
            DATA(check_next) = 0.
            WHILE check_next EQ 0 AND next LE gv_group_count.
              next = next + 1.
              LOOP AT <fs_itab> ASSIGNING FIELD-SYMBOL(<fn_data>).
                ASSIGN COMPONENT 'HIERA' OF STRUCTURE <fn_data> TO FIELD-SYMBOL(<f_next>).
                IF <f_next> = next.
                  check_next = 1.
                  EXIT.
                ENDIF.
              ENDLOOP.
            ENDWHILE.
            IF check_next EQ 1.
              LOOP AT <fs_itab> ASSIGNING FIELD-SYMBOL(<ft_data>).
                ASSIGN COMPONENT 'HIERA' OF STRUCTURE <ft_data> TO FIELD-SYMBOL(<f_setn>).
                IF <f_setn> EQ next.
                  <f_setn> = hier .
                ENDIF.
              ENDLOOP.
              gv_max_level = hier.
            ENDIF.
          ENDIF.
        ENDDO.
      ENDIF.
    ENDIF.
    "**************************************************
    "**************************************************
    "**************************************************

    DATA(max_hiera) = 0.

    LOOP AT <fs_itab> ASSIGNING FIELD-SYMBOL(<fs_dummy>).
      ASSIGN COMPONENT 'HIERA' OF STRUCTURE <fs_dummy> TO <f_field>.
      IF <f_field> GT max_hiera.
        max_hiera = <f_field>.
      ENDIF.
    ENDLOOP.

    IF p_wrks EQ 'X'.
      max_hiera -= 1.
    ENDIF.

    " CALC WORKSHEETS +TITLES
    IF p_wrks IS NOT INITIAL.

      CLEAR   gt_sheets.
      REFRESH gt_sheets.

      IF s_fnams[] IS NOT INITIAL.
        lv_x_field = s_fnams[ 1 ]-low.
      ELSE.
        lv_x_field = VALUE #( gt_fieldlist[ isgrp = p_xval ]-fname ).
      ENDIF.

      lv_sheet_count = 0.
      LOOP AT <fs_itab> ASSIGNING FIELD-SYMBOL(<fs_itab_group>)
                                      GROUP BY ( level = ret_group_level( i_ls_value = <fs_itab_group> iv_level = lv_x_field )
                                                 size  = GROUP SIZE
                                                 index = GROUP INDEX )
                                     ASCENDING AS TEXT
                                     REFERENCE INTO DATA(sheet_group).

        lv_sheet_rows = 0.

        LOOP AT GROUP sheet_group ASSIGNING FIELD-SYMBOL(<fs_group_item>).
          lv_sheet_rows += 1.
        ENDLOOP.

        IF p_addp IS NOT INITIAL OR p_addt IS NOT INITIAL OR p_disp EQ '3'.
          ASSIGN COMPONENT 'HIERA' OF STRUCTURE <fs_group_item> TO <f_field>.
          IF <f_field> EQ 0.
            CONTINUE.
          ENDIF.
        ENDIF.

        IF VALUE #( gt_fieldlist[ fname = lv_x_field ]-grpx2 OPTIONAL ) IS INITIAL.
          lv_x_field_desc = VALUE #( gt_fieldlist[ fname = lv_x_field ]-grpx1 OPTIONAL ).
        ENDIF.

        ASSIGN COMPONENT lv_x_field OF STRUCTURE <fs_group_item> TO <f_field>.
        IF <f_field> IS NOT INITIAL.
          lv_sheet_title = <f_field>.
          IF lv_x_field_desc IS NOT INITIAL.
            ASSIGN COMPONENT lv_x_field_desc OF STRUCTURE <fs_group_item> TO <f_field>.
            IF p_nolb IS INITIAL.
              lv_sheet_title = lv_sheet_title && | - | && <f_field>.
            ELSE.
              lv_sheet_title = <f_field>.
            ENDIF.
          ENDIF.
        ELSE.
          lv_sheet_title = '-'.
        ENDIF.

        IF strlen( lv_sheet_title ) GT 31.
          lv_sheet_title = substring( val = lv_sheet_title off = 0 len = 31 ).
        ENDIF.

        sheets_wa-count = lv_sheet_rows.
        sheets_wa-title = lv_sheet_title.
        APPEND sheets_wa TO gt_sheets.

        lv_sheet_count += 1.

        IF lv_sheet_count GT gv_max_xlsheets.
          MESSAGE VALUE #( gt_textlist[ sym = 'A03' ]-text OPTIONAL ) TYPE 'S' DISPLAY LIKE 'E'.
          RETURN.
        ENDIF.

      ENDLOOP.

    ELSE.

      """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
      " set_title( ).
      " lv_sheet_title = gv_alv_title.
      " IF strlen( lv_sheet_title ) GT 31.
      "   lv_sheet_title = substring( val = lv_sheet_title off = 0 len = 31 ).
      " ENDIF.
      " """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

      lv_sheet_count = 1.

    ENDIF.


    " EXPORT TO EXCEL
    IF s_fnams[] IS INITIAL.

      " ********************************************************************************
      " Seçilen çalışma sayfası alanı için sheet no ve sıralama önceden yapıldı
      " Her bir sheet'teki satır sayısı ile sheet1.xml bölünerek yeni sayfalara taşınır.
      " ********************************************************************************

      DATA: row_start    TYPE int4.
      DATA: row_end      TYPE int4.

      DATA: lv_header  TYPE string.
      DATA: lv_temp    TYPE string.
      DATA: lv_base    TYPE string.
      DATA: lv_body    TYPE string.
      DATA: lv_footer  TYPE string.

      DATA: rownum_str TYPE string.
      DATA: cell_rval  TYPE string.
      DATA: col_width  TYPE int4.

      DATA: st_string TYPE string,
            en_string TYPE string.

      DATA s_val TYPE c.

      " Result Salv Data
      DATA(go_salv_ex_res) = cl_salv_ex_util=>factory_result_data_table( r_data          = REF #( <fs_itab> )
                                                                         t_fieldcatalog  = ls_meta-t_fcat
                                                                         s_layout        = ls_meta-s_layout
                                                                         t_sort          = ls_meta-t_sort
                                                                         t_filter        = ls_meta-t_filter ).

      cl_salv_bs_tt_util=>if_salv_bs_tt_util~transform(
        EXPORTING
          xml_type      = if_salv_bs_xml=>c_type_xlsx
          xml_version   = cl_salv_bs_a_xml_base=>get_version( )
          r_result_data = go_salv_ex_res
          xml_flavour   = if_salv_bs_c_tt=>c_tt_xml_flavour_export
          gui_type      = if_salv_bs_xml=>c_gui_type_gui
        IMPORTING
          xml           = lv_xstring ).

      lr_xlzip->load( lv_xstring ).
      lr_xlzip->get( EXPORTING name = 'xl/worksheets/sheet1.xml' IMPORTING content = lv_file ).

      IF p_wrks IS NOT INITIAL.
        lr_xlzip_new->load( lv_xstring ).
        lr_xlzip_new->delete( EXPORTING name = 'xl/worksheets/sheet1.xml' ).
      ENDIF.

      cl_bcs_convert=>xstring_to_string(
             EXPORTING
               iv_xstr   = lv_file
               iv_cp     =  1100     " SAP character set identification
             RECEIVING
               rv_string = lv_xml
           ).

      lv_header = substring_before( val = lv_xml sub = |<row r="2"| ).
      lv_temp = substring_from( val = lv_xml sub = |<row r="2"| ).
      lv_base = substring_before( val = lv_temp sub = |</sheetData>| ).
      lv_footer = substring_from( val = lv_xml sub = |</sheetData>| ).

      IF p_zero IS NOT INITIAL.
        REPLACE ALL OCCURRENCES OF '<v>0</v>' IN lv_base WITH '<v></v>'.
      ENDIF.

      lv_sheet_num = 1.
      row_end = 2.

      DO lv_sheet_count TIMES.

        IF p_wrks IS NOT INITIAL.

          READ TABLE gt_sheets INDEX lv_sheet_num ASSIGNING FIELD-SYMBOL(<ls_sheets>).

          lv_sheet_title = <ls_sheets>-title.

          row_start = row_end.
          st_string = |<row r="| && row_end && |"| .

          row_end = row_end + <ls_sheets>-count.
          en_string = |<row r="| && row_end && |"| .

          lv_temp = substring_from( val = lv_base sub = st_string ).
          lv_body = substring_before( val = lv_temp sub = en_string ).
          IF lv_body IS INITIAL.
            lv_body = lv_temp.
          ENDIF.

          lv_sheet = lv_header && lv_body && lv_footer.
        ELSE.
          lv_sheet = lv_header && lv_base && lv_footer.
        ENDIF.

        CALL FUNCTION 'SCMS_STRING_TO_XSTRING'
          EXPORTING
            text   = lv_sheet
          IMPORTING
            buffer = lv_file.

        lr_xlfile->parse_xstring( lv_file ).

        lr_xlsheetview ?= lr_xlfile->find_node( 'sheetView' ).
        lr_xlsheetview->set_attribute_ns( name = 'zoomScale' value = condense( CONV string( gv_xl_zoomscale ) ) ).
        lr_xlsheetview->set_attribute_ns( name = 'zoomScaleNormal' value = condense( CONV string( gv_xl_zoomscale ) ) ).

        IF lv_sheet_num GT 1.
          " selected tab kaldır
          lr_xlsheetview->remove_attribute_ns( name = 'tabSelected' ).

          " Satır ve hücre yeniden numaralandır
          lr_xlnode = lr_xlfile->find_node( 'sheetData' ).
          lr_xlrows = lr_xlnode->get_children( ).
          DO lr_xlrows->get_length( ) TIMES.
            lr_xlrow ?= lr_xlrows->get_item( sy-index - 1 ).
            rownum_str = sy-index.
            lr_xlrow->set_attribute_ns( name = 'r' value = rownum_str ).
            lr_xlcells = lr_xlrow->get_elements_by_tag_name( name = 'c' ).
            DO lr_xlcells->get_length( ) TIMES.
              lr_xlcell ?= lr_xlcells->get_item( sy-index - 1 ).
              cell_rval = lr_xlcell->get_attribute_ns( name = 'r' ).
              REPLACE ALL OCCURRENCES OF REGEX '[\d]' IN cell_rval WITH ''.
              cell_rval = cell_rval && rownum_str.
              lr_xlcell->set_attribute_ns( name = 'r' value = cell_rval ).
            ENDDO.
          ENDDO.
        ENDIF.

        " autofilter ekle
        lr_xlworksheet ?= lr_xlfile->find_node( 'worksheet' ).
        lr_xldimension ?= lr_xlfile->find_node( 'dimension' ).
        lv_dim = lr_xlfile->get_node_attribute( name = 'ref' node = lr_xldimension ).
        IF p_wrks EQ 'X'.
          DATA(tmp_value) = substring_after( val = lv_dim sub = ':' ).
          REPLACE ALL OCCURRENCES OF REGEX '[^0-9]' IN tmp_value WITH ''.
          REPLACE ALL OCCURRENCES OF tmp_value IN lv_dim WITH CONV string( <ls_sheets>-count + 1 ).
          CONDENSE lv_dim NO-GAPS.
        ENDIF.
        lr_xlautofilter = cl_ixml=>create( )->create_document( )->create_element( name = 'autoFilter' ).
        lr_xlautofilter->set_attribute( name = 'ref' value = lv_dim ).
        lr_xlphoneticpr ?= lr_xlfile->find_node( 'phoneticPr' ).
        lr_xlworksheet->if_ixml_node~insert_child( new_child = lr_xlautofilter ref_child = lr_xlphoneticpr ).

        "  tekrar xstring e dönüştür
        lr_xlfile->render_2_xstring( IMPORTING stream = lv_file ).

        " geri yaz
        """"""""""""""""
        IF p_wrks IS INITIAL.
          lr_xlzip->delete( EXPORTING name = 'xl/worksheets/sheet1.xml' ).
          lr_xlzip->add( EXPORTING name = 'xl/worksheets/sheet1.xml' content = lv_file ).
        ELSE.
          lv_sheet_name =  'xl/worksheets/sheet' && lv_sheet_num && '.xml'.
          lr_xlzip_new->add( EXPORTING name = lv_sheet_name content = lv_file ).
        ENDIF.

        lv_sheet_num += 1.

      ENDDO.

    ELSE.

      " ***********************************************************
      " Gruplanmış rapor için ilk kolon bazında itab->xml oluştur
      " elde edilen sheet'ler ayrı bir zip dosyaya kopyalanır
      " ***********************************************************

      LOOP AT ls_meta-t_fcat ASSIGNING <fs_fcat>.
        IF <fs_fcat>-inttype EQ 'P'.
          <fs_fcat>-intlen = 25 .
        ENDIF.
      ENDLOOP.

      DATA: wa_fieldcat LIKE LINE OF ls_meta-t_fcat.
      wa_fieldcat-fieldname = 'SCOL_TAB'.
      wa_fieldcat-ref_field = 'COLTAB'.
      wa_fieldcat-ref_table = 'CALENDAR_TYPE'.
      APPEND wa_fieldcat TO ls_meta-t_fcat.

      " Grup data
      CALL METHOD cl_alv_table_create=>create_dynamic_table
        EXPORTING
          "i_style_table            = 'X'
          it_fieldcatalog           = ls_meta-t_fcat
        IMPORTING
          ep_table                  = lr_table
        EXCEPTIONS
          generate_subpool_dir_full = 1
          OTHERS                    = 2.

      ASSIGN lr_table->* TO <ls_itab>.
      MOVE-CORRESPONDING <fs_itab> TO <ls_itab>.
      " Boş satır
      CREATE DATA new_line LIKE LINE OF <ls_itab>.
      ASSIGN new_line->* TO <f_line>.

      " Grup data sheet
      CALL METHOD cl_alv_table_create=>create_dynamic_table
        EXPORTING
          "i_style_table             = 'X'
          it_fieldcatalog           = ls_meta-t_fcat
        IMPORTING
          ep_table                  = ls_table
        EXCEPTIONS
          generate_subpool_dir_full = 1
          OTHERS                    = 2.

      ASSIGN ls_table->* TO <fs_itab_sheet>.
      " Boş satır
      CREATE DATA nsh_line LIKE LINE OF <fs_itab_sheet>.
      ASSIGN nsh_line->* TO <s_line>.

      """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
      " Gruplanmış
      DATA(group_count) = gv_group_count.

      IF p_wrks EQ 'X'.
        group_count -= 1.
      ENDIF.

      IF p_yval IS NOT INITIAL.
        group_count -= 1.
      ENDIF.
      """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

      lv_sheet_num = 1.

      DO lv_sheet_count TIMES.

        CLEAR <fs_itab_sheet>.

        IF p_wrks EQ 'X'.
          LOOP AT <ls_itab> ASSIGNING <f_line>.
            ASSIGN COMPONENT 'SHEET' OF STRUCTURE <f_line> TO <f_field>.
            ASSIGN COMPONENT 'HIERA' OF STRUCTURE <f_line> TO FIELD-SYMBOL(<f_hiera>).
            " Genel toplam yoksa en üst kategori satırı yok
            IF <f_field> NE 0 AND <f_field> EQ lv_sheet_num .
              APPEND INITIAL LINE TO <fs_itab_sheet> ASSIGNING <s_line>.
              MOVE-CORRESPONDING <f_line> TO <s_line>.
            ENDIF.
          ENDLOOP.
        ELSE.
          <fs_itab_sheet>[] = <ls_itab>[].
        ENDIF.

        " fcat ve filtre ile SALV table
        cl_salv_table=>factory( IMPORTING
                                  r_salv_table = lo_table
                                CHANGING
                                  t_table = <fs_itab_sheet> ).

        " FUNC
        lo_table->get_functions( )->set_all( abap_true ).

        " Kolonları gizle / göster
        lo_columns = lo_table->get_columns( ).
        lt_cols = lo_columns->get( ).

        LOOP AT lt_cols ASSIGNING FIELD-SYMBOL(<ls_col>).

          lo_column ?= <ls_col>-r_column.

          LOOP AT ls_meta-t_fcat ASSIGNING FIELD-SYMBOL(<ls_fcat>).
            IF <ls_fcat>-fieldname EQ <ls_col>-columnname AND ( <ls_fcat>-no_out EQ 'X' OR <ls_fcat>-tech EQ 'X' ).
              lo_column->set_visible( value  = if_salv_c_bool_sap=>false ).
            ENDIF.
          ENDLOOP.

          IF <ls_col>-columnname EQ 'HIERA' AND ( p_disp EQ '3' OR group_count EQ 1 ).
            lo_column->set_visible( value  = if_salv_c_bool_sap=>false ).
          ENDIF.

          IF VALUE #( ls_meta-t_fcat[ fieldname = <ls_col>-columnname ]-key OPTIONAL ) IS NOT INITIAL.
            IF p_nolb EQ 'X'.
              IF VALUE #( gt_fieldlist[ grpx1 = <ls_col>-columnname ]-fname OPTIONAL ) IS NOT INITIAL.
                lo_column->set_visible( value  = if_salv_c_bool_sap=>false ).
              ENDIF.
            ENDIF.
            IF p_nolb EQ 'Y'.
              IF VALUE #( gt_fieldlist[ fname = <ls_col>-columnname ]-grpx1 OPTIONAL ) IS NOT INITIAL.
                lo_column->set_visible( value  = if_salv_c_bool_sap=>false ).
              ENDIF.
            ENDIF.
          ENDIF.

          IF lo_column->is_visible( ) = if_salv_c_bool_sap=>true.

            DATA(datatype) = VALUE #( ls_meta-t_fcat[ fieldname = <ls_col>-columnname ]-datatype OPTIONAL ).
            DATA(inttype)  = VALUE #( ls_meta-t_fcat[ fieldname = <ls_col>-columnname ]-inttype  OPTIONAL ).
            DATA(decimals) = VALUE #( ls_meta-t_fcat[ fieldname = <ls_col>-columnname ]-decimals_o OPTIONAL ).
            IF decimals IS INITIAL.
              decimals = VALUE #( ls_meta-t_fcat[ fieldname = <ls_col>-columnname ]-decimals OPTIONAL ).
            ENDIF.

            lo_column->set_short_text( ' ' ).
            lo_column->set_medium_text( ' ' ).
            lo_column->set_long_text( VALUE #( ls_meta-t_fcat[ fieldname = <ls_col>-columnname ]-scrtext_l OPTIONAL ) ).

            CASE inttype.
              WHEN 'P'.
                IF datatype = 'QUAN' OR decimals EQ 3.
                  INSERT 'Q' INTO TABLE lt_ctyp.   " Quantity
                ELSEIF datatype = 'CURR' OR decimals EQ 2.
                  INSERT 'C' INTO TABLE lt_ctyp.   " Currency
                ELSE.  "'DEC' OR 'FLTP'.
                  IF decimals EQ 0.
                    INSERT 'I' INTO TABLE lt_ctyp. " Integer
                  ELSE.
                    INSERT 'F' INTO TABLE lt_ctyp. " Decimal
                  ENDIF.
                ENDIF.
              WHEN 'X' OR 'I' OR '8' OR '4'.
                INSERT 'I' INTO TABLE lt_ctyp.     " Integer
              WHEN 'D'.
                INSERT 'D' INTO TABLE lt_ctyp.     " Date
              WHEN 'T'.
                INSERT 'T' INTO TABLE lt_ctyp.     " Time
              WHEN OTHERS.
                INSERT 'S' INTO TABLE lt_ctyp.     " String
            ENDCASE.

            INSERT CONV #( lo_column->get_ddic_intlen( ) ) INTO TABLE lt_clen.

            IF VALUE #( ls_meta-t_fcat[ fieldname = <ls_col>-columnname ]-key OPTIONAL ) IS NOT INITIAL.
              INSERT 'X' INTO TABLE lt_ckey.
            ELSE.
              INSERT ' ' INTO TABLE lt_ckey.
            ENDIF.

          ENDIF.

        ENDLOOP.

        lv_xstring = lo_table->to_xml( if_salv_bs_xml=>c_type_xlsx ).

        lr_xlzip->load( lv_xstring ).

        "********************************************
        lr_xlzip->get( EXPORTING name = 'xl/sharedStrings.xml' IMPORTING content = lv_file ).
        lr_xlshstrfile->parse_xstring( lv_file ).
        lr_xlnode = lr_xlshstrfile->find_node( 'sst' ).
        lr_xlstrings = lr_xlnode->get_children( ).
        "********************************************

        lr_xlzip->get( EXPORTING name = 'xl/worksheets/sheet1.xml' IMPORTING content = lv_file ).

        IF p_wrks EQ 'X' AND lv_sheet_num = 1.
          lr_xlzip_new->load( lv_xstring ).
          lr_xlzip_new->delete( EXPORTING name = 'xl/worksheets/sheet1.xml' ).
        ENDIF.

        " xstring oku
        lr_xlfile->parse_xstring( lv_file ).

        """""""""""""""""""""""""""""""""""""""""""""""""""
        " Excel gizlenecek kolon başlangıç-bitiş bul
        IF p_wrks EQ 'X'.
          DATA(hide_stc) = 1.
          IF group_count GT 1 AND p_disp NE '3'.
            hide_stc += 1.
          ENDIF.
          DATA(hide_enc) = hide_stc.
          IF p_nolb IS INITIAL.
            IF VALUE #( gt_fieldlist[ fname = lv_x_field ]-grpx1 OPTIONAL ) IS NOT INITIAL.
              hide_enc += 1.
            ENDIF.
            IF VALUE #( gt_fieldlist[ fname = lv_x_field ]-grpx2 OPTIONAL ) IS NOT INITIAL.
              hide_enc += 1.
            ENDIF.
            IF VALUE #( gt_fieldlist[ fname = lv_x_field ]-grpx3 OPTIONAL ) IS NOT INITIAL.
              hide_enc += 1.
            ENDIF.
          ENDIF.
        ENDIF.
        """"""""""""""""""""""""""""""""""""""""""""""""""""

        " kolon genişlikleri sabitle
        lr_xlnode = lr_xlfile->find_node( 'cols' ).
        lr_xlcols = lr_xlnode->get_children( ).
        DO lr_xlcols->get_length( ) TIMES.
          lr_xlcol ?= lr_xlcols->get_item( sy-index - 1 ).

          """"""""""""""""""""""""""""""""""""
          """"""""""""""""""""""""""""""""""""
          IF p_wrks EQ 'X' AND p_layo IS INITIAL AND ( sy-index GE hide_stc AND sy-index LE hide_enc ).
            lr_xlcol->set_attribute_ns( name = 'hidden' value = '1' ).
            lr_xlcol->set_attribute_ns( name = 'bestFit' value = '' ).
          ENDIF.
          """"""""""""""""""""""""""""""""""""
          """"""""""""""""""""""""""""""""""""
          IF p_colr IS NOT INITIAL.
            col_width = lr_xlcol->get_attribute_ns( name = 'width' ).
            IF col_width GT 40.
              lr_xlcol->set_attribute_ns( name = 'width' value = '40' ).
            ENDIF.

            CASE lt_ctyp[ sy-index ].
              WHEN 'Q'.
                lr_xlcol->set_attribute_ns( name = 'width' value = '14' ).
              WHEN 'C'.
                lr_xlcol->set_attribute_ns( name = 'width' value = '15' ).
            ENDCASE.
          ENDIF.
        ENDDO.

        " Başlık biçimlendir
        lr_xlnode = lr_xlfile->find_node( 'sheetData' ).
        lr_xlrows = lr_xlnode->get_children( ).
        DATA(color_variant) = 5.
        lr_xlrow ?= lr_xlrows->get_item( 0 ).
        lr_xlcells = lr_xlrow->get_elements_by_tag_name( name = 'c' ).
        DO lr_xlcells->get_length( ) TIMES.
          lr_xlcell ?= lr_xlcells->get_item( sy-index - 1 ).
          lr_xlcell->set_attribute_ns( name = 's' value = condense( CONV string( color_variant ) ) ).
          DATA(t_val) = lr_xlcell->get_attribute_ns( name = 't' ).
          IF t_val IS NOT INITIAL.
            lr_xlcell->remove_attribute_ns( name = 't' ).
            lr_xlcell->set_attribute_ns( name = 't' value = 's' ).
          ENDIF.

          IF t_val EQ 's'.
            DATA(cval) = lr_xlcell->get_value( ).
            lv_num = cval.

            lr_xlstring ?= lr_xlstrings->get_item( ( lv_num ) ).
            lr_xlstringcell ?= lr_xlstring->get_children( )->get_item( 0 ).

            DATA(lv_string2) = lr_xlstringcell->get_value( ).
            lr_xlcell->get_last_child( )->remove_node( ).

            " t değeri sonda olması için kaldır ve tekrar oluştur
            lr_xlcell->remove_attribute_ns( name = 't' ).
            lr_xlcell->set_attribute_ns( name = 't' value = 'inlineStr' ).

            DATA(lr_xlcell_is2) = lr_xlshstrfile->create_simple_element( name = 'is' ).
            lr_xlcell->append_child( lr_xlcell_is2 ) .

            DATA(lr_xlcell_t2) = lr_xlshstrfile->create_simple_element( name = 't' ).
            lr_xlcell_is2->append_child( lr_xlcell_t2 ) .

            lr_xlcell_t2->set_value( lv_string2 ).
          ENDIF.

        ENDDO.

        lr_xlsheetview ?= lr_xlfile->find_node( 'sheetView' ).
        lr_xlsheetview->set_attribute_ns( name = 'zoomScale' value = condense( CONV string( gv_xl_zoomscale ) ) ).
        lr_xlsheetview->set_attribute_ns( name = 'zoomScaleNormal' value = condense( CONV string( gv_xl_zoomscale ) ) ).

        IF lv_sheet_num GT 1.
          " selected tab kaldır
          lr_xlsheetview->remove_attribute_ns( name = 'tabSelected' ).
        ENDIF.

        " autofilter ekle
        lr_xlworksheet ?= lr_xlfile->find_node( 'worksheet' ).
        lr_xldimension ?= lr_xlfile->find_node( 'dimension' ).
        lv_dim = lr_xlfile->get_node_attribute( name = 'ref' node = lr_xldimension ).
        lr_xlautofilter = cl_ixml=>create( )->create_document( )->create_element( name = 'autoFilter' ).
        lr_xlautofilter->set_attribute( name = 'ref' value = lv_dim ).
        lr_xlphoneticpr ?= lr_xlfile->find_node( 'phoneticPr' ).
        lr_xlworksheet->if_ixml_node~insert_child( new_child = lr_xlautofilter ref_child = lr_xlphoneticpr ).

        " Grup renk-level vs.
        IF group_count GT 0.

          LOOP AT <fs_itab_sheet> ASSIGNING <s_line>.

            ASSIGN COMPONENT 'HIERA' OF STRUCTURE <s_line> TO <f_field>.

            IF p_wrks EQ 'X'.
              <f_field> -= 1.
            ENDIF.

            color_variant = 0.

            lr_xlrow ?= lr_xlrows->get_item( sy-tabix ).
            lr_xlcells = lr_xlrow->get_elements_by_tag_name( name = 'c' ).

            DO lr_xlcells->get_length( ) TIMES.
              lr_xlcell ?= lr_xlcells->get_item( sy-index - 1 ).

              DATA(ngtf) = ' '.
              DATA(rval) = lr_xlcell->get_value( ).
              DATA(dumb) = lt_ctyp[ sy-index ].
              IF dumb NE 'S' AND rval CA '-'.
                ngtf = 'X'.
              ENDIF.

              IF p_zero IS NOT INITIAL.
                IF dumb NE 'S' AND rval NA '123456789'.
                  lr_xlcell->set_value( '' ).
                ENDIF.
              ENDIF.

              "***************************************
              " Hücre biçimlendir
              "***************************************
              "  s_val = lr_xlcell->get_attribute_ns( name = 's' ).
              IF p_cdec IS INITIAL.
                IF dumb EQ 'Q' AND (
                      rval CS '.1' OR
                      rval CS '.2' OR
                      rval CS '.3' OR
                      rval CS '.4' OR
                      rval CS '.5' OR
                      rval CS '.6' OR
                      rval CS '.7' OR
                      rval CS '.8' OR
                      rval CS '.9' ).
                  s_val = 'X'.
                ELSE.
                  s_val = ''.
                ENDIF.
              ELSE.
                s_val = 'X'.
              ENDIF.

              IF CONV i( <f_field> ) EQ CONV i( max_hiera ).
                CASE dumb.
                  WHEN 'I'.
                    IF ngtf IS INITIAL.
                      color_variant = 2.
                    ELSE.
                      color_variant = 7.
                    ENDIF.
                  WHEN 'Q'.
                    IF s_val EQ 'X'.
                      IF ngtf IS INITIAL.
                        color_variant = 3.
                      ELSE.
                        color_variant = 8.
                      ENDIF.
                    ELSE.
                      IF ngtf IS INITIAL.
                        color_variant = 2.
                      ELSE.
                        color_variant = 7.
                      ENDIF.
                    ENDIF.
                  WHEN 'C' OR 'F'.
                    IF ngtf IS INITIAL.
                      color_variant = 4.
                    ELSE.
                      color_variant = 9.
                    ENDIF.
                  WHEN 'D'.
                    IF lt_ckey[ sy-index ] IS NOT INITIAL.
                      color_variant = 15.
                    ELSE.
                      color_variant = 12.
                    ENDIF.
                  WHEN 'T'.
                    IF lt_ckey[ sy-index ] IS NOT INITIAL.
                      color_variant = 16.
                    ELSE.
                      color_variant = 13.
                    ENDIF.
                  WHEN OTHERS.
                    IF lt_ckey[ sy-index ] IS NOT INITIAL.
                      color_variant = 14.
                    ELSE.
                      IF ngtf IS INITIAL.
                        color_variant = 0.
                      ELSE.
                        color_variant = 6.
                      ENDIF.
                    ENDIF.
                ENDCASE.
              ELSE.
                CASE dumb.
                  WHEN 'I'.
                    color_variant = <f_field> + 30.
                  WHEN 'Q'.
                    IF s_val EQ 'X'.
                      color_variant = <f_field> + 43.
                    ELSE.
                      color_variant = <f_field> + 30.
                    ENDIF.
                  WHEN 'C' OR 'F'.
                    color_variant = <f_field> + 56.
                  WHEN 'D'.
                    color_variant = <f_field> + 69.
                  WHEN OTHERS.
                    color_variant = <f_field> + 17.
                ENDCASE.
              ENDIF.

              lr_xlcell->set_attribute_ns( name = 's' value = condense( CONV string( color_variant ) ) ).

              IF p_wrks EQ 'X'.

                t_val = lr_xlcell->get_attribute_ns( name = 't' ).
                IF t_val EQ 's'.
                  lv_num = rval.

                  lr_xlstring ?= lr_xlstrings->get_item( ( lv_num ) ).

                  lr_xlstringcells = lr_xlstring->get_children( ).
                  lr_xlstringcell ?= lr_xlstringcells->get_item( 0 ).

                  DATA(lv_string) = lr_xlstringcell->get_value( ).
                  DATA(lr_xlcell_v) = lr_xlcell->get_last_child( ).
                  lr_xlcell_v->remove_node( ).

                  " t değeri sonda olması için kaldır ve tekrar oluştur
                  lr_xlcell->remove_attribute_ns( name = 't' ).
                  lr_xlcell->set_attribute_ns( name = 't' value = 'inlineStr' ).

                  DATA(lr_xlcell_is) = lr_xlshstrfile->create_simple_element( name = 'is' ).
                  lr_xlcell->append_child( lr_xlcell_is ) .

                  DATA(lr_xlcell_t) = lr_xlshstrfile->create_simple_element( name = 't' ).
                  lr_xlcell_is->append_child( lr_xlcell_t ) .

                  lr_xlcell_t->set_value( lv_string ).
                ENDIF.

              ENDIF.

            ENDDO.

            " Excel hiyerarşi oluştur
            CHECK <f_field> NE 0.
            DATA(level) = 0.

            level = <f_field>.
            IF p_addt IS INITIAL.
              level -= 1.
            ENDIF.
            IF p_yval IS NOT INITIAL.
              level -= 1.
            ENDIF.

            " Renk için bir eksi değer kullanıldı, seviye için orjinale geri döndür
            IF p_wrks EQ 'X'.
              <f_field> += 1.
            ENDIF.

            IF group_count GT 1 AND p_disp EQ '3'.
              lr_xlrow->set_attribute_ns( name = 'outlineLevel' value = condense( CONV string( level ) ) ).
              " Varsayılan açık grubu belirle
              IF p_hlev IS NOT INITIAL.
                IF <f_field> GT CONV int2( p_hlev ) AND <f_field> GT 1.
                  lr_xlrow->set_attribute_ns( name = 'hidden' value = 'true' ).
                ENDIF.
              ENDIF.
            ENDIF.

          ENDLOOP.

        ENDIF.

        IF group_count GT 1 AND p_disp EQ '3' .
          DATA(lr_xlsheetpr)   = cl_ixml=>create( )->create_document( )->create_element( name = 'sheetPr' ).
          DATA(lr_xloutlinepr) = cl_ixml=>create( )->create_document( )->create_element( name = 'outlinePr' ).
          lr_xlsheetpr->if_ixml_node~append_child( lr_xloutlinepr ).
          lr_xloutlinepr->set_attribute_ns( name = 'summaryBelow' value = 'false' ).
          lr_xlworksheet->if_ixml_node~insert_child( new_child = lr_xlsheetpr ref_child = lr_xldimension ).
          lr_xlsheetformatpr ?= lr_xlfile->find_node( 'sheetFormatPr' ).
          DATA(open_level) = CONV int2( p_hlev ) ."- ( gv_group_count - gv_max_level ).
          lr_xlsheetformatpr->set_attribute_ns( name = 'outlineLevelRow' value = CONV string( open_level ) ).
        ENDIF.

        "  tekrar xstring e dönüştür
        lr_xlfile->render_2_xstring( IMPORTING stream = lv_file ).

        " geri yaz
        """"""""""""""""
        IF p_wrks IS INITIAL.
          lr_xlzip->delete( EXPORTING name = 'xl/worksheets/sheet1.xml' ).
          lr_xlzip->add( EXPORTING name = 'xl/worksheets/sheet1.xml' content = lv_file ).
        ELSE.
          lv_sheet_name =  'xl/worksheets/sheet' && lv_sheet_num && '.xml'.
          lr_xlzip_new->add( EXPORTING name = lv_sheet_name content = lv_file ).
        ENDIF.

        lv_sheet_num += 1.

      ENDDO.

    ENDIF.

    IF lv_xstring IS NOT INITIAL.

      " styles.xml düzenle
      IF s_fnams[] IS INITIAL.
        IF p_wrks IS INITIAL.
          lr_xlzip->get( EXPORTING name = 'xl/styles.xml' IMPORTING content = lv_file ).
        ELSE.
          lr_xlzip_new->get( EXPORTING name = 'xl/styles.xml' IMPORTING content = lv_file ).
        ENDIF.
        lr_xlfile->parse_xstring( lv_file ).
        cl_bcs_convert=>xstring_to_string(
           EXPORTING
             iv_xstr   = lv_file
             iv_cp     = 1100  " SAP character set identification
           RECEIVING
             rv_string = lv_xml
         ).

      ELSE.

        lv_xml = ret_styles_string( ).

      ENDIF.

      IF p_cdec IS INITIAL.
        "REPLACE ALL OCCURRENCES OF |formatCode="#,##0.000"| IN lv_xml WITH |formatCode="#,##0.###"| .
        REPLACE ALL OCCURRENCES OF |<xf numFmtId="169"| IN lv_xml WITH |<xf numFmtId="0"| .
        REPLACE ALL OCCURRENCES OF |<xf numFmtId="180"| IN lv_xml WITH |<xf numFmtId="0"| .
        " Tutarları da değişken ondalık istersen aşağıdaki satırı aç
        " REPLACE ALL OCCURRENCES OF |numFmtId="4"| IN lv_xml WITH |numFmtId="0"| .
      ENDIF.

      CALL FUNCTION 'SCMS_STRING_TO_XSTRING'
        EXPORTING
          text   = lv_xml
        IMPORTING
          buffer = lv_file.

      IF p_wrks IS INITIAL.
        lr_xlzip->delete( EXPORTING name = 'xl/styles.xml' ).
        lr_xlzip->add( EXPORTING name = 'xl/styles.xml' content = lv_file ).
      ELSE.
        lr_xlzip_new->delete( EXPORTING name = 'xl/styles.xml' ).
        lr_xlzip_new->add( EXPORTING name = 'xl/styles.xml' content = lv_file ).
      ENDIF.

      " son halini kaydet
      IF p_wrks IS INITIAL.

        " lr_xlsheet ?= lr_xlfile->find_node( 'sheet' ).
        " lr_xlsheet->set_attribute_ns( name = 'name' value = lv_sheet_title ).

        lv_xstring = lr_xlzip->save( ).
      ELSE.
        lv_sheet_num = 0.
        LOOP AT gt_sheets ASSIGNING FIELD-SYMBOL(<ls_sheet>).
          lv_sheet_num += 1.
          lv_sheet_no = |{ lv_sheet_num }| .
          lv_sheet_id = 'rId' && |{ lv_sheet_num }| .
          lv_sheet_title = <ls_sheet>-title.
          lv_sheet_file = 'worksheets/sheet' && lv_sheet_num && '.xml'.
          CONDENSE lv_sheet_file NO-GAPS.

          "ZIP_NEW workbook oku
          lr_xlzip_new->get( EXPORTING name = 'xl/workbook.xml' IMPORTING content = lv_file ).
          lr_xlfile->parse_xstring( lv_file ).
          lr_xlsheets ?= lr_xlfile->find_node( 'sheets' ).
          IF lv_sheet_num = 1.
            lr_xlsheet ?= lr_xlfile->find_node( 'sheet' ).
            lr_xlsheets->remove_child( lr_xlsheet ).
          ENDIF.
          lr_xlsheet = cl_ixml=>create( )->create_document( )->create_element( name = 'sheet' ).
          lr_xlsheets->if_ixml_node~append_child( lr_xlsheet ).
          lr_xlsheet->set_attribute_ns( name = 'name' value = lv_sheet_title ).
          lr_xlsheet->set_attribute_ns( name = 'sheetId' value = lv_sheet_no ) .
          lr_xlsheet->set_attribute_ns( name = 'r:id' value = lv_sheet_id ).
          " Geri yaz
          lr_xlfile->render_2_xstring( IMPORTING stream = lv_file ).
          lr_xlzip_new->delete( EXPORTING name = 'xl/workbook.xml' ).
          lr_xlzip_new->add( EXPORTING name = 'xl/workbook.xml' content = lv_file ).

          "ZIP_NEW rels oku
          lr_xlzip_new->get( EXPORTING name = 'xl/_rels/workbook.xml.rels' IMPORTING content = lv_file ).
          lr_xlfile->parse_xstring( lv_file ).
          lr_xlrels ?= lr_xlfile->find_node( 'Relationships' ).
          IF lv_sheet_num = 1.
            WHILE lr_xlfile->find_node( 'Relationship' ) IS NOT INITIAL.
              lr_xlrel ?= lr_xlfile->find_node( 'Relationship' ).
              lr_xlrels->remove_child( lr_xlrel ).
            ENDWHILE.
          ENDIF.
          lr_xlrel = cl_ixml=>create( )->create_document( )->create_element( name = 'Relationship' ).
          lr_xlrels->if_ixml_node~append_child( lr_xlrel ).
          lr_xlrel->set_attribute_ns( name = 'Id' value = lv_sheet_id ).
          lr_xlrel->set_attribute_ns( name = 'Target' value = lv_sheet_file ).
          lr_xlrel->set_attribute_ns( name = 'Type' value = 'http://schemas.openxmlformats.org/officeDocument/2006/relationships/worksheet' ).
          " Geri yaz
          lr_xlfile->render_2_xstring( IMPORTING stream = lv_file ).
          lr_xlzip_new->delete( EXPORTING name = 'xl/_rels/workbook.xml.rels' ).
          lr_xlzip_new->add( EXPORTING name = 'xl/_rels/workbook.xml.rels' content = lv_file ).
        ENDLOOP.

        " çalışma sayfalı için rels dosyasını düzelt
        lr_xlzip_new->get( EXPORTING name = 'xl/_rels/workbook.xml.rels' IMPORTING content = lv_file ).
        lr_xlfile->parse_xstring( lv_file ).
        lr_xlrels ?= lr_xlfile->find_node( 'Relationships' ).

        lv_sheet_id = 'rId' && |{ lv_sheet_num + 1 }| .
        lr_xlrel = cl_ixml=>create( )->create_document( )->create_element( name = 'Relationship' ).
        lr_xlrels->if_ixml_node~append_child( lr_xlrel ).
        lr_xlrel->set_attribute_ns( name = 'Id' value = lv_sheet_id ).
        lr_xlrel->set_attribute_ns( name = 'Target' value = 'styles.xml' ).
        lr_xlrel->set_attribute_ns( name = 'Type' value = 'http://schemas.openxmlformats.org/officeDocument/2006/relationships/styles' ).

        lv_sheet_id = 'rId' && |{ lv_sheet_num + 2 }| .
        lr_xlrel = cl_ixml=>create( )->create_document( )->create_element( name = 'Relationship' ).
        lr_xlrels->if_ixml_node~append_child( lr_xlrel ).
        lr_xlrel->set_attribute_ns( name = 'Id' value = lv_sheet_id ).
        lr_xlrel->set_attribute_ns( name = 'Target' value = 'sharedStrings.xml' ).
        lr_xlrel->set_attribute_ns( name = 'Type' value = 'http://schemas.openxmlformats.org/officeDocument/2006/relationships/sharedStrings' ).

        lr_xlfile->render_2_xstring( IMPORTING stream = lv_file ).
        lr_xlzip_new->delete( EXPORTING name = 'xl/_rels/workbook.xml.rels' ).
        lr_xlzip_new->add( EXPORTING name = 'xl/_rels/workbook.xml.rels' content = lv_file ).

        lv_xstring = lr_xlzip_new->save( ).
      ENDIF.
    ENDIF.


    IF sy-batch IS INITIAL AND sy-binpt IS INITIAL AND
          p_excl EQ 'X' AND lv_xstring IS NOT INITIAL.

      CALL FUNCTION 'SCMS_XSTRING_TO_BINARY'
        EXPORTING
          buffer        = lv_xstring
        IMPORTING
          output_length = lv_size
        TABLES
          binary_tab    = lt_bintab.

      CALL METHOD cl_gui_frontend_services=>gui_download
        EXPORTING
          bin_filesize            = lv_size
          filename                = lv_full_path
          filetype                = 'BIN'
        CHANGING
          data_tab                = lt_bintab
        EXCEPTIONS
          file_write_error        = 1
          no_batch                = 2
          gui_refuse_filetransfer = 3
          invalid_type            = 4
          no_authority            = 5
          unknown_error           = 6
          header_not_allowed      = 7
          separator_not_allowed   = 8
          filesize_not_allowed    = 9
          header_too_long         = 10
          dp_error_create         = 11
          dp_error_send           = 12
          dp_error_write          = 13
          unknown_dp_error        = 14
          access_denied           = 15
          dp_out_of_memory        = 16
          disk_full               = 17
          dp_timeout              = 18
          file_not_found          = 19
          dataprovider_exception  = 20
          control_flush_error     = 21
          not_supported_by_gui    = 22
          error_no_gui            = 23
          OTHERS                  = 24.

      IF sy-subrc <> 0.
        "MESSAGE ID SY-MSGID TYPE SY-MSGTY NUMBER SY-MSGNO
        "           WITH SY-MSGV1 SY-MSGV2 SY-MSGV3 SY-MSGV4.
      ENDIF.

    ENDIF.

    " Mail Gönder
    IF p_mail IS NOT INITIAL AND p_mlto[] IS NOT INITIAL.

      DATA: lo_regex    TYPE REF TO cl_abap_regex,
            lo_matcher  TYPE REF TO cl_abap_matcher,
            lv_message  TYPE string,
            lv_address  TYPE string,
            lv_filesize TYPE int8.

      LOOP AT gt_functions ASSIGNING <fs_functions>.
        REPLACE ALL OCCURRENCES OF <fs_functions>-modtext IN p_subj WITH <fs_functions>-modval.
      ENDLOOP.

      lv_filesize = CONV #( xstrlen( lv_xstring ) ).

      IF lv_filesize GT gv_max_filesize.
        MESSAGE VALUE #( gt_textlist[ sym = 'A04' ]-text OPTIONAL ) TYPE 'I'.
      ELSE.
        TRY.
            "Create send request
            DATA(lo_send_request) = cl_bcs=>create_persistent( ).

            "Create mail body
            DATA:	lv_length	 TYPE so_obj_len.
            DATA: lt_body	TYPE soli_tab. " catsxt_longtext_itab. ?
            DATA: mail_type TYPE c LENGTH 3.

            LOOP AT gt_functions ASSIGNING <fs_functions>.
              REPLACE ALL OCCURRENCES OF <fs_functions>-modtext IN p_info WITH <fs_functions>-modval.
            ENDLOOP.

            lv_length = strlen( p_info ).
            mail_type = 'RAW'.

            IF p_body EQ 'X'.
              CALL FUNCTION 'SCMS_STRING_TO_FTEXT'
                EXPORTING
                  text      = p_info
                TABLES
                  ftext_tab = lt_body.

              IF p_info CA '/>'.
                mail_type = 'HTM'.
              ELSE.
                mail_type = 'RAW'.
              ENDIF.
            ENDIF.

            "Set up document object
            DATA(lo_document) = cl_document_bcs=>create_document(
                                  i_type = mail_type
                                  i_text = lt_body
                                  i_length  = lv_length
                                  i_subject = CONV #( p_subj ) ).


            DATA lt_att_head    TYPE soli_tab.
            DATA lv_text_line   TYPE soli.

            CONCATENATE '&SO_FILENAME=' lv_file_name INTO lv_text_line.
            APPEND lv_text_line TO lt_att_head.

            "Add attachment
            lo_document->add_attachment(
                i_attachment_type    = 'BIN'
                i_attachment_size    = CONV #( xstrlen( lv_xstring ) )
                i_attachment_subject = CONV #( lv_file_name )
                i_attachment_header  = lt_att_head
                i_att_content_hex    = cl_bcs_convert=>xstring_to_solix( lv_xstring )
             ).

            "Add document to send request
            lo_send_request->set_document( lo_document ).

            "Set sender
            lo_send_request->set_sender(
              cl_cam_address_bcs=>create_internet_address(
                i_address_string = CONV #( gv_from_address )
              )
            ).

            CREATE OBJECT lo_regex
              EXPORTING
                pattern     = '\w+(\.\w+)*@(\w+\.)+(\w{2,4})'
                ignore_case = abap_true.


            TYPES: BEGIN OF ty_mail_list,
                     mail TYPE AD_SMTPADR,
                   END OF ty_mail_list.

            DATA: lt_mail_list TYPE TABLE OF ty_mail_list .

            LOOP AT p_mlto ASSIGNING FIELD-SYMBOL(<s_mlto>).

                  SELECT t1~uname, t2~name_text, t2~smtp_addr
                    FROM agr_users as t1
               LEFT JOIN puser002 as t2
                      ON t2~bname EQ t1~uname
                   WHERE t1~agr_name = @<s_mlto>-low
              INTO TABLE @DATA(lt_role_users).

              IF sy-subrc = 0.
                LOOP at lt_role_users ASSIGNING FIELD-SYMBOL(<ls_user>).
                  IF <ls_user>-smtp_addr IS NOT INITIAL.
                    READ TABLE lt_mail_list with key mail = <ls_user>-smtp_addr transporting no fields.
                    IF sy-subrc <> 0.
                       APPEND VALUE #( mail = <ls_user>-smtp_addr ) TO lt_mail_list.
                    ENDIF.
                  ENDIF.
                ENDLOOP.
              ELSE.
                READ TABLE lt_mail_list with key mail = <s_mlto>-low transporting no fields.
                IF sy-subrc <> 0.
                  APPEND VALUE #( mail = <s_mlto>-low ) TO lt_mail_list.
                ENDIF.
              ENDIF.

            ENDLOOP.

            "Set Recipient | This method has options to set CC/BCC as well
            LOOP AT lt_mail_list ASSIGNING FIELD-SYMBOL(<ls_mlto>).
              lv_address = <ls_mlto>-mail.
              REPLACE ALL OCCURRENCES OF '${USERMAIL}' IN lv_address WITH user_mailaddr .

              lo_matcher = lo_regex->create_matcher( text = lv_address ).

              IF lo_matcher->match( ) IS INITIAL.
                lv_message = VALUE #( gt_textlist[ sym = 'A05' ]-text OPTIONAL ) && lv_address.
                MESSAGE lv_message TYPE 'I'.
                DELETE lt_mail_list INDEX sy-tabix.
              ELSE.
                lo_send_request->add_recipient( i_recipient = cl_cam_address_bcs=>create_internet_address(
                                                                i_address_string = CONV #( lv_address )
                                                              )
                                                i_express   = abap_true ).
              ENDIF.
            ENDLOOP.

            IF lt_mail_list[] IS NOT INITIAL.
              "Send Email
              DATA(lv_sent_to_all) = lo_send_request->send( ).
              COMMIT WORK.
              MESSAGE VALUE #( gt_textlist[ sym = 'A08' ]-text OPTIONAL ) TYPE 'S'.
            ENDIF.

          CATCH cx_send_req_bcs INTO DATA(lx_req_bsc).
            "Error handling
          CATCH cx_document_bcs INTO DATA(lx_doc_bcs).
            "Error handling
          CATCH cx_address_bcs  INTO DATA(lx_add_bcs).
            "Error handling
        ENDTRY.
      ENDIF.
    ENDIF.

    " Dosyayı aç
    IF p_opxl EQ 'X' AND lv_xstring IS NOT INITIAL.
      CALL METHOD cl_gui_frontend_services=>execute
        EXPORTING
          document = lv_full_path
        EXCEPTIONS
          OTHERS   = 1.
    ENDIF.

    " Ekrana getir
    IF p_oprp EQ 'X'.

      gt_fcat = ls_meta-t_fcat.

      IF s_fnams[] IS INITIAL.
        ASSIGN <fs_itab> TO <gs_itab>.
      ELSE.
        ASSIGN <ls_itab> TO <gs_itab>.
      ENDIF.

      display_data( ).

    ENDIF.

  ENDMETHOD.



  METHOD ret_styles_string.

    CONCATENATE

    '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>'
    '<styleSheet'
    ' xmlns="http://schemas.openxmlformats.org/spreadsheetml/2006/main"'
    ' xmlns:mc="http://schemas.openxmlformats.org/markup-compatibility/2006" mc:Ignorable="x14ac x16r2 xr"'
    ' xmlns:x14ac="http://schemas.microsoft.com/office/spreadsheetml/2009/9/ac"'
    ' xmlns:x16r2="http://schemas.microsoft.com/office/spreadsheetml/2015/02/main"'
    ' xmlns:xr="http://schemas.microsoft.com/office/spreadsheetml/2014/revision">'
    '<numFmts count="2">'
    '<numFmt numFmtId="180" formatCode="#,##0"/>'
    '<numFmt numFmtId="169" formatCode="#,##0.000"/>'  " #.##0,###
    '<numFmt numFmtId="170" formatCode="#,##0.00"/></numFmts>'
    '<fonts count="5" x14ac:knownFonts="1">'
    '<font><sz val="10"/><name val="Arial"/></font>'
    '<font><u/><sz val="10"/><color indexed="12"/><name val="Arial"/></font>'
    '<font><sz val="10"/><color rgb="FFFF0000"/><name val="Arial"/><family val="2"/><charset val="162"/></font>'
    '<font><b/><sz val="10"/><name val="Arial"/><family val="2"/><charset val="162"/></font>'
    '<font><b/><sz val="10"/><color rgb="FFFF0000"/><name val="Arial"/><family val="2"/><charset val="162"/></font>'
    '</fonts>'
    '<fills count="17">'
    '<fill><patternFill patternType="none"/></fill>'
    '<fill><patternFill patternType="gray125"/></fill>'
    '<fill><patternFill patternType="solid"><fgColor indexed="22"/><bgColor indexed="64"/></patternFill></fill>'
    '<fill><patternFill patternType="solid"><fgColor indexed="13"/><bgColor indexed="64"/></patternFill></fill>'
    '<fill><patternFill patternType="solid"><fgColor indexed="43"/><bgColor indexed="64"/></patternFill></fill>'
    " Keyler için gri
    '<fill><patternFill patternType="solid"><fgColor rgb="FFF2F2F2"/><bgColor indexed="64"/></patternFill></fill>'
    '<fill><patternFill patternType="solid"><fgColor rgb="FFFF988C"/><bgColor indexed="64"/></patternFill></fill>'
    '<fill><patternFill patternType="solid"><fgColor rgb="FFFFFDBF"/><bgColor indexed="64"/></patternFill></fill>'
    '<fill><patternFill patternType="solid"><fgColor rgb="FFC6F9C1"/><bgColor indexed="64"/></patternFill></fill>'
    '<fill><patternFill patternType="solid"><fgColor rgb="FFA6E5F4"/><bgColor indexed="64"/></patternFill></fill>'
    '<fill><patternFill patternType="solid"><fgColor rgb="FFF8E5C8"/><bgColor indexed="64"/></patternFill></fill>'
    '<fill><patternFill patternType="solid"><fgColor rgb="FFCCE3E3"/><bgColor indexed="64"/></patternFill></fill>'
    '<fill><patternFill patternType="solid"><fgColor rgb="FFD4DFEF"/><bgColor indexed="64"/></patternFill></fill>'
    '<fill><patternFill patternType="solid"><fgColor rgb="FFDFEBF5"/><bgColor indexed="64"/></patternFill></fill>'
    '<fill><patternFill patternType="solid"><fgColor rgb="FFFF6758"/><bgColor indexed="64"/></patternFill></fill>'
    '<fill><patternFill patternType="solid"><fgColor rgb="FFFFF843"/><bgColor indexed="64"/></patternFill></fill>'
    '<fill><patternFill patternType="solid"><fgColor rgb="FF94D88F"/><bgColor indexed="64"/></patternFill></fill>'
    '<fill><patternFill patternType="solid"><fgColor rgb="FFC5EAEE"/><bgColor indexed="64"/></patternFill></fill>'
    '<fill><patternFill patternType="solid"><fgColor rgb="FFFDBB71"/><bgColor indexed="64"/></patternFill></fill>'
    '</fills>'
    '<borders count="3">'
    '<border><left/><right/><top/><bottom/><diagonal/></border>'
    '<border><left style="thin"><color indexed="64"/></left><right style="thin"><color indexed="64"/></right><top style="thin"><color indexed="64"/></top><bottom style="thin">'
    '<color indexed="64"/></bottom><diagonal/></border>'
    '<border><left style="thin"><color theme="0" tint="-0.14996795556505021"/></left><right style="thin"><color theme="0" tint="-0.14996795556505021"/></right><top style="thin">'
    '<color theme="0" tint="-0.14996795556505021"/></top><bottom style="thin"><color theme="0" tint="-0.14996795556505021"/></bottom><diagonal/></border>'
    '</borders>'
    '<cellStyleXfs count="1"><xf numFmtId="0" fontId="0" fillId="0" borderId="0"/></cellStyleXfs>'
    '<cellXfs count="79">'
    " Standart s=0
    '<xf numFmtId="0" fontId="0" fillId="0" borderId="0" xfId="0" applyAlignment="1"><alignment vertical="top"/></xf>'
    " Başlık s=1
    '<xf numFmtId="0" fontId="0" fillId="2" borderId="1" xfId="0" applyFill="1" applyBorder="1" applyAlignment="1"><alignment vertical="top"/></xf>'
    " Sayı s=2
    '<xf numFmtId="180" fontId="0" fillId="0" borderId="0" xfId="0" applyNumberFormat="1" applyAlignment="1"><alignment horizontal="right" vertical="top"/></xf>'
    " Miktar s=3
    '<xf numFmtId="169" fontId="0" fillId="0" borderId="0" xfId="0" applyNumberFormat="1" applyAlignment="1"><alignment horizontal="right" vertical="top"/></xf>'
    " Tutar s=4
    '<xf numFmtId="170" fontId="0" fillId="0" borderId="0" xfId="0" applyNumberFormat="1" applyAlignment="1"><alignment horizontal="right" vertical="top"/></xf>'
    " Başlık wrap-text s=5
    '<xf numFmtId="0" fontId="0" fillId="2" borderId="1" xfId="0" applyFill="1" applyBorder="1" applyAlignment="1"><alignment wrapText="1" vertical="top"/></xf>'
    " Metin kırmızı s=6
    '<xf numFmtId="0" fontId="2" fillId="0" borderId="0" xfId="0" applyAlignment="1"><alignment vertical="top"/></xf>'
    " Sayı kırmızı s=7
    '<xf numFmtId="180" fontId="2" fillId="0" borderId="0" xfId="0" applyNumberFormat="1" applyAlignment="1"><alignment horizontal="right" vertical="top"/></xf>'
    " Miktar kırmızı s=8
    '<xf numFmtId="169" fontId="2" fillId="0" borderId="0" xfId="0" applyNumberFormat="1" applyAlignment="1"><alignment horizontal="right" vertical="top"/></xf>'
    " Tutar kırmızı s=9
    '<xf numFmtId="170" fontId="2" fillId="0" borderId="0" xfId="0" applyNumberFormat="1" applyAlignment="1"><alignment horizontal="right" vertical="top"/></xf>'
    " Ondalıklı Sayı s=10
    '<xf numFmtId="2" fontId="0" fillId="0" borderId="0" xfId="0" applyNumberFormat="1" applyAlignment="1"><alignment horizontal="right" vertical="top"/></xf>'
    " Ondalıklı Sayı Kırmızı 3 s=11
    '<xf numFmtId="2" fontId="2" fillId="0" borderId="0" xfId="0" applyNumberFormat="1" applyAlignment="1"><alignment horizontal="right" vertical="top"/></xf>'
    " Tarih s=12
    '<xf numFmtId="14" fontId="0" fillId="0" borderId="0" xfId="0" applyNumberFormat="1" applyAlignment="1"><alignment vertical="top"/></xf>'
    " Saat s=13
    '<xf numFmtId="166" fontId="0" fillId="0" borderId="0" xfId="0" applyNumberFormat="1" applyAlignment="1"><alignment vertical="top"/></xf>'
    " AÇIK GRİ METİN KEY DOLGU s=14
    '<xf numFmtId="0" fontId="0" fillId="5" borderId="2" xfId="0" applyFill="1" applyBorder="1" applyAlignment="1"><alignment vertical="top"/></xf>'
    " AÇIK GRİ TARIH KEY DOLGU s=15
    '<xf numFmtId="14" fontId="0" fillId="5" borderId="2" xfId="0" applyFill="1" applyBorder="1" applyAlignment="1"><alignment vertical="top"/></xf>'
    " AÇIK GRİ SAAT KEY DOLGU s=16
    '<xf numFmtId="166" fontId="0" fillId="5" borderId="2" xfId="0" applyFill="1" applyBorder="1" applyAlignment="1"><alignment vertical="top"/></xf>'
    " Metin dolgulu s=17-29
    '<xf numFmtId="0" fontId="0" fillId="6" borderId="2" xfId="0" applyFill="1" applyBorder="1" applyAlignment="1"><alignment vertical="top"/></xf>'
    '<xf numFmtId="0" fontId="0" fillId="7" borderId="2" xfId="0" applyFill="1" applyBorder="1" applyAlignment="1"><alignment vertical="top"/></xf>'
    '<xf numFmtId="0" fontId="0" fillId="8" borderId="2" xfId="0" applyFill="1" applyBorder="1" applyAlignment="1"><alignment vertical="top"/></xf>'
    '<xf numFmtId="0" fontId="0" fillId="9" borderId="2" xfId="0" applyFill="1" applyBorder="1" applyAlignment="1"><alignment vertical="top"/></xf>'
    '<xf numFmtId="0" fontId="0" fillId="10" borderId="2" xfId="0" applyFill="1" applyBorder="1" applyAlignment="1"><alignment vertical="top"/></xf>'
    '<xf numFmtId="0" fontId="0" fillId="11" borderId="2" xfId="0" applyFill="1" applyBorder="1" applyAlignment="1"><alignment vertical="top"/></xf>'
    '<xf numFmtId="0" fontId="0" fillId="12" borderId="2" xfId="0" applyFill="1" applyBorder="1" applyAlignment="1"><alignment vertical="top"/></xf>'
    '<xf numFmtId="0" fontId="0" fillId="13" borderId="2" xfId="0" applyFill="1" applyBorder="1" applyAlignment="1"><alignment vertical="top"/></xf>'
    '<xf numFmtId="0" fontId="0" fillId="14" borderId="2" xfId="0" applyFill="1" applyBorder="1" applyAlignment="1"><alignment vertical="top"/></xf>'
    '<xf numFmtId="0" fontId="0" fillId="15" borderId="2" xfId="0" applyFill="1" applyBorder="1" applyAlignment="1"><alignment vertical="top"/></xf>'
    '<xf numFmtId="0" fontId="0" fillId="16" borderId="2" xfId="0" applyFill="1" applyBorder="1" applyAlignment="1"><alignment vertical="top"/></xf>'
    '<xf numFmtId="0" fontId="0" fillId="17" borderId="2" xfId="0" applyFill="1" applyBorder="1" applyAlignment="1"><alignment vertical="top"/></xf>'
    '<xf numFmtId="0" fontId="0" fillId="18" borderId="2" xfId="0" applyFill="1" applyBorder="1" applyAlignment="1"><alignment vertical="top"/></xf>'
    " Sayı dolgulu s=30-42
    '<xf numFmtId="180" fontId="0" fillId="6" borderId="2" xfId="0" applyNumberFormat="1" applyFill="1" applyBorder="1" applyAlignment="1"><alignment horizontal="right" vertical="top"/></xf>'
    '<xf numFmtId="180" fontId="0" fillId="7" borderId="2" xfId="0" applyNumberFormat="1" applyFill="1" applyBorder="1" applyAlignment="1"><alignment horizontal="right" vertical="top"/></xf>'
    '<xf numFmtId="180" fontId="0" fillId="8" borderId="2" xfId="0" applyNumberFormat="1" applyFill="1" applyBorder="1" applyAlignment="1"><alignment horizontal="right" vertical="top"/></xf>'
    '<xf numFmtId="180" fontId="0" fillId="9" borderId="2" xfId="0" applyNumberFormat="1" applyFill="1" applyBorder="1" applyAlignment="1"><alignment horizontal="right" vertical="top"/></xf>'
    '<xf numFmtId="180" fontId="0" fillId="10" orderId="2" xfId="0" applyNumberFormat="1" applyFill="1" applyBorder="1" applyAlignment="1"><alignment horizontal="right" vertical="top"/></xf>'
    '<xf numFmtId="180" fontId="0" fillId="11" borderId="2" xfId="0" applyNumberFormat="1" applyFill="1" applyBorder="1" applyAlignment="1"><alignment horizontal="right" vertical="top"/></xf>'
    '<xf numFmtId="180" fontId="0" fillId="12" borderId="2" xfId="0" applyNumberFormat="1" applyFill="1" applyBorder="1" applyAlignment="1"><alignment horizontal="right" vertical="top"/></xf>'
    '<xf numFmtId="180" fontId="0" fillId="13" borderId="2" xfId="0" applyNumberFormat="1" applyFill="1" applyBorder="1" applyAlignment="1"><alignment horizontal="right" vertical="top"/></xf>'
    '<xf numFmtId="180" fontId="0" fillId="14" borderId="2" xfId="0" applyNumberFormat="1" applyFill="1" applyBorder="1" applyAlignment="1"><alignment horizontal="right" vertical="top"/></xf>'
    '<xf numFmtId="180" fontId="0" fillId="15" borderId="2" xfId="0" applyNumberFormat="1" applyFill="1" applyBorder="1" applyAlignment="1"><alignment horizontal="right" vertical="top"/></xf>'
    '<xf numFmtId="180" fontId="0" fillId="16" borderId="2" xfId="0" applyNumberFormat="1" applyFill="1" applyBorder="1" applyAlignment="1"><alignment horizontal="right" vertical="top"/></xf>'
    '<xf numFmtId="180" fontId="0" fillId="17" borderId="2" xfId="0" applyNumberFormat="1" applyFill="1" applyBorder="1" applyAlignment="1"><alignment horizontal="right" vertical="top"/></xf>'
    '<xf numFmtId="180" fontId="0" fillId="18" borderId="2" xfId="0" applyNumberFormat="1" applyFill="1" applyBorder="1" applyAlignment="1"><alignment horizontal="right" vertical="top"/></xf>'
    " Miktar dolgulu s=43-55
    '<xf numFmtId="169" fontId="0" fillId="6" borderId="2" xfId="0" applyNumberFormat="1" applyFill="1" applyBorder="1" applyAlignment="1"><alignment horizontal="right" vertical="top"/></xf>'
    '<xf numFmtId="169" fontId="0" fillId="7" borderId="2" xfId="0" applyNumberFormat="1" applyFill="1" applyBorder="1" applyAlignment="1"><alignment horizontal="right" vertical="top"/></xf>'
    '<xf numFmtId="169" fontId="0" fillId="8" borderId="2" xfId="0" applyNumberFormat="1" applyFill="1" applyBorder="1" applyAlignment="1"><alignment horizontal="right" vertical="top"/></xf>'
    '<xf numFmtId="169" fontId="0" fillId="9" borderId="2" xfId="0" applyNumberFormat="1" applyFill="1" applyBorder="1" applyAlignment="1"><alignment horizontal="right" vertical="top"/></xf>'
    '<xf numFmtId="169" fontId="0" fillId="10" orderId="2" xfId="0" applyNumberFormat="1" applyFill="1" applyBorder="1" applyAlignment="1"><alignment horizontal="right" vertical="top"/></xf>'
    '<xf numFmtId="169" fontId="0" fillId="11" borderId="2" xfId="0" applyNumberFormat="1" applyFill="1" applyBorder="1" applyAlignment="1"><alignment horizontal="right" vertical="top"/></xf>'
    '<xf numFmtId="169" fontId="0" fillId="12" borderId="2" xfId="0" applyNumberFormat="1" applyFill="1" applyBorder="1" applyAlignment="1"><alignment horizontal="right" vertical="top"/></xf>'
    '<xf numFmtId="169" fontId="0" fillId="13" borderId="2" xfId="0" applyNumberFormat="1" applyFill="1" applyBorder="1" applyAlignment="1"><alignment horizontal="right" vertical="top"/></xf>'
    '<xf numFmtId="169" fontId="0" fillId="14" borderId="2" xfId="0" applyNumberFormat="1" applyFill="1" applyBorder="1" applyAlignment="1"><alignment horizontal="right" vertical="top"/></xf>'
    '<xf numFmtId="169" fontId="0" fillId="15" borderId="2" xfId="0" applyNumberFormat="1" applyFill="1" applyBorder="1" applyAlignment="1"><alignment horizontal="right" vertical="top"/></xf>'
    '<xf numFmtId="169" fontId="0" fillId="16" borderId="2" xfId="0" applyNumberFormat="1" applyFill="1" applyBorder="1" applyAlignment="1"><alignment horizontal="right" vertical="top"/></xf>'
    '<xf numFmtId="169" fontId="0" fillId="17" borderId="2" xfId="0" applyNumberFormat="1" applyFill="1" applyBorder="1" applyAlignment="1"><alignment horizontal="right" vertical="top"/></xf>'
    '<xf numFmtId="169" fontId="0" fillId="18" borderId="2" xfId="0" applyNumberFormat="1" applyFill="1" applyBorder="1" applyAlignment="1"><alignment horizontal="right" vertical="top"/></xf>'
    " Tutar dolgulu s=56-68
    '<xf numFmtId="170" fontId="0" fillId="6" borderId="2" xfId="0" applyNumberFormat="1" applyFill="1" applyBorder="1" applyAlignment="1"><alignment horizontal="right" vertical="top"/></xf>'
    '<xf numFmtId="170" fontId="0" fillId="7" borderId="2" xfId="0" applyNumberFormat="1" applyFill="1" applyBorder="1" applyAlignment="1"><alignment horizontal="right" vertical="top"/></xf>'
    '<xf numFmtId="170" fontId="0" fillId="8" borderId="2" xfId="0" applyNumberFormat="1" applyFill="1" applyBorder="1" applyAlignment="1"><alignment horizontal="right" vertical="top"/></xf>'
    '<xf numFmtId="170" fontId="0" fillId="9" borderId="2" xfId="0" applyNumberFormat="1" applyFill="1" applyBorder="1" applyAlignment="1"><alignment horizontal="right" vertical="top"/></xf>'
    '<xf numFmtId="170" fontId="0" fillId="10" orderId="2" xfId="0" applyNumberFormat="1" applyFill="1" applyBorder="1" applyAlignment="1"><alignment horizontal="right" vertical="top"/></xf>'
    '<xf numFmtId="170" fontId="0" fillId="11" borderId="2" xfId="0" applyNumberFormat="1" applyFill="1" applyBorder="1" applyAlignment="1"><alignment horizontal="right" vertical="top"/></xf>'
    '<xf numFmtId="170" fontId="0" fillId="12" borderId="2" xfId="0" applyNumberFormat="1" applyFill="1" applyBorder="1" applyAlignment="1"><alignment horizontal="right" vertical="top"/></xf>'
    '<xf numFmtId="170" fontId="0" fillId="13" borderId="2" xfId="0" applyNumberFormat="1" applyFill="1" applyBorder="1" applyAlignment="1"><alignment horizontal="right" vertical="top"/></xf>'
    '<xf numFmtId="170" fontId="0" fillId="14" borderId="2" xfId="0" applyNumberFormat="1" applyFill="1" applyBorder="1" applyAlignment="1"><alignment horizontal="right" vertical="top"/></xf>'
    '<xf numFmtId="170" fontId="0" fillId="15" borderId="2" xfId="0" applyNumberFormat="1" applyFill="1" applyBorder="1" applyAlignment="1"><alignment horizontal="right" vertical="top"/></xf>'
    '<xf numFmtId="170" fontId="0" fillId="16" borderId="2" xfId="0" applyNumberFormat="1" applyFill="1" applyBorder="1" applyAlignment="1"><alignment horizontal="right" vertical="top"/></xf>'
    '<xf numFmtId="170" fontId="0" fillId="17" borderId="2" xfId="0" applyNumberFormat="1" applyFill="1" applyBorder="1" applyAlignment="1"><alignment horizontal="right" vertical="top"/></xf>'
    '<xf numFmtId="170" fontId="0" fillId="18" borderId="2" xfId="0" applyNumberFormat="1" applyFill="1" applyBorder="1" applyAlignment="1"><alignment horizontal="right" vertical="top"/></xf>'
    " Tarih dolgulu s=69-81
    '<xf numFmtId="14" fontId="0" fillId="6" borderId="2" xfId="0" applyNumberFormat="1" applyFill="1" applyBorder="1" applyAlignment="1"><alignment vertical="top"/></xf>'
    '<xf numFmtId="14" fontId="0" fillId="7" borderId="2" xfId="0" applyNumberFormat="1" applyFill="1" applyBorder="1" applyAlignment="1"><alignment vertical="top"/></xf>'
    '<xf numFmtId="14" fontId="0" fillId="8" borderId="2" xfId="0" applyNumberFormat="1" applyFill="1" applyBorder="1" applyAlignment="1"><alignment vertical="top"/></xf>'
    '<xf numFmtId="14" fontId="0" fillId="9" borderId="2" xfId="0" applyNumberFormat="1" applyFill="1" applyBorder="1" applyAlignment="1"><alignment vertical="top"/></xf>'
    '<xf numFmtId="14" fontId="0" fillId="10" orderId="2" xfId="0" applyNumberFormat="1" applyFill="1" applyBorder="1" applyAlignment="1"><alignment vertical="top"/></xf>'
    '<xf numFmtId="14" fontId="0" fillId="11" borderId="2" xfId="0" applyNumberFormat="1" applyFill="1" applyBorder="1" applyAlignment="1"><alignment vertical="top"/></xf>'
    '<xf numFmtId="14" fontId="0" fillId="12" borderId="2" xfId="0" applyNumberFormat="1" applyFill="1" applyBorder="1" applyAlignment="1"><alignment vertical="top"/></xf>'
    '<xf numFmtId="14" fontId="0" fillId="13" borderId="2" xfId="0" applyNumberFormat="1" applyFill="1" applyBorder="1" applyAlignment="1"><alignment vertical="top"/></xf>'
    '<xf numFmtId="14" fontId="0" fillId="14" borderId="2" xfId="0" applyNumberFormat="1" applyFill="1" applyBorder="1" applyAlignment="1"><alignment vertical="top"/></xf>'
    '<xf numFmtId="14" fontId="0" fillId="15" borderId="2" xfId="0" applyNumberFormat="1" applyFill="1" applyBorder="1" applyAlignment="1"><alignment vertical="top"/></xf>'
    '<xf numFmtId="14" fontId="0" fillId="16" borderId="2" xfId="0" applyNumberFormat="1" applyFill="1" applyBorder="1" applyAlignment="1"><alignment vertical="top"/></xf>'
    '<xf numFmtId="14" fontId="0" fillId="17" borderId="2" xfId="0" applyNumberFormat="1" applyFill="1" applyBorder="1" applyAlignment="1"><alignment vertical="top"/></xf>'
    '<xf numFmtId="14" fontId="0" fillId="18" borderId="2" xfId="0" applyNumberFormat="1" applyFill="1" applyBorder="1" applyAlignment="1"><alignment vertical="top"/></xf>'
    '</cellXfs>'
    '<cellStyles count="1"><cellStyle name="Normal" xfId="0" builtinId="0"/></cellStyles>'
    '<dxfs count="0"/>'
    '<tableStyles count="0" defaultTableStyle="TableStyleMedium9" defaultPivotStyle="PivotStyleLight16"/>'
    '<extLst>'
    '<ext uri="{EB79DEF2-80B8-43e5-95BD-54CBDDF9020C}" xmlns:x14="http://schemas.microsoft.com/office/spreadsheetml/2009/9/main"><x14:slicerStyles defaultSlicerStyle="SlicerStyleLight1"/></ext>'
    '<ext uri="{9260A510-F301-46a8-8635-F512D64BE5F5}" xmlns:x15="http://schemas.microsoft.com/office/spreadsheetml/2010/11/main"><x15:timelineStyles defaultTimelineStyle="TimeSlicerStyleLight1"/></ext>'
    '</extLst>'
    '</styleSheet>'

    INTO styles_xml.

  ENDMETHOD.


  METHOD get_variant_dsp.

    CASE pv_islem.
      WHEN 'F4'.
        DATA lv_layout TYPE disvariant.
        DATA lv_exit TYPE c LENGTH 1.
        DATA lv_spec_layout TYPE disvariant.

        CLEAR lv_layout.
        MOVE sy-repid TO lv_layout-report.

        CALL FUNCTION 'REUSE_ALV_VARIANT_F4'
          EXPORTING
            is_variant = lv_layout
            i_save     = 'A'
          IMPORTING
            e_exit     = lv_exit
            es_variant = lv_spec_layout
          EXCEPTIONS
            not_found  = 1
            OTHERS     = 2.
        IF sy-subrc NE 0.
          MESSAGE ID sy-msgid TYPE sy-msgty NUMBER sy-msgno
                  WITH sy-msgv1 sy-msgv2 sy-msgv3 sy-msgv4.
        ELSE.
          IF lv_exit NE 'X'.
            pv_duzen    = lv_spec_layout-variant.
          ENDIF.
        ENDIF.

      WHEN ' '.
        DATA lv_def_layout TYPE   disvariant.

        CLEAR lv_def_layout.
        MOVE sy-repid TO lv_def_layout-report.
        CALL FUNCTION 'LVC_VARIANT_DEFAULT_GET'
          EXPORTING
            i_save        = 'A'
          CHANGING
            cs_variant    = lv_def_layout
          EXCEPTIONS
            wrong_input   = 1
            not_found     = 2
            program_error = 3.
        IF sy-subrc = 0.
          pv_duzen = lv_def_layout-variant.
        ENDIF.
    ENDCASE.

  ENDMETHOD.


  METHOD get_variant_slc.

    DATA: lt_return TYPE sfw_ddshretval_t.

    SELECT it~variant,it~vtext
      INTO TABLE @DATA(lt_varit)
      FROM varit AS it
     INNER JOIN varid AS id
        ON id~report EQ it~report
       AND id~variant EQ it~variant
     WHERE it~report EQ @sy-repid
       AND id~transport NE 'N'.
    "AND langu  EQ @sy-langu.

    CALL FUNCTION 'F4IF_INT_TABLE_VALUE_REQUEST'
      EXPORTING
        retfield        = 'VARIANT'
        dynpprog        = sy-repid
        dynpnr          = '1000'
        dynprofield     = 'P_VARI'
        value_org       = 'S'
      TABLES
        value_tab       = lt_varit
        return_tab      = lt_return
      EXCEPTIONS
        parameter_error = 1
        no_values_found = 2
        OTHERS          = 3.

    variant_name = VALUE #( lt_varit[ variant = p_vari ]-vtext OPTIONAL ) .

    go_main->initialization( ).

  ENDMETHOD.


  METHOD fill_aggrs.

    REFRESH: gt_aggregation_fields.

    LOOP AT s_aggrs ASSIGNING FIELD-SYMBOL(<f_aggrs>).
      "IF VALUE #( gt_fieldlist[ fname = <f_aggrs>-low ]-cumty OPTIONAL ) IS INITIAL OR <f_aggrs>-high IS INITIAL.
      "  DELETE s_aggrs WHERE low = <f_aggrs>-low .
      "ENDIF.
      IF VALUE #( gt_allfields_text[ name = <f_aggrs>-low ]-text OPTIONAL ) IS INITIAL.
        DELETE s_aggrs WHERE low = <f_aggrs>-low .
      ENDIF.
    ENDLOOP.

    LOOP AT gt_fieldlist ASSIGNING FIELD-SYMBOL(<ls_fieldlist>) WHERE cumty NE ' ' .

      APPEND INITIAL LINE TO gt_aggregation_fields ASSIGNING FIELD-SYMBOL(<ls_aggregation_fields>).
      <ls_aggregation_fields>-fnam = <ls_fieldlist>-fname.
      <ls_aggregation_fields>-text = <ls_fieldlist>-textl.
      DATA(offset) = strlen( <ls_fieldlist>-fname ) - 2.

      IF <ls_fieldlist>-fname+offset(2) EQ '_2'.
        <ls_aggregation_fields>-text = <ls_aggregation_fields>-text && ' (2)'.
      ENDIF.

      READ TABLE s_aggrs ASSIGNING FIELD-SYMBOL(<f_aggr>) WITH KEY low = <ls_fieldlist>-fname.

      IF NOT <f_aggr> IS ASSIGNED.
        <ls_aggregation_fields>-type = <ls_fieldlist>-cumty.
      ELSE.
        <ls_aggregation_fields>-type = <f_aggr>-high.
        UNASSIGN <f_aggr>.
      ENDIF.

      <ls_aggregation_fields>-ctot = icon_wd_radio_button_empty.
      <ls_aggregation_fields>-cper = icon_wd_radio_button_empty.
      <ls_aggregation_fields>-cavg = icon_wd_radio_button_empty.
      <ls_aggregation_fields>-cwga = icon_wd_radio_button_empty.
      <ls_aggregation_fields>-cmax = icon_wd_radio_button_empty.
      <ls_aggregation_fields>-cmin = icon_wd_radio_button_empty.
      CASE <ls_aggregation_fields>-type.
        WHEN 'T'. <ls_aggregation_fields>-ctot = icon_radiobutton.
        WHEN 'P'. <ls_aggregation_fields>-cper = icon_radiobutton.
        WHEN 'A'. <ls_aggregation_fields>-cavg = icon_radiobutton.
        WHEN 'W'. <ls_aggregation_fields>-cwga = icon_radiobutton.
        WHEN 'M'. <ls_aggregation_fields>-cmax = icon_radiobutton.
        WHEN 'L'. <ls_aggregation_fields>-cmin = icon_radiobutton.
      ENDCASE.

     ENDLOOP.

  ENDMETHOD.


  METHOD set_aggrs.

    REFRESH: s_aggrs.

    LOOP AT gt_aggregation_fields ASSIGNING FIELD-SYMBOL(<fs_aggregation_fields>).
      APPEND VALUE #( sign = 'I' option = 'EQ' low = <fs_aggregation_fields>-fnam high = <fs_aggregation_fields>-type ) TO s_aggrs  .
    ENDLOOP.

  ENDMETHOD.


  METHOD fill_subts.

    REFRESH: gt_subtotal_fields.

    " Toplama alanları listesi
    IF s_subts[] IS INITIAL.

      DO gv_max_level - 1 TIMES.
        APPEND INITIAL LINE TO gt_subtotal_fields ASSIGNING FIELD-SYMBOL(<ls_subtotal_fields>).
        <ls_subtotal_fields>-fnam = VALUE #( gt_selected_group_fields[ sy-index ]-fnam OPTIONAL ).
        <ls_subtotal_fields>-text = VALUE #( gt_selected_group_fields[ sy-index ]-text OPTIONAL ).
        <ls_subtotal_fields>-ctot = 'X'.
        <ls_subtotal_fields>-hlev = ' '.
      ENDDO.

    ELSE.

      DO gv_max_level - 1 TIMES.
        APPEND INITIAL LINE TO gt_subtotal_fields ASSIGNING <ls_subtotal_fields>.
        <ls_subtotal_fields>-fnam = VALUE #( gt_selected_group_fields[ sy-index ]-fnam OPTIONAL ).
        <ls_subtotal_fields>-text = VALUE #( gt_selected_group_fields[ sy-index ]-text OPTIONAL ).

        IF VALUE #( s_subts[ low = <ls_subtotal_fields>-fnam ]-low OPTIONAL ) IS NOT INITIAL.
          <ls_subtotal_fields>-ctot = VALUE #( s_subts[ low = <ls_subtotal_fields>-fnam ]-high OPTIONAL ).
        ELSE.
          <ls_subtotal_fields>-ctot = 'X'.
        ENDIF.

        IF VALUE #( s_subts[ low = <ls_subtotal_fields>-fnam ]-sign OPTIONAL ) EQ 'E'.
          <ls_subtotal_fields>-hlev = 'X'.
          p_hlev = CONV char2( sy-index ).
        ELSE.
          <ls_subtotal_fields>-hlev = ' '.
        ENDIF.

      ENDDO.

    ENDIF.

  ENDMETHOD.


  METHOD set_subts.

    REFRESH: s_subts.
    p_hlev = ' '.

    DATA lv_sign TYPE c LENGTH 1.
    DO gv_max_level - 1 TIMES.
      IF VALUE #( gt_subtotal_fields[ sy-index ]-hlev OPTIONAL ) EQ 'X'.
        lv_sign = 'E'.
        p_hlev = CONV char2( sy-index ).
      ELSE.
        lv_sign = 'I'.
      ENDIF.
      APPEND VALUE #( sign = lv_sign
                      option = 'EQ'
                      low = VALUE #( gt_subtotal_fields[ sy-index ]-fnam OPTIONAL )
                      high = VALUE #( gt_subtotal_fields[ sy-index ]-ctot OPTIONAL ) ) TO s_subts.
    ENDDO.

    IF gv_max_level GT 0.
      APPEND VALUE #( sign = 'I'
                      option = 'EQ'
                      low = VALUE #( gt_selected_group_fields[ gv_max_level ]-fnam OPTIONAL )
                      high = 'X' ) TO s_subts.
    ENDIF.

  ENDMETHOD.


  METHOD fill_choices.

    DATA: grpx1 TYPE dd03m-fieldname,
          grpx2 TYPE dd03m-fieldname,
          grpx3 TYPE dd03m-fieldname.

    DATA(nr_pos) = 0.
    DATA(nr_count) = 0.

    gv_pivot_fieldname = ' '.

    CLEAR: gt_groupable_fields.
    CLEAR: gt_selected_group_fields.
    CLEAR: gt_group_key_columns.

    LOOP AT s_fnams ASSIGNING FIELD-SYMBOL(<dummmy>).
      nr_count += 1.
    ENDLOOP.

    IF p_addt = 'X'.
      nr_pos = nr_pos + 1.
      nr_count = nr_count + 1.
      APPEND INITIAL LINE TO gt_group_key_columns ASSIGNING FIELD-SYMBOL(<ls_group_key_columns>).
      <ls_group_key_columns>-fnam = 'DUMMY'.
      <ls_group_key_columns>-grup = nr_pos.
      <ls_group_key_columns>-ikey = 'X'.
    ENDIF.

    " Gruplama alanı X listesi
    LOOP AT gt_fieldlist ASSIGNING FIELD-SYMBOL(<ls_fieldlist>).
      IF <ls_fieldlist>-isgrp IS NOT INITIAL.
        APPEND INITIAL LINE TO gt_groupable_fields ASSIGNING FIELD-SYMBOL(<ls_groupable_fields>).
        <ls_groupable_fields>-fnam = <ls_fieldlist>-fname.
        <ls_groupable_fields>-text = <ls_fieldlist>-textl.
      ENDIF.
    ENDLOOP.


    LOOP AT s_fnams ASSIGNING FIELD-SYMBOL(<f_fnams>).

      READ TABLE gt_groupable_fields ASSIGNING <ls_groupable_fields> WITH KEY fnam = <f_fnams>-low.

      IF sy-subrc NE 0.
        DELETE s_fnams.
      ELSE.
        APPEND <ls_groupable_fields> TO gt_selected_group_fields.
        nr_pos = nr_pos + 1.

        IF p_yval IS INITIAL OR nr_pos < nr_count.

          APPEND INITIAL LINE TO gt_group_key_columns ASSIGNING <ls_group_key_columns>.
          <ls_group_key_columns>-fnam = <f_fnams>-low.
          <ls_group_key_columns>-grup = nr_pos.
          <ls_group_key_columns>-ikey = 'X'.

          grpx1 = VALUE #( gt_fieldlist[ fname = <ls_groupable_fields>-fnam ]-grpx1 OPTIONAL ).
          IF grpx1 IS NOT INITIAL.
            APPEND INITIAL LINE TO gt_group_key_columns ASSIGNING <ls_group_key_columns>.
            <ls_group_key_columns>-fnam = grpx1.
            <ls_group_key_columns>-grup = nr_pos.
          ENDIF.

          grpx2 = VALUE #( gt_fieldlist[ fname = <ls_groupable_fields>-fnam ]-grpx2 OPTIONAL ).
          IF grpx2 IS NOT INITIAL.
            APPEND INITIAL LINE TO gt_group_key_columns ASSIGNING <ls_group_key_columns>.
            <ls_group_key_columns>-fnam = grpx2.
            <ls_group_key_columns>-grup = nr_pos.
          ENDIF.

          grpx3 = VALUE #( gt_fieldlist[ fname = <ls_groupable_fields>-fnam ]-grpx3 OPTIONAL ).
          IF grpx3 IS NOT INITIAL.
            APPEND INITIAL LINE TO gt_group_key_columns ASSIGNING <ls_group_key_columns>.
            <ls_group_key_columns>-fnam = grpx3.
            <ls_group_key_columns>-grup = nr_pos.
          ENDIF.

        ELSE.

          gv_pivot_fieldname =  <f_fnams>-low.

        ENDIF.

      ENDIF.

    ENDLOOP.


    IF pv_only_fill EQ abap_false.

      CALL FUNCTION 'FIELD_CHOICE'
        EXPORTING
          maxfields                 = 12
          titel1                    = VALUE #( gt_textlist[ sym = 'TXA' ]-text OPTIONAL )
          titel2                    = VALUE #( gt_textlist[ sym = 'TXB' ]-text OPTIONAL )
        TABLES
          fieldtabin                = gt_groupable_fields
          selfields                 = gt_selected_group_fields
        EXCEPTIONS
          no_tab_field_input        = 1
          to_many_selfields_entries = 2
          OTHERS                    = 3.


      REFRESH: s_fnams.
      LOOP AT gt_selected_group_fields ASSIGNING FIELD-SYMBOL(<ls_selected_group_fields>).
        APPEND VALUE #( sign = 'I' option = 'EQ' low = <ls_selected_group_fields>-fnam ) TO s_fnams  .
      ENDLOOP.

      nr_pos = 0.
      CLEAR: gt_group_key_columns.

      IF p_addt = 'X'.
        nr_pos = nr_pos + 1.
        APPEND INITIAL LINE TO gt_group_key_columns ASSIGNING <ls_group_key_columns>.
        <ls_group_key_columns>-fnam = 'DUMMY'.
        <ls_group_key_columns>-grup = nr_pos.
        <ls_group_key_columns>-ikey = 'X'.
      ENDIF.

      DESCRIBE TABLE gt_selected_group_fields LINES nr_count.


      LOOP AT gt_selected_group_fields ASSIGNING <ls_selected_group_fields>.

        nr_pos = nr_pos + 1.

        IF p_yval IS INITIAL OR nr_pos < nr_count.

          APPEND INITIAL LINE TO gt_group_key_columns ASSIGNING <ls_group_key_columns>.
          <ls_group_key_columns>-fnam = <ls_selected_group_fields>-fnam.
          <ls_group_key_columns>-grup = nr_pos.
          <ls_group_key_columns>-ikey = 'X'.

          grpx1 = VALUE #( gt_fieldlist[ fname = <ls_selected_group_fields>-fnam ]-grpx1 OPTIONAL ).
          IF grpx1 IS NOT INITIAL.
            APPEND INITIAL LINE TO gt_group_key_columns ASSIGNING <ls_group_key_columns>.
            <ls_group_key_columns>-fnam = grpx1.
            <ls_group_key_columns>-grup = nr_pos.
          ENDIF.

          grpx2 = VALUE #( gt_fieldlist[ fname = <ls_selected_group_fields>-fnam ]-grpx2 OPTIONAL ).
          IF grpx2 IS NOT INITIAL.
            APPEND INITIAL LINE TO gt_group_key_columns ASSIGNING <ls_group_key_columns>.
            <ls_group_key_columns>-fnam = grpx2.
            <ls_group_key_columns>-grup = nr_pos.
          ENDIF.

          grpx3 = VALUE #( gt_fieldlist[ fname = <ls_selected_group_fields>-fnam ]-grpx3 OPTIONAL ).
          IF grpx3 IS NOT INITIAL.
            APPEND INITIAL LINE TO gt_group_key_columns ASSIGNING <ls_group_key_columns>.
            <ls_group_key_columns>-fnam = grpx3.
            <ls_group_key_columns>-grup = nr_pos.
          ENDIF.

        ELSE.

          gv_pivot_fieldname = <ls_selected_group_fields>-fnam.

        ENDIF.

      ENDLOOP.

    ENDIF.

    " Grup ve hiyerarşi sayısı
    gv_group_count = 0.
    LOOP AT s_fnams ASSIGNING <dummmy>.
      gv_group_count += 1.
    ENDLOOP.
    gv_max_level = gv_group_count.
    IF p_yval IS NOT INITIAL.
      gv_max_level -= 1.
    ENDIF.

    IF gv_group_count EQ 0 AND p_xval IS INITIAL.
      p_wrks = ' '.
    ENDIF.

    fill_groups( ).
    fill_aggrs( ).
    set_aggrs( ).
    fill_subts( ).
    set_subts( ).

    " Açık hiyerarşi düzelt
    IF CONV int2( p_hlev ) GT gv_max_level.
      p_hlev = CONV string( gv_max_level ).
    ENDIF.
    DATA(lv_hlev) = ''.
    LOOP AT s_subts[] ASSIGNING FIELD-SYMBOL(<ls_dum1>).
      IF <ls_dum1>-high EQ 'X' AND sy-tabix LE CONV i( p_hlev ).
        lv_hlev = CONV string( sy-tabix ).
      ENDIF.
    ENDLOOP.
    p_hlev = lv_hlev.

    """""""""""""""
    " Dropdowns
    """""""""""""""
    DATA: text_val TYPE string.
    DATA: lv_aggrtype TYPE string.
    CLEAR: ivrm_val, ivrm_val_f, ivrm_val_c, ivrm_val_t, ivrm_val_s, ivrm_val_d.

    " Y Field
    vrm_name = 'p_yval'.
    LOOP AT gt_fieldlist ASSIGNING FIELD-SYMBOL(<fs_fieldlist>).

      text_val = <fs_fieldlist>-textl.
      lv_aggrtype = VALUE #( gt_aggregation_fields[ fnam = <fs_fieldlist>-fname ]-type OPTIONAL ).

      CASE lv_aggrtype.
        WHEN 'A'. text_val = VALUE #( gt_textlist[ sym = 'TW1' ]-text OPTIONAL ) && | | && <fs_fieldlist>-textl.
        WHEN 'W'. text_val = VALUE #( gt_textlist[ sym = 'TW4' ]-text OPTIONAL ) && | | && <fs_fieldlist>-textl.
        WHEN 'M'. text_val = VALUE #( gt_textlist[ sym = 'TW8' ]-text OPTIONAL ) && | | && <fs_fieldlist>-textl.
        WHEN 'L'. text_val = VALUE #( gt_textlist[ sym = 'TW9' ]-text OPTIONAL ) && | | && <fs_fieldlist>-textl.
        WHEN 'P'. text_val = |%| && | | && <fs_fieldlist>-textl.
          "  WHEN 'T'. text_val = VALUE #( gt_textlist[ sym = 'TXS' ]-text OPTIONAL ) && | | && <fs_fieldlist>-textl.
      ENDCASE.

      IF <fs_fieldlist>-slynr IS NOT INITIAL.
        xvrm_val-key = <fs_fieldlist>-slynr.
        xvrm_val-text  =  text_val.
        APPEND xvrm_val TO ivrm_val.
      ENDIF.
      CLEAR: xvrm_val.
    ENDLOOP.

    CALL FUNCTION 'VRM_SET_VALUES'
      EXPORTING
        id     = vrm_name
        values = ivrm_val.

    " Currency Date
    xvrm_val_c-key = '01'.
    xvrm_val_c-text = VALUE #( gt_textlist[ sym = 'DO3' ]-text OPTIONAL ).
    APPEND xvrm_val_c TO ivrm_val_c.
    xvrm_val_c-key = '02'.
    xvrm_val_c-text = VALUE #( gt_textlist[ sym = 'DO4' ]-text OPTIONAL ).
    APPEND xvrm_val_c TO ivrm_val_c.
    xvrm_val_c-key = '03'.
    xvrm_val_c-text = VALUE #( gt_textlist[ sym = 'DO5' ]-text OPTIONAL ).
    APPEND xvrm_val_c TO ivrm_val_c.
    xvrm_val_c-key = '04'.
    xvrm_val_c-text = VALUE #( gt_textlist[ sym = 'DO6' ]-text OPTIONAL ).
    APPEND xvrm_val_c TO ivrm_val_c.
    xvrm_val_c-key = '05'.
    xvrm_val_c-text = VALUE #( gt_textlist[ sym = 'DO7' ]-text OPTIONAL ).
    APPEND xvrm_val_c TO ivrm_val_c.
    xvrm_val_c-key = '06'.
    xvrm_val_c-text = VALUE #( gt_textlist[ sym = 'DO8' ]-text OPTIONAL ).
    APPEND xvrm_val_c TO ivrm_val_c.

    vrm_name_c = 'p_cur1'.
    CALL FUNCTION 'VRM_SET_VALUES'
      EXPORTING
        id     = vrm_name_c
        values = ivrm_val_c.

    vrm_name_c = 'p_cur2'.
    CALL FUNCTION 'VRM_SET_VALUES'
      EXPORTING
        id     = vrm_name_c
        values = ivrm_val_c.

    " Termin Type
    xvrm_val_t-key = 'S'.
    xvrm_val_t-text = VALUE #( gt_textlist[ sym = 'DT1' ]-text OPTIONAL ).
    APPEND xvrm_val_t TO ivrm_val_t.
    xvrm_val_t-key = 'T'.
    xvrm_val_t-text = VALUE #( gt_textlist[ sym = 'DT2' ]-text OPTIONAL ).
    APPEND xvrm_val_t TO ivrm_val_t.

    vrm_name_t = 'p_term'.
    CALL FUNCTION 'VRM_SET_VALUES'
      EXPORTING
        id     = vrm_name_t
        values = ivrm_val_t.

    " Ordering
    xvrm_val_s-key = '1'.
    xvrm_val_s-text = VALUE #( gt_textlist[ sym = 'DO1' ]-text OPTIONAL ).
    APPEND xvrm_val_s TO ivrm_val_s.
    xvrm_val_s-key = '2'.
    xvrm_val_s-text = VALUE #( gt_textlist[ sym = 'DO2' ]-text OPTIONAL ).
    APPEND xvrm_val_s TO ivrm_val_s.
    xvrm_val_s-key = '3'.
    xvrm_val_s-text = VALUE #( gt_textlist[ sym = 'DO3' ]-text OPTIONAL ).
    APPEND xvrm_val_s TO ivrm_val_s.
    xvrm_val_s-key = '4'.
    xvrm_val_s-text = VALUE #( gt_textlist[ sym = 'DO4' ]-text OPTIONAL ).
    APPEND xvrm_val_s TO ivrm_val_s.
    xvrm_val_s-key = '5'.
    xvrm_val_s-text = VALUE #( gt_textlist[ sym = 'DO5' ]-text OPTIONAL ).
    APPEND xvrm_val_s TO ivrm_val_s.

    vrm_name_s = 'p_sort'.
    CALL FUNCTION 'VRM_SET_VALUES'
      EXPORTING
        id     = vrm_name_s
        values = ivrm_val_s.

    " Display as
    CLEAR: ivrm_val_d.

    IF gv_clgui_enabled EQ 'X'.
      xvrm_val_d-key = '0'.
      xvrm_val_d-text = VALUE #( gt_textlist[ sym = 'DS0' ]-text OPTIONAL ).
      APPEND xvrm_val_d TO ivrm_val_d.
    ENDIF.
    xvrm_val_d-key = '1'.
    xvrm_val_d-text = VALUE #( gt_textlist[ sym = 'DS1' ]-text OPTIONAL ).
    APPEND xvrm_val_d TO ivrm_val_d.
    xvrm_val_d-key = '2'.
    xvrm_val_d-text = VALUE #( gt_textlist[ sym = 'DS2' ]-text OPTIONAL ).
    APPEND xvrm_val_d TO ivrm_val_d.
    IF s_fnams[] IS NOT INITIAL.
      xvrm_val_d-key = '3'.
      xvrm_val_d-text = VALUE #( gt_textlist[ sym = 'DS3' ]-text OPTIONAL ).
      APPEND xvrm_val_d TO ivrm_val_d.
    ENDIF.

    vrm_name_d = 'p_disp'.
    CALL FUNCTION 'VRM_SET_VALUES'
      EXPORTING
        id     = vrm_name_d
        values = ivrm_val_d.

    " Display lable fields
    CLEAR: ivrm_val_f.

    xvrm_val_f-key = 'X'.
    xvrm_val_f-text = VALUE #( gt_textlist[ sym = 'PNL' ]-text OPTIONAL ).
    APPEND xvrm_val_f TO ivrm_val_f.
    xvrm_val_f-key = 'Y'.
    xvrm_val_f-text = VALUE #( gt_textlist[ sym = 'PCL' ]-text OPTIONAL ).
    APPEND xvrm_val_f TO ivrm_val_f.
    xvrm_val_f-key = 'Z'.
    xvrm_val_f-text = VALUE #( gt_textlist[ sym = 'PZL' ]-text OPTIONAL ).
    APPEND xvrm_val_f TO ivrm_val_f.

    vrm_name_f = 'p_nolb'.
    CALL FUNCTION 'VRM_SET_VALUES'
      EXPORTING
        id     = vrm_name_f
        values = ivrm_val_f.

    " Sheet Fields
    vrm_name_x = 'p_xval'.
    CLEAR: ivrm_val_x.
    IF gv_group_count GE 1.
      p_xval = ' '.
      xvrm_val_x-key = p_xval.
      IF p_wrks IS NOT INITIAL.
        xvrm_val_x-text = VALUE #( gt_textlist[ sym = 'TXG' ]-text OPTIONAL ).
      ELSE.
        xvrm_val_x-text = ' '.
      ENDIF.
      APPEND xvrm_val_x TO ivrm_val_x.
    ELSE.
      LOOP AT gt_fieldlist ASSIGNING <ls_fieldlist>.
        IF <ls_fieldlist>-isgrp IS NOT INITIAL .
          xvrm_val_x-key  = <ls_fieldlist>-isgrp.
          xvrm_val_x-text = <ls_fieldlist>-textl.
          APPEND xvrm_val_x TO ivrm_val_x.
        ENDIF.
        CLEAR: xvrm_val_x.
      ENDLOOP.
    ENDIF.

    CALL FUNCTION 'VRM_SET_VALUES'
      EXPORTING
        id     = vrm_name_x
        values = ivrm_val_x.

   " Expand tree level
   " vrm_name_l = 'p_hlev'.
   " CLEAR: ivrm_val_l.
   " LOOP AT s_fnams[] ASSIGNING FIELD-SYMBOL(<ls_fnams>).
   "   IF NOT ( p_yval IS NOT INITIAL AND sy-tabix EQ gv_group_count ).
   "     xvrm_val_l-key  = CONV char2( sy-tabix ).
   "     xvrm_val_l-text = VALUE #( gt_fieldlist[ fname = <ls_fnams>-low ]-textl OPTIONAL ).
   "     APPEND xvrm_val_l TO ivrm_val_l.
   "     CLEAR: xvrm_val_l.
   "   ENDIF.
   " ENDLOOP.
   "
   " CALL FUNCTION 'VRM_SET_VALUES'
   "   EXPORTING
   "     id     = vrm_name_l
   "     values = ivrm_val_l.


    CLEAR: ivrm_val_r, ivrm_val_o, ivrm_val_v.

    " Logic Operator
    xvrm_val_r-key = 'AND'.
    xvrm_val_r-text = 'AND'.
    APPEND xvrm_val_r TO ivrm_val_r.
    xvrm_val_r-key = 'OR'.
    xvrm_val_r-text = 'OR'.
    APPEND xvrm_val_r TO ivrm_val_r.

    vrm_name_r = 'p_opt2'.
    CALL FUNCTION 'VRM_SET_VALUES'
      EXPORTING
        id     = vrm_name_r
        values = ivrm_val_r.
    vrm_name_r = 'p_opt3'.
    CALL FUNCTION 'VRM_SET_VALUES'
      EXPORTING
        id     = vrm_name_r
        values = ivrm_val_r.
    vrm_name_r = 'p_opt4'.
    CALL FUNCTION 'VRM_SET_VALUES'
      EXPORTING
        id     = vrm_name_r
        values = ivrm_val_r.
    vrm_name_r = 'p_opt5'.
    CALL FUNCTION 'VRM_SET_VALUES'
      EXPORTING
        id     = vrm_name_r
        values = ivrm_val_r.

    " Condition
    xvrm_val_o-key = '='.
    xvrm_val_o-text = '='.
    APPEND xvrm_val_o TO ivrm_val_o.
    xvrm_val_o-key = '<>'.
    xvrm_val_o-text = '<>'.
    APPEND xvrm_val_o TO ivrm_val_o.
    xvrm_val_o-key = '>'.
    xvrm_val_o-text = '>'.
    APPEND xvrm_val_o TO ivrm_val_o.
    xvrm_val_o-key = '>='.
    xvrm_val_o-text = '>='.
    APPEND xvrm_val_o TO ivrm_val_o.
    xvrm_val_o-key = '<'.
    xvrm_val_o-text = '<'.
    APPEND xvrm_val_o TO ivrm_val_o.
    xvrm_val_o-key = '<='.
    xvrm_val_o-text = '<='.
    APPEND xvrm_val_o TO ivrm_val_o.

    vrm_name_o = 'p_cnd1'.
    CALL FUNCTION 'VRM_SET_VALUES'
      EXPORTING
        id     = vrm_name_o
        values = ivrm_val_o.
    vrm_name_o = 'p_cnd2'.
    CALL FUNCTION 'VRM_SET_VALUES'
      EXPORTING
        id     = vrm_name_o
        values = ivrm_val_o.
    vrm_name_o = 'p_cnd3'.
    CALL FUNCTION 'VRM_SET_VALUES'
      EXPORTING
        id     = vrm_name_o
        values = ivrm_val_o.
    vrm_name_o = 'p_cnd4'.
    CALL FUNCTION 'VRM_SET_VALUES'
      EXPORTING
        id     = vrm_name_o
        values = ivrm_val_o.
    vrm_name_o = 'p_cnd5'.
    CALL FUNCTION 'VRM_SET_VALUES'
      EXPORTING
        id     = vrm_name_o
        values = ivrm_val_o.

    " Field or Value
    xvrm_val_v-key = 'FIELD'.
    xvrm_val_v-text = 'FIELD'.
    APPEND xvrm_val_v TO ivrm_val_v.
    xvrm_val_v-key = 'VALUE'.
    xvrm_val_v-text = 'VALUE'.
    APPEND xvrm_val_v TO ivrm_val_v.

    vrm_name_v = 'p_fov1'.
    CALL FUNCTION 'VRM_SET_VALUES'
      EXPORTING
        id     = vrm_name_v
        values = ivrm_val_v.
    vrm_name_v = 'p_fov2'.
    CALL FUNCTION 'VRM_SET_VALUES'
      EXPORTING
        id     = vrm_name_v
        values = ivrm_val_v.
    vrm_name_v = 'p_fov3'.
    CALL FUNCTION 'VRM_SET_VALUES'
      EXPORTING
        id     = vrm_name_v
        values = ivrm_val_v.
    vrm_name_v = 'p_fov4'.
    CALL FUNCTION 'VRM_SET_VALUES'
      EXPORTING
        id     = vrm_name_v
        values = ivrm_val_v.
    vrm_name_v = 'p_fov5'.
    CALL FUNCTION 'VRM_SET_VALUES'
      EXPORTING
        id     = vrm_name_v
        values = ivrm_val_v.

  ENDMETHOD.


  METHOD fill_groups.

    CLEAR: p_grp1,p_grp2,p_grp3,p_grp4,p_grp5,p_grp6.

    LOOP AT gt_selected_group_fields ASSIGNING FIELD-SYMBOL(<ls_selected_group_fields>).

      DATA(lv_tabix) = sy-tabix.
      IF but02 EQ icon_previous_page.
        lv_tabix = lv_tabix - 6.
      ENDIF.

      CASE lv_tabix.
        WHEN 1.
          p_grp1 = VALUE #( gt_groupable_fields[ fnam = <ls_selected_group_fields>-fnam ]-text OPTIONAL ) .
        WHEN 2.
          p_grp2 = VALUE #( gt_groupable_fields[ fnam = <ls_selected_group_fields>-fnam ]-text OPTIONAL ) .
        WHEN 3.
          p_grp3 = VALUE #( gt_groupable_fields[ fnam = <ls_selected_group_fields>-fnam ]-text OPTIONAL ) .
        WHEN 4.
          p_grp4 = VALUE #( gt_groupable_fields[ fnam = <ls_selected_group_fields>-fnam ]-text OPTIONAL ) .
        WHEN 5.
          p_grp5 = VALUE #( gt_groupable_fields[ fnam = <ls_selected_group_fields>-fnam ]-text OPTIONAL ) .
        WHEN 6.
          p_grp6 = VALUE #( gt_groupable_fields[ fnam = <ls_selected_group_fields>-fnam ]-text OPTIONAL ) .
      ENDCASE.

    ENDLOOP.

  ENDMETHOD.


  METHOD go_when_clicked.

    DATA: name TYPE c LENGTH 50 .
    FIELD-SYMBOLS <comp> TYPE any.

    DATA: k_field TYPE c LENGTH 50.
    DATA: r_field TYPE c LENGTH 50.

    DATA: new_line TYPE REF TO data.
    FIELD-SYMBOLS: <f_line>   TYPE any.
    FIELD-SYMBOLS: <f_field>  TYPE any.
    FIELD-SYMBOLS: <f_field2>  TYPE any.
    FIELD-SYMBOLS: <f_field3>  TYPE any.

    IF gv_detail_view = abap_false.
      IF s_fnams[] IS INITIAL.
        CHECK gt_main_data IS NOT INITIAL.
        CREATE DATA new_line LIKE LINE OF gt_main_data.
        ASSIGN new_line->* TO <f_line>.
        READ TABLE gt_main_data INDEX iv_row INTO <f_line>.
      ELSE.
        IF <gs_group_data> IS ASSIGNED.
          CHECK <gs_group_data> IS NOT INITIAL.
          CREATE DATA new_line LIKE LINE OF <gs_group_data>.
          ASSIGN new_line->* TO <f_line>.
          READ TABLE <gs_group_data> INDEX iv_row INTO <f_line>.
        ELSE.
          RETURN.
        ENDIF.
      ENDIF.
    ELSE.
      CHECK gt_detail_data IS NOT INITIAL.
      CREATE DATA new_line LIKE LINE OF gt_detail_data.
      ASSIGN new_line->* TO <f_line>.
      READ TABLE gt_detail_data INDEX iv_row INTO <f_line>.
    ENDIF.

    ASSIGN COMPONENT 'VKORG' OF STRUCTURE <f_line> TO FIELD-SYMBOL(<vkorg>).
    ASSIGN COMPONENT 'VTWEG' OF STRUCTURE <f_line> TO FIELD-SYMBOL(<vtweg>).
    ASSIGN COMPONENT 'SPART' OF STRUCTURE <f_line> TO FIELD-SYMBOL(<spart>).
    ASSIGN COMPONENT 'VBELK' OF STRUCTURE <f_line> TO FIELD-SYMBOL(<vbelk>).
    ASSIGN COMPONENT 'VBELN' OF STRUCTURE <f_line> TO FIELD-SYMBOL(<vbeln>).
    ASSIGN COMPONENT 'POSNR' OF STRUCTURE <f_line> TO FIELD-SYMBOL(<posnr>).
    ASSIGN COMPONENT 'VGTYP' OF STRUCTURE <f_line> TO FIELD-SYMBOL(<vgtyp>).
    ASSIGN COMPONENT 'VGBEL' OF STRUCTURE <f_line> TO FIELD-SYMBOL(<vgbel>).
    ASSIGN COMPONENT 'VGPOS' OF STRUCTURE <f_line> TO FIELD-SYMBOL(<vgpos>).
    ASSIGN COMPONENT 'EBELN' OF STRUCTURE <f_line> TO FIELD-SYMBOL(<ebeln>).
    ASSIGN COMPONENT 'MBLNR' OF STRUCTURE <f_line> TO FIELD-SYMBOL(<mblnr>).
    ASSIGN COMPONENT 'BELNR' OF STRUCTURE <f_line> TO FIELD-SYMBOL(<belnr>).
    ASSIGN COMPONENT 'BUKRS' OF STRUCTURE <f_line> TO FIELD-SYMBOL(<bukrs>).
    ASSIGN COMPONENT 'GJAHR' OF STRUCTURE <f_line> TO FIELD-SYMBOL(<gjahr>).
    ASSIGN COMPONENT 'AUGBL' OF STRUCTURE <f_line> TO FIELD-SYMBOL(<augbl>).
    ASSIGN COMPONENT 'LFBEL' OF STRUCTURE <f_line> TO FIELD-SYMBOL(<lfbel>).
    ASSIGN COMPONENT 'FKBEL' OF STRUCTURE <f_line> TO FIELD-SYMBOL(<fkbel>).
    ASSIGN COMPONENT 'MATNR' OF STRUCTURE <f_line> TO FIELD-SYMBOL(<matnr>).

    CASE iv_column.
      WHEN 'KUNFT' OR 'KUNFT_X'.
        ASSIGN COMPONENT 'KUNFT' OF STRUCTURE <f_line> TO FIELD-SYMBOL(<kunnr>).
      WHEN 'KUNMT' OR 'KUNMT_X'.
        ASSIGN COMPONENT 'KUNMT' OF STRUCTURE <f_line> TO <kunnr>.
      WHEN 'KUNFS' OR 'KUNFS_X'.
        ASSIGN COMPONENT 'KUNFS' OF STRUCTURE <f_line> TO <kunnr>.
      WHEN OTHERS.
        ASSIGN COMPONENT 'KUNNR' OF STRUCTURE <f_line> TO <kunnr>.
    ENDCASE.


    " ***********************************
    " SALV Popup Select
    TYPES: BEGIN OF cs_data,
             modtext TYPE modtext_d,
           END OF cs_data.

    DATA: ct_data TYPE TABLE OF cs_data WITH EMPTY KEY.

    CASE iv_column.

      WHEN 'VBELN'.
        CHECK <vbeln> IS NOT INITIAL.

        DATA: lo_popup  TYPE REF TO cl_salv_table,
              lo_events TYPE REF TO cl_salv_events_table.

        APPEND VALUE #( modtext = VALUE #( gt_textlist[ sym = 'TSO' ]-text OPTIONAL ) ) TO ct_data.
        APPEND VALUE #( modtext = VALUE #( gt_textlist[ sym = 'TIS' ]-text OPTIONAL ) ) TO ct_data.
        APPEND VALUE #( modtext = VALUE #( gt_textlist[ sym = 'TLS' ]-text OPTIONAL ) ) TO ct_data.

        lcl_salv_pop_up=>popup( EXPORTING  start_line = 1
                                           end_line   = 3
                                           pop_header = VALUE char100( gt_textlist[ sym = 'D01' ]-text OPTIONAL )
                                           t_table    = ct_data  )  .

        CASE gv_clicked_row.
          WHEN 1.
            SET PARAMETER ID 'AUN' FIELD <vbeln>.
            CALL TRANSACTION 'VA03' WITH AUTHORITY-CHECK AND
                                    SKIP FIRST SCREEN.
          WHEN 2.
            SET PARAMETER ID 'VBELN' FIELD <vbeln>.
            SUBMIT (sy-repid) AND RETURN.
          WHEN 3.
            SET PARAMETER ID 'VBELN' FIELD <vbeln>.
            SET PARAMETER ID 'TTYPE' FIELD 'T'.
            SUBMIT (sy-repid) AND RETURN.
        ENDCASE.

      WHEN 'MATNR' OR 'MAKTX'.
        CHECK <matnr> IS ASSIGNED.
        CHECK <matnr> IS NOT INITIAL.

        SET PARAMETER ID 'MAT' FIELD <matnr>.
        IF <vkorg> IS ASSIGNED AND <vtweg> IS ASSIGNED.
          SET PARAMETER ID 'VKO' FIELD <vkorg>.
          SET PARAMETER ID 'VTW' FIELD <vtweg>.
        ENDIF.
        SET PARAMETER ID 'MXX' FIELD 'V' .
        CALL TRANSACTION 'MM03' WITH AUTHORITY-CHECK AND SKIP FIRST SCREEN .

      WHEN 'KUNNR' OR 'KUNNR_X' OR 'KUNRE' OR 'KUNRE_X' OR 'KUNRG' OR 'KUNRG_X' OR 'KUNWE'  OR 'KUNWE_X'.
        CHECK <kunnr> IS ASSIGNED.
        CHECK <kunnr> IS NOT INITIAL.

        SET PARAMETER ID 'KUN' FIELD <kunnr>.
        IF <vkorg> IS ASSIGNED AND <vtweg> IS ASSIGNED AND <spart> IS ASSIGNED.
          SET PARAMETER ID 'VKO' FIELD <vkorg>.
          SET PARAMETER ID 'VTW' FIELD <vtweg>.
          SET PARAMETER ID 'SPA' FIELD <spart>.
        ENDIF.
        CALL TRANSACTION 'XD03' WITH AUTHORITY-CHECK AND SKIP FIRST SCREEN .

      WHEN 'VBELK'.
        CHECK <vbelk> IS NOT INITIAL.

        SET PARAMETER ID 'VBELK' FIELD <vbelk>.
        IF gv_detail_view EQ abap_true.
          SET PARAMETER ID 'KEEP_DETAIL' FIELD gv_detail_view.
        ENDIF.

        SUBMIT (sy-repid) WITH s_vbeln EQ <vbeln>
                          WITH p_layd  EQ p_layd
                          WITH p_sort  EQ p_sort
                          WITH p_asde  EQ p_asde
                          WITH p_colr  EQ p_colr
                          WITH p_zero  EQ p_zero
                          WITH p_twoc  EQ p_twoc
                          WITH p_cdec  EQ p_cdec
        AND RETURN.

      WHEN 'VGBEL'.
        CHECK <vgtyp> IS NOT INITIAL.

        IF <vgtyp> EQ 'M'.
          SELECT SINGLE *
             INTO @DATA(ls_aubel)
             FROM vbrp
            WHERE vbeln EQ @<vgbel>
              AND posnr EQ @<vgpos>.

          r_field = ls_aubel-aubel.
        ELSE.
          r_field = <vgbel> .
        ENDIF.

        SET PARAMETER ID 'AUN' FIELD r_field .
        CALL TRANSACTION 'VA03' WITH AUTHORITY-CHECK AND SKIP FIRST SCREEN.

      WHEN 'VGPOS'.
        CHECK <vgtyp> IS NOT INITIAL.

        IF <vgtyp> EQ 'M'.
          SELECT SINGLE *
             INTO @DATA(ls_aubelp)
             FROM vbrp
            WHERE vbeln EQ @<vgbel>
              AND posnr EQ @<vgpos>.
          r_field = ls_aubelp-aubel && '-' && ls_aubelp-aupos.
        ELSE.
          r_field = <vgbel> && '-' && <vgpos> .
        ENDIF.

        SET PARAMETER ID 'VBELK' FIELD r_field.
        SUBMIT (sy-repid) AND RETURN.

      WHEN 'LFBEL'.
        CHECK <lfbel> IS NOT INITIAL.

        SET PARAMETER ID 'VL' FIELD <lfbel>.
        CALL TRANSACTION 'VL03N' WITH AUTHORITY-CHECK AND SKIP FIRST SCREEN.

      WHEN 'FKBEL'.
        CHECK <fkbel> IS NOT INITIAL.

        SET PARAMETER ID 'VF'  FIELD <fkbel>.
        CALL TRANSACTION 'VF03' WITH AUTHORITY-CHECK AND SKIP FIRST SCREEN.

      WHEN 'MBLNR'.
        CHECK <mblnr> IS NOT INITIAL.

        SET PARAMETER ID 'MBN' FIELD <mblnr>.
        CALL TRANSACTION 'MB51' WITH AUTHORITY-CHECK AND SKIP FIRST SCREEN.

      WHEN 'BELNR'.
        CHECK <belnr> IS NOT INITIAL.

        SET PARAMETER ID 'BLN' FIELD <belnr>.
        SET PARAMETER ID 'BUK' FIELD <bukrs>.
        SET PARAMETER ID 'GJR' FIELD <gjahr>.
        CALL TRANSACTION 'FB03' WITH AUTHORITY-CHECK AND SKIP FIRST SCREEN.


      WHEN OTHERS.

        CHECK s_fnams[] IS NOT INITIAL.
        DATA hiera TYPE c LENGTH 20.
        DATA(h_num) = 0.
        DATA(l_num) = 0.

        DATA: lv_aggrtype TYPE string.

        IF gv_detail_view = abap_false.

          ASSIGN COMPONENT 'HIERA' OF STRUCTURE <f_line> TO <f_field>.
          hiera = <f_field>.
          IF hiera IS NOT INITIAL.
            h_num = hiera.
          ENDIF.

          gv_filter_where = ' '.

          IF VALUE #( gt_group_key_columns[ fnam = iv_column ]-fnam OPTIONAL ) IS INITIAL.

            LOOP AT gt_group_key_columns ASSIGNING FIELD-SYMBOL(<fs_group_key_columns>).
              IF hiera IS NOT INITIAL AND hiera NE 0 AND <fs_group_key_columns>-ikey = 'X' AND <fs_group_key_columns>-fnam NE 'DUMMY'.
                l_num += 1.
                IF ( p_addp IS INITIAL AND p_disp NE '3' ) OR ( h_num NE 0 AND l_num LE h_num ).
                  ASSIGN COMPONENT <fs_group_key_columns>-fnam OF STRUCTURE <f_line> TO <comp>.
                  CONDENSE <fs_group_key_columns>-fnam NO-GAPS .
                  IF gv_filter_where IS NOT INITIAL. gv_filter_where = gv_filter_where && | AND |. ENDIF.
                  IF <comp> IS INITIAL.
                    gv_filter_where = gv_filter_where && <fs_group_key_columns>-fnam && | IS INITIAL|.
                  ELSE.
                    gv_filter_where = gv_filter_where && <fs_group_key_columns>-fnam && | EQ '| && <comp> && |'|.
                  ENDIF.
                ENDIF.
              ENDIF.
            ENDLOOP.

            IF gv_pivot_fieldname IS NOT INITIAL.

              gt_fcat = go_main->set_fieldcatalog( ).

              " Son kolon is y field where koşulunda yok
              DATA(lv_col_suffix) = 100.
              LOOP AT gt_group_data_columns ASSIGNING FIELD-SYMBOL(<fs_group_data_columns>).
                ADD 1 TO lv_col_suffix.
                DATA(last_field_name) = 'MENGE' && lv_col_suffix.
              ENDLOOP.

              " Diğer kolonlarda MENGE101, MENGE102 vs. reptext deki değeri oku
              IF iv_column NE last_field_name.
                name = VALUE #( gt_fcat[ fieldname = iv_column ]-reptext OPTIONAL ) .
                ASSIGN name TO <comp>.
                IF gv_filter_where IS NOT INITIAL. gv_filter_where = gv_filter_where && | AND |. ENDIF.
                IF name EQ '-'.
                  gv_filter_where = gv_filter_where && gv_pivot_fieldname && | IS INITIAL|.
                ELSE.
                  gv_filter_where = gv_filter_where && gv_pivot_fieldname && | EQ '| && <comp> && |'|.
                ENDIF.
              ENDIF.

              " Hücre alanı: y alanı
              k_field = VALUE #( gt_fieldlist[ slynr = p_yval ]-fname OPTIONAL ) .

            ELSE.

              " Hücre alanı: Kolonun kendisi
              k_field = iv_column.

            ENDIF.

            IF k_field IS NOT INITIAL AND k_field NE '&Hierarchy'.
              lv_aggrtype = VALUE #( gt_aggregation_fields[ fnam = k_field ]-type OPTIONAL ).
              " Toplam, ağ.ortalama sıfırdan farklılar; max, min için = hücre değeri
              IF lv_aggrtype EQ 'M' OR lv_aggrtype EQ 'L'.
                IF gv_filter_where IS NOT INITIAL. gv_filter_where = gv_filter_where && | AND |. ENDIF.
                ASSIGN COMPONENT iv_column OF STRUCTURE <f_line> TO <f_field>.
                DATA(cell_value) = CONV string( <f_field> ) .
                CONDENSE cell_value NO-GAPS.
                gv_filter_where = gv_filter_where && k_field && | EQ '| && cell_value && |'|.
              ELSEIF lv_aggrtype EQ 'T' OR lv_aggrtype EQ 'W'.
                IF gv_filter_where IS NOT INITIAL. gv_filter_where = gv_filter_where && | AND |. ENDIF.
                gv_filter_where = gv_filter_where && k_field && | IS NOT INITIAL| .
              ENDIF.
            ENDIF.

            gv_detail_view = abap_true.
            go_main->fill_data( ).

            IF <gs_itab> IS INITIAL.
              MESSAGE s208(fz).
            ELSE.
              go_main->display_data( ).
            ENDIF.

            gv_detail_view = abap_false.

          ENDIF.

        ENDIF.

    ENDCASE.


  ENDMETHOD.


ENDCLASS.


CLASS lcl_popup_aggr_setup IMPLEMENTATION .


  METHOD display_popup.

    DATA: lx_msg TYPE REF TO cx_salv_msg.

    t_aggregation_fields[] = gt_aggregation_fields[].

    TRY.
        cl_salv_table=>factory(
          IMPORTING
            r_salv_table = ob_salv_table
          CHANGING
            t_table      = t_aggregation_fields ).
      CATCH cx_salv_msg INTO lx_msg.
    ENDTRY.
*
*...Get all the Columns
    DATA: lo_cols TYPE REF TO cl_salv_columns.
    lo_cols = ob_salv_table->get_columns( ).
*
*   set the Column optimization
    "   lo_cols->set_optimize( 'X' ).
*
*...Process individual columns
    DATA: lo_column TYPE REF TO cl_salv_column_list.
*
*   Change the properties of the Columns KUNNR
    TRY.
        lo_column ?= lo_cols->get_column( 'FNAM' ).
        lo_column->set_technical( ).

        lo_column ?= lo_cols->get_column( 'TEXT' ).
        lo_column->set_short_text('').
        lo_column->set_medium_text('').
        lo_column->set_long_text( VALUE #( gt_textlist[ sym = 'TXC' ]-text OPTIONAL ) ).
        lo_column->set_output_length( 24 ).

        lo_column ?= lo_cols->get_column( 'TYPE' ).
        "  lo_column->set_cell_type( if_salv_c_cell_type=>dropdown ).
        lo_column->set_technical( ).

        lo_column ?= lo_cols->get_column( 'CTOT' ).
        lo_column->set_cell_type( if_salv_c_cell_type=>hotspot ).
        lo_column->set_icon( if_salv_c_bool_sap=>true ).
        lo_column->set_long_text( VALUE #( gt_textlist[ sym = 'TXS' ]-text OPTIONAL ) ).
        lo_column->set_output_length( 10 ).

        lo_column ?= lo_cols->get_column( 'CPER' ).
        lo_column->set_cell_type( if_salv_c_cell_type=>hotspot ).
        lo_column->set_icon( if_salv_c_bool_sap=>true ).
        lo_column->set_long_text( VALUE #( gt_textlist[ sym = 'TW0' ]-text OPTIONAL ) ).
        lo_column->set_output_length( 10 ).

        lo_column ?= lo_cols->get_column( 'CAVG' ).
        lo_column->set_cell_type( if_salv_c_cell_type=>hotspot ).
        lo_column->set_icon( if_salv_c_bool_sap=>true ).
        lo_column->set_long_text( VALUE #( gt_textlist[ sym = 'TW2' ]-text OPTIONAL ) ).
        lo_column->set_output_length( 10 ).

        lo_column ?= lo_cols->get_column( 'CWGA' ).
        lo_column->set_cell_type( if_salv_c_cell_type=>hotspot ).
        lo_column->set_icon( if_salv_c_bool_sap=>true ).
        lo_column->set_long_text( VALUE #( gt_textlist[ sym = 'TW5' ]-text OPTIONAL ) ).
        lo_column->set_output_length( 10 ).

        lo_column ?= lo_cols->get_column( 'CMAX' ).
        lo_column->set_cell_type( if_salv_c_cell_type=>hotspot ).
        lo_column->set_icon( if_salv_c_bool_sap=>true ).
        lo_column->set_long_text( VALUE #( gt_textlist[ sym = 'TW6' ]-text OPTIONAL ) ).
        lo_column->set_output_length( 10 ).

        lo_column ?= lo_cols->get_column( 'CMIN' ).
        lo_column->set_cell_type( if_salv_c_cell_type=>hotspot ).
        lo_column->set_icon( if_salv_c_bool_sap=>true ).
        lo_column->set_long_text( VALUE #( gt_textlist[ sym = 'TW7' ]-text OPTIONAL ) ).
        lo_column->set_output_length( 10 ).
      CATCH cx_salv_not_found.
    ENDTRY.

*   Get the event object
    DATA: lo_events TYPE REF TO cl_salv_events_table.
    lo_events = ob_salv_table->get_event( ).

    DATA: ob_salv_events    TYPE REF TO cl_salv_events_table.
    ob_salv_events = ob_salv_table->get_event( ).
    SET HANDLER on_link_click FOR ob_salv_events .
    SET HANDLER on_function_click FOR ob_salv_events .


    ob_salv_table->set_screen_status( pfstatus = 'ST850'
                                      report   = 'SAPLKKBL' ).

    ob_salv_table->set_screen_popup(
      start_column = start_column
      end_column   = end_column
      start_line   = start_line
      end_line     = end_line ).

    DATA(ob_salv_settings) = ob_salv_table->get_display_settings( ).
    ob_salv_settings->set_list_header( CONV #( pop_header )  ).

    ob_salv_table->display( ).

  ENDMETHOD.


  METHOD on_link_click.
*
    READ TABLE t_aggregation_fields ASSIGNING FIELD-SYMBOL(<lfa_data>) INDEX row.
    CHECK sy-subrc IS INITIAL.

    <lfa_data>-ctot = icon_wd_radio_button_empty.
    <lfa_data>-cper = icon_wd_radio_button_empty.
    <lfa_data>-cavg = icon_wd_radio_button_empty.
    <lfa_data>-cwga = icon_wd_radio_button_empty.
    <lfa_data>-cmax = icon_wd_radio_button_empty.
    <lfa_data>-cmin = icon_wd_radio_button_empty.

    CASE column.
      WHEN 'CTOT'.
        <lfa_data>-type = 'T'.
        <lfa_data>-ctot = icon_radiobutton.
      WHEN 'CPER'.
        <lfa_data>-type = 'P'.
        <lfa_data>-cper = icon_radiobutton.
      WHEN 'CAVG'.
        <lfa_data>-type = 'A'.
        <lfa_data>-cavg = icon_radiobutton.
      WHEN 'CWGA'.
        <lfa_data>-type = 'W'.
        <lfa_data>-cwga = icon_radiobutton.
      WHEN 'CMAX'.
        <lfa_data>-type = 'M'.
        <lfa_data>-cmax = icon_radiobutton.
      WHEN 'CMIN'.
        <lfa_data>-type = 'L'.
        <lfa_data>-cmin = icon_radiobutton.
    ENDCASE.

    ob_salv_table->refresh( ).

  ENDMETHOD.


  METHOD on_function_click .

    CASE e_salv_function.
      WHEN 'GOON'.
        gt_aggregation_fields[] = t_aggregation_fields[].
        go_main->set_aggrs( ).

      WHEN 'ABR'.
    ENDCASE.

    ob_salv_table->close_screen( ).

  ENDMETHOD .


ENDCLASS.


CLASS lcl_popup_subt_setup IMPLEMENTATION .


  METHOD display_popup.

    DATA: lx_msg TYPE REF TO cx_salv_msg.

    t_subtotal_fields[] = gt_subtotal_fields[].

    TRY.
        cl_salv_table=>factory(
          IMPORTING
            r_salv_table = ob_salv_table
          CHANGING
            t_table      = t_subtotal_fields ).
      CATCH cx_salv_msg INTO lx_msg.
    ENDTRY.
*
*...Get all the Columns
    DATA: lo_cols TYPE REF TO cl_salv_columns.
    lo_cols = ob_salv_table->get_columns( ).

*
*...Process individual columns
    DATA: lo_column TYPE REF TO cl_salv_column_list.
*
*   Change the properties of the Columns
    TRY.
        lo_column ?= lo_cols->get_column( 'FNAM' ).
        lo_column->set_technical( ).

        lo_column ?= lo_cols->get_column( 'TEXT' ).
        lo_column->set_short_text('').
        lo_column->set_medium_text('').
        lo_column->set_long_text( VALUE #( gt_textlist[ sym = 'TXC' ]-text OPTIONAL ) ).
        lo_column->set_output_length( 20 ).

        lo_column ?= lo_cols->get_column( 'CTOT' ).
        lo_column->set_cell_type( if_salv_c_cell_type=>checkbox_hotspot ).
        lo_column->set_long_text( VALUE #( gt_textlist[ sym = 'PAP' ]-text OPTIONAL ) ).
        lo_column->set_output_length( 15 ).

        lo_column ?= lo_cols->get_column( 'HLEV' ).
        lo_column->set_cell_type( if_salv_c_cell_type=>checkbox_hotspot ).
        lo_column->set_long_text( VALUE #( gt_textlist[ sym = 'PHL' ]-text OPTIONAL ) ).
        lo_column->set_output_length( 20 ).

      CATCH cx_salv_not_found.
    ENDTRY.

*   Get the event object
    DATA: lo_events TYPE REF TO cl_salv_events_table.
    lo_events = ob_salv_table->get_event( ).

    DATA: ob_salv_events    TYPE REF TO cl_salv_events_table.
    ob_salv_events = ob_salv_table->get_event( ).
    SET HANDLER on_link_click FOR ob_salv_events .
    SET HANDLER on_function_click FOR ob_salv_events .

    ob_salv_table->set_screen_status( pfstatus = 'ST850'
                                      report   = 'SAPLKKBL' ).

    ob_salv_table->set_screen_popup(
      start_column = start_column
      end_column   = end_column
      start_line   = start_line
      end_line     = end_line ).

    DATA(ob_salv_settings) = ob_salv_table->get_display_settings( ).
    ob_salv_settings->set_list_header( CONV #( pop_header )  ).

    ob_salv_table->display( ).

  ENDMETHOD.


  METHOD on_link_click.

    READ TABLE t_subtotal_fields ASSIGNING FIELD-SYMBOL(<lfs_data>) INDEX row.
    CHECK sy-subrc IS INITIAL.

    CASE column.
      WHEN 'CTOT'.
        IF <lfs_data>-ctot IS INITIAL.
          <lfs_data>-ctot = 'X'.
        ELSE.
          <lfs_data>-ctot = ''.
          <lfs_data>-hlev = ''.
        ENDIF.

      WHEN 'HLEV'.
        IF <lfs_data>-hlev IS INITIAL AND <lfs_data>-ctot = 'X'.
          LOOP AT t_subtotal_fields ASSIGNING FIELD-SYMBOL(<lfs_dat>).
             <lfs_dat>-hlev = ' '.
          ENDLOOP.
          <lfs_data>-hlev = 'X'.
        ELSE.
          <lfs_data>-hlev = ''.
        ENDIF.
    ENDCASE.

    ob_salv_table->refresh( refresh_mode = if_salv_c_refresh=>full ).
    cl_gui_cfw=>flush( ).

  ENDMETHOD.


  METHOD on_function_click .

    CASE e_salv_function.
      WHEN 'GOON'.
        gt_subtotal_fields[] = t_subtotal_fields[].
        go_main->set_subts( ).

      WHEN 'ABR'.
    ENDCASE.

    ob_salv_table->close_screen( ).

  ENDMETHOD .


ENDCLASS.


CLASS lcl_salv_pop_up IMPLEMENTATION .

  METHOD popup .

    TRY.
        cl_salv_table=>factory(
          IMPORTING
            r_salv_table = ob_salv_table
          CHANGING
            t_table      = t_table ).

      CATCH cx_salv_msg.
    ENDTRY.

    CHECK ob_salv_table IS BOUND.

    DATA: ob_salv_events    TYPE REF TO cl_salv_events_table.

    ob_salv_events = ob_salv_table->get_event( ).

    SET HANDLER on_double_click FOR ob_salv_events .
    SET HANDLER on_function_click FOR ob_salv_events .

    lcl_salv_pop_up=>ob_salv_table = ob_salv_table.

    ob_salv_table->set_screen_status( pfstatus = 'ST850'
                                      report   = 'SAPLKKBL' ).

    ob_salv_table->set_screen_popup(
      start_column = start_column
      end_column   = end_column
      start_line   = start_line
      end_line     = end_line ).

    DATA(ob_salv_columns) = ob_salv_table->get_columns( ).

    IF NOT show_headers EQ abap_true.
      ob_salv_columns->set_headers_visible( abap_false ).
    ENDIF.

    IF only_column NE ''.
      DATA(lt_column_ref) = ob_salv_columns->get( ).
      LOOP AT lt_column_ref ASSIGNING FIELD-SYMBOL(<column>).
        IF NOT <column>-columnname EQ only_column.
          <column>-r_column->set_visible( abap_false ).
        ENDIF.
      ENDLOOP.
    ENDIF.

    DATA(ob_salv_settings) = ob_salv_table->get_display_settings( ).
    ob_salv_settings->set_list_header( CONV #( pop_header )  ).

    ob_salv_table->display( ) .

  ENDMETHOD .


  METHOD on_double_click .

    st_double_click-row = row .
    "  st_double_click-column = column .
    gv_clicked_row = st_double_click-row.
    ob_salv_table->close_screen( ).

  ENDMETHOD .


  METHOD on_function_click .

    st_double_click-row = 1 .

    CASE e_salv_function.
      WHEN 'GOON'.
        DATA(lt_rows) = ob_salv_table->get_selections( )->get_selected_rows( ).
        IF NOT lt_rows[] IS INITIAL.
          st_double_click-row = lt_rows[ 1 ].
        ENDIF.
      WHEN 'ABR'.
        st_double_click-row = 0 .
    ENDCASE.

    gv_clicked_row = st_double_click-row.
    ob_salv_table->close_screen( ).

  ENDMETHOD .

ENDCLASS.


CLASS lcl_salv_handler IMPLEMENTATION.

  METHOD: handle_click .

    DATA: t_row    TYPE int8,
          t_column TYPE string.

    t_row = row.
    t_column = column.

    go_main->go_when_clicked( iv_row = t_row iv_column = t_column ).

  ENDMETHOD.

ENDCLASS.


CLASS lcl_tree_handler IMPLEMENTATION.

  METHOD: handle_click .

    DATA: t_row    TYPE int8,
          t_column TYPE string.

    t_row = node_key.
    t_column = columnname.

    go_main->go_when_clicked( iv_row = t_row iv_column = t_column ).

  ENDMETHOD.

ENDCLASS.


CLASS lcl_clgui_handler IMPLEMENTATION .

  METHOD on_double_click.

    DATA: t_row    TYPE int8,
          t_column TYPE string.

    go_main->go_grid->get_current_cell(
       IMPORTING
         es_row_id = fes_row_id
         es_col_id = fes_col_id
         es_row_no = fes_row_no
         e_value = fes_value ).

    t_row = fes_row_id .
    t_column = fes_col_id .

    go_main->go_when_clicked( iv_row = t_row iv_column = t_column ).

  ENDMETHOD .


  METHOD handle_toolbar.

    DELETE e_object->mt_toolbar WHERE function = '&LOCAL&INSERT_ROW' OR function = '&LOCAL&DELETE_ROW'
                                   OR function = '&LOCAL&APPEND'     OR function = '&LOCAL&COPY'
                                   OR function = '&LOCAL&PASTE'      OR function = '&LOCAL&CUT'
                                   OR function = '&LOCAL&COPY_ROW'   OR function = '&MB_VIEW'.

  ENDMETHOD.


  METHOD handle_user_command.

    "CASE sender.
    "  WHEN go_main->go_grid.
    "ENDCASE.

  ENDMETHOD.

ENDCLASS.


MODULE status_0100 OUTPUT.

  SET PF-STATUS '0100'.                         " Double click '0100' to activate. Add values '&F03' OR '&F12' OR '&F15'. Uncomment script.
  SET TITLEBAR 'TITLE_0100' WITH gv_alv_title.  " Double click 'TITLE_0100' to activate. Set value to &1

  IF gv_detail_view = abap_false.
    CALL METHOD go_main->show_alv.
  ELSE.
    CALL METHOD go_main->show_alv_detail.
  ENDIF.

ENDMODULE.


MODULE user_command_0100 INPUT.
  CASE sy-ucomm.
    WHEN '&F03' OR '&F12' OR '&F15'.
      LEAVE TO SCREEN 0.
  ENDCASE.
ENDMODULE.


FORM submit_report.

  SUBMIT (sy-repid) WITH p_expo  EQ 'X'
                    WITH p_lang  EQ p_lang
                    WITH p_loca  EQ p_loca
                    WITH p_disp  EQ p_disp
                    WITH p_excl  EQ p_excl
                    WITH p_wrks  EQ p_wrks
                    WITH p_oprp  EQ p_oprp
                    WITH p_xval  EQ p_xval
                    WITH p_term  EQ p_term
                    WITH p_blin  EQ p_blin
                    WITH p_twoc  EQ p_twoc
                    WITH p_cdec  EQ p_cdec
                    WITH p_ocds  EQ p_ocds
                    WITH p_zero  EQ p_zero
                    WITH p_yval  EQ p_yval
                    WITH p_addp  EQ p_addp
                    WITH p_addt  EQ p_addt
                    WITH p_hlev  EQ p_hlev
                    WITH p_colr  EQ p_colr
                    WITH p_tech  EQ p_tech
                    WITH p_sort  EQ p_sort
                    WITH p_asde  EQ p_asde
                    WITH p_path  EQ p_path
                    WITH p_layo  EQ p_layo
                    WITH p_layd  EQ p_layd
                    WITH p_cprc  EQ p_cprc
                    WITH p_mein  EQ p_mein
                    WITH p_wahr  EQ p_wahr
                    WITH p_cur1  EQ p_cur1
                    WITH p_wah2  EQ p_wah2
                    WITH p_cur2  EQ p_cur2
                    WITH p_bstkd EQ p_bstkd
                    WITH s_fnams IN s_fnams
                    WITH s_aggrs IN s_aggrs
                    WITH s_subts IN s_subts
                    WITH s_gbsta IN s_gbsta
                    WITH s_vkgrp IN s_vkgrp
                    WITH s_auart IN s_auart
                    WITH s_vkbur IN s_vkbur
                    WITH s_vkgrp IN s_vkgrp
                    WITH s_audat IN s_audat
                    WITH s_edatu IN s_edatu
                    WITH s_bldat IN s_bldat
                    WITH s_fkdat IN s_fkdat
                    WITH s_vbeln IN s_vbeln
                    WITH s_posnr IN s_posnr
                    WITH s_mblnr IN s_mblnr
                    WITH s_invid IN s_lfbel
                    WITH s_belnr IN s_belnr
                    WITH s_fkbel IN s_fkbel
                    WITH s_augbl IN s_augbl
                    WITH s_augru IN s_augru
                    WITH s_abgru IN s_abgru
                    WITH s_vgtyp IN s_vgtyp
                    WITH s_lfsta IN s_lfsta
                    WITH s_wbsta IN s_wbsta
                    WITH s_fstat IN s_fstat
                    WITH s_ernam IN s_ernam
                    WITH s_erdat IN s_erdat
                    WITH s_vkorg IN s_vkorg
                    WITH s_vtweg IN s_vtweg
                    WITH s_spart IN s_spart
                    WITH s_kdgrp IN s_kdgrp
                    WITH s_kunnr IN s_kunnr
                    WITH s_zterm IN s_zterm
                    WITH s_vkaus IN s_vkaus
                    WITH s_inco1 IN s_inco1
                    WITH s_kunwe IN s_kunwe
                    WITH s_parvw EQ s_parvw
                    WITH s_partn IN s_partn
                    WITH s_waers IN s_waers
                    WITH s_werks IN s_werks
                    WITH s_lgort IN s_lgort
                    WITH s_vstel IN s_vstel
                    WITH s_regio IN s_regio
                    WITH s_mtart IN s_mtart
                    WITH s_matkl IN s_matkl
                    WITH s_matnr IN s_matnr
                    WITH s_bwtar IN s_bwtar
                    WITH s_charg IN s_charg
                    WITH s_mvgr1 IN s_mvgr1
                    WITH s_mvgr2 IN s_mvgr2
                    WITH s_mvgr3 IN s_mvgr3
                    WITH s_mvgr4 IN s_mvgr4
                    WITH s_mvgr5 IN s_mvgr5

                    WITH p_fld1a EQ p_fld1a
                    WITH p_fld2a EQ p_fld2a
                    WITH p_fld3a EQ p_fld3a
                    WITH p_fld4a EQ p_fld4a
                    WITH p_fld5a EQ p_fld5a
                    WITH p_fld1b EQ p_fld1b
                    WITH p_fld2b EQ p_fld2b
                    WITH p_fld3b EQ p_fld3b
                    WITH p_fld4b EQ p_fld4b
                    WITH p_fld5b EQ p_fld5b
                    WITH p_flt1a EQ p_flt1a
                    WITH p_flt2a EQ p_flt2a
                    WITH p_flt3a EQ p_flt3a
                    WITH p_flt4a EQ p_flt4a
                    WITH p_flt5a EQ p_flt5a
                    WITH p_flt1b EQ p_flt1b
                    WITH p_flt2b EQ p_flt2b
                    WITH p_flt3b EQ p_flt3b
                    WITH p_flt4b EQ p_flt4b
                    WITH p_flt5b EQ p_flt5b
                    WITH p_cnd1  EQ p_cnd1
                    WITH p_cnd2  EQ p_cnd2
                    WITH p_cnd3  EQ p_cnd3
                    WITH p_cnd4  EQ p_cnd4
                    WITH p_cnd5  EQ p_cnd5
                    WITH p_fov1  EQ p_fov1
                    WITH p_fov2  EQ p_fov2
                    WITH p_fov3  EQ p_fov3
                    WITH p_fov4  EQ p_fov4
                    WITH p_fov5  EQ p_fov5
                    WITH p_opt2  EQ p_opt2
                    WITH p_opt3  EQ p_opt3
                    WITH p_opt4  EQ p_opt4
                    WITH p_opt5  EQ p_opt5
  AND RETURN.

ENDFORM.



FORM fill_parameters_tr.

  CLEAR gt_fieldlist[].

  APPEND VALUE #( fname = 'HIERA'     techl = 'HIYERARSI'                    texts = 'Hiyerarşi'            textl = 'Hiyerarşi'                     emphs = 'C700' shide = 'X' spgrp = 1 isgrp = ' ' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'BUKRS'     techl = 'SIRKET'                       texts = 'Şirket'               textl = 'Şirket'                        emphs = 'C500' shide = 'X' spgrp = 5 isgrp = '01' grpx1 = 'BUKRS_X' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'BUKRS_X'   techl = 'SIRKETADI'                    texts = 'Şirket Adı'           textl = 'Şirket Adı'                    emphs = 'C500' shide = 'X' spgrp = 5 isgrp = ' ' grpx1 = ' ' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'SDORG'     techl = 'SDALANI'                      texts = 'SD Alanı'             textl = 'SD Alanı'          emphs = 'C500' spgrp = 6 isgrp = '02' grpx1 = 'VKORG_X' grpx2 = 'VTWEG_X' grpx3 = 'SPART_X' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'VKORG'     techl = 'SATISORGANIZASYONU'           texts = 'Organizasyon'         textl = 'Satış Organizasyonu'           emphs = 'C200' shide = 'X' spgrp = 5 isgrp = '03' grpx1 = 'VKORG_X' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'VKORG_X'   techl = 'SATISORGANIZASYONUADI'        texts = 'Sat.Org.Ad'           textl = 'Satış Organizasyonu Ad'        emphs = 'C200' shide = 'X' spgrp = 5 isgrp = ' '  grpx1 = ' '       ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'VTWEG'     techl = 'DAGITIMKANALI'                texts = 'Dağıtım Kanalı'       textl = 'Dağıtım Kanalı'                emphs = 'C200' shide = 'X' spgrp = 5 isgrp = '04' grpx1 = 'VTWEG_X' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'VTWEG_X'   techl = 'DAGITIMKANALIADI'             texts = 'Dağ.Kan.Ad'           textl = 'Dağıtım Kanalı Ad'             emphs = 'C200' shide = 'X' spgrp = 5 isgrp = ' '  grpx1 = ' '       ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'SPART'     techl = 'BOLUM'                        texts = 'Bölüm'                textl = 'Bölüm'                         emphs = 'C200' shide = 'X' spgrp = 5 isgrp = '05' grpx1 = 'SPART_X' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'SPART_X'   techl = 'BOLUMADI'                     texts = 'BölümAd'              textl = 'Bölüm Ad'                      emphs = 'C200' shide = 'X' spgrp = 5 isgrp = ' '  grpx1 = ' '       ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'VKBUR'     techl = 'SATISOFISI'                   texts = 'Sat.Ofisi'            textl = 'Satış Ofisi'                   emphs = 'C200' shide = 'X' spgrp = 5 isgrp = '06' grpx1 = 'VKBUR_X' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'VKBUR_X'   techl = 'SATISOFISIADI'                texts = 'Sat.Ofisi Adı'        textl = 'Satış Ofisi Adı'               emphs = 'C200' shide = 'X' spgrp = 5 isgrp = ' '  grpx1 = ' '       ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'VKGRP'     techl = 'SATISGRUBU'                   texts = 'Sat.Grubu'            textl = 'Satış Grubu'                   emphs = 'C200' shide = 'X' spgrp = 5 isgrp = '07' grpx1 = 'VKGRP_X' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'VKGRP_X'   techl = 'SATISGRUBUADI'                texts = 'Sat.Grubu Adı'        textl = 'Satış Grubu Adı'               emphs = 'C200' shide = 'X' spgrp = 5 isgrp = ' '  grpx1 = ' '       ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'BZIRK'     techl = 'SATISBOLGESI'                 texts = 'Sat.Blg.'             textl = 'Satış Bölgesi'                 emphs = 'C200' shide = 'X' spgrp = 5 isgrp = '08' grpx1 = 'BZIRK_X' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'BZIRK_X'   techl = 'SATISBOLGESIADI'              texts = 'Sat.Blg.Tnm.'         textl = 'Satış Bölgesi Adı'             emphs = 'C200' shide = 'X' spgrp = 5 isgrp = ' '  grpx1 = ' '       ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'AUART'     techl = 'SATISBELGETURU'               texts = 'Stş.Blg.Türü'         textl = 'Satış Belge Türü'              emphs = 'C500' shide = ' ' spgrp = 1 isgrp = '09' grpx1 = 'AUART_X' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'AUART_X'   techl = 'SATISBELGETURUADI'            texts = 'Stş.Blg.Türü.Adı'     textl = 'Satış Belge Türü Adı'          emphs = 'C500' shide = 'X' spgrp = 1 isgrp = ' '  grpx1 = ' '       ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'TTYPE'     techl = 'TERMINTIPI'                   texts = 'Termin'               textl = 'Termin Tipi'                   emphs = 'C500' shide = ' ' spgrp = 1 isgrp = '10' grpx1 = ' ' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'TSTAT'     techl = 'TERMINDURUMU'                 texts = 'Termin Drm.'          textl = 'Termin Durumu'                 emphs = 'C500' shide = ' ' spgrp = 1 isgrp = '11' grpx1 = ' ' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'VBELK'     techl = 'SIPARISNOVEKALEMI'            texts = 'Sip No/Klm.'          textl = 'Sipariş No/Kalemi'             emphs = 'C500' shide = 'X' spgrp = 1 isgrp = '12' grpx1 = 'VBELN' grpx2 = 'POSNR' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'VBELN'     techl = 'SIPARISNUMARASI'              texts = 'Sipariş'              textl = 'Sipariş Numarası'              emphs = 'C500' shide = ' ' spgrp = 1 isgrp = ' '  grpx1 = ' ' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'POSNR'     techl = 'SIPARISKALEMI'                texts = 'Sip.Klm.'             textl = 'Sipariş Kalemi'                emphs = 'C500' shide = ' ' spgrp = 1 isgrp = ' '  grpx1 = ' ' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'AUDAT'     techl = 'SIPARISTARIHI'                texts = 'Sip.Trh.'             textl = 'Sipariş Tarihi'                emphs = 'C500' shide = ' ' spgrp = 1 isgrp = '13' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'VKPER'     techl = 'SIPARISDONEMI'                texts = 'Sip.Dnm.'             textl = 'Sipariş Dönemi'                emphs = 'C500' shide = 'X' spgrp = 1 isgrp = '14' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'VKWEK'     techl = 'SIPARISHAFTASI'               texts = 'Sip.Hft.'             textl = 'Sipariş Haftası'               emphs = 'C500' shide = 'X' spgrp = 1 isgrp = '15' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'ERDAT'     techl = 'SIPARISYARATMATARIHI'         texts = 'Sip.Yrt.Tarihi'       textl = 'Sipariş Yaratma Tarihi'        emphs = 'C500' shide = 'X' spgrp = 1 isgrp = '16' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'ERZET'     techl = 'SIPARISYARATMASAATI'          texts = 'Sip.Yrt.Saati'        textl = 'Sipariş Yaratma Saati'         emphs = 'C500' shide = 'X' spgrp = 1 isgrp = ' '  ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'ERNAM'     techl = 'SIPARISIYARATAN'              texts = 'Sip.Yrt.'             textl = 'Siparişi Yaratan'              emphs = 'C500' shide = 'X' spgrp = 1 isgrp = '17' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'SHKZG'     techl = 'IADE'                         texts = 'İade'                 textl = 'İade'                          emphs = 'C500' shide = 'X' spgrp = 1 isgrp = ' '  ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'POSEX'     techl = 'ONCEKIKALEM'                  texts = 'ÖnKlm'                textl = 'Önceki Kalem'                  emphs = 'C500' shide = 'X' spgrp = 1 isgrp = ' '  ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'VGBEL'     techl = 'SIPARISREFBELGE'              texts = 'Sip.Ref.Blg.'         textl = 'Sipariş Ref. Belge'            emphs = 'C500' shide = 'X' spgrp = 1 isgrp = ' '  ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'VGPOS'     techl = 'SIPARISREFKALEM'              texts = 'Sip.Ref.Klm.'         textl = 'Sipariş Ref. Kalem'            emphs = 'C500' shide = 'X' spgrp = 1 isgrp = ' '  ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'VGTYP'     techl = 'SIPARISREFTIP'                texts = 'Sip.Ref.Tip'          textl = 'Sipariş Ref. Tip'              emphs = 'C500' shide = 'X' spgrp = 1 isgrp = ' '  ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'BSTKD'     techl = 'MUSTERIREFERANSI'             texts = 'Müş.Ref.'             textl = 'Müşteri Referansı'             emphs = 'C500' shide = 'X' spgrp = 2 isgrp = ' '  ) TO gt_fieldlist.
  IF p_term EQ 'T'.
    APPEND VALUE #( fname = 'LFBEL'     techl = 'TESLIMATBELGESI'              texts = 'Tsl.Blg.'             textl = 'Teslimat Belgesi'              emphs = 'C700' shide = ' ' spgrp = 2 isgrp = ' '  ) TO gt_fieldlist.
    APPEND VALUE #( fname = 'LFPOS'     techl = 'TESLIMATKALEMI'               texts = 'Tsl.Klm.'             textl = 'Teslimat Kalemi'               emphs = 'C700' shide = ' ' spgrp = 2 isgrp = ' '  ) TO gt_fieldlist.
    APPEND VALUE #( fname = 'LFDAT'     techl = 'TESLIMATTARIHI'               texts = 'Tsl.Tar.'             textl = 'Teslimat Tarihi'               emphs = 'C700' shide = ' ' spgrp = 2 isgrp = '18' ) TO gt_fieldlist.
    APPEND VALUE #( fname = 'LFPER'     techl = 'TESLIMATDONEMI'               texts = 'Tsl.Dnm.'             textl = 'Teslimat Dönemi'               emphs = 'C700' shide = 'X' spgrp = 2 isgrp = '19' ) TO gt_fieldlist.
    APPEND VALUE #( fname = 'WBSTA'     techl = 'MALHAREKETIDURUMU'            texts = 'MHD'                  textl = 'Mal Hareketi Durumu'           emphs = 'C700' shide = 'X' spgrp = 2 isgrp = ' '  ) TO gt_fieldlist.
    APPEND VALUE #( fname = 'BWART'     techl = 'HAREKETTURU'                  texts = 'Har.Türü'             textl = 'Hareket Türü'                  emphs = 'C700' shide = 'X' spgrp = 2 isgrp = '20' ) TO gt_fieldlist.
    APPEND VALUE #( fname = 'MBLNR'     techl = 'MALZEMEBELGESI'               texts = 'Malz.Belgesi'         textl = 'Malzeme Belgesi'               emphs = 'C700' shide = 'X' spgrp = 2 isgrp = ' '  ) TO gt_fieldlist.
    APPEND VALUE #( fname = 'BLDAT'     techl = 'MALCIKISTARIHI'               texts = 'M.Ç.Tarihi'           textl = 'Mal Çıkış Tarihi'              emphs = 'C700' shide = 'X' spgrp = 2 isgrp = ' '  ) TO gt_fieldlist.
    APPEND VALUE #( fname = 'FKBEL'     techl = 'FATURABELGESI'                texts = 'Fat.Blg.'             textl = 'Fatura Belgesi'                emphs = 'C300' shide = ' ' spgrp = 3 isgrp = ' '  ) TO gt_fieldlist.
    APPEND VALUE #( fname = 'FKPOS'     techl = 'FATURAKALEMI'                 texts = 'Fat.Klm.'             textl = 'Fatura Kalemi'                 emphs = 'C300' shide = 'X' spgrp = 3 isgrp = ' '  ) TO gt_fieldlist.
    APPEND VALUE #( fname = 'PRSDT'     techl = 'FIYATLANDIRMATARIHI'          texts = 'Fiyatlandırma Tar.'   textl = 'Fiyatlandırma Tarihi'          emphs = 'C300' shide = 'X' spgrp = 3 isgrp = ' '  ) TO gt_fieldlist.
    APPEND VALUE #( fname = 'FKDAT'     techl = 'FATURATARIHI'                 texts = 'Fatura Tar.'          textl = 'Fatura Tarihi'                 emphs = 'C300' shide = ' ' spgrp = 3 isgrp = '21' ) TO gt_fieldlist.
    APPEND VALUE #( fname = 'FKPER'     techl = 'FATURADONEMI'                 texts = 'Fat.Dnm.'             textl = 'Fatura Dönemi'                 emphs = 'C300' shide = 'X' spgrp = 3 isgrp = '22' ) TO gt_fieldlist.
    APPEND VALUE #( fname = 'FKWEK'     techl = 'FATURAHAFTASI'                texts = 'Fat.Hft.'             textl = 'Fatura Haftası'                emphs = 'C500' shide = 'X' spgrp = 3 isgrp = '23' ) TO gt_fieldlist.
    APPEND VALUE #( fname = 'FSTAT'     techl = 'FATURADURUMU'                 texts = 'FD'                   textl = 'Fatura Durumu'                 emphs = 'C300' shide = 'X' spgrp = 3 isgrp = ' '  ) TO gt_fieldlist.
    APPEND VALUE #( fname = 'BELNR'     techl = 'MUHASEBEBELGESI'              texts = 'Muh.Belgesi'          textl = 'Muhasebe Belgesi'              emphs = 'C300' shide = 'X' spgrp = 3 isgrp = ' '  ) TO gt_fieldlist.
    APPEND VALUE #( fname = 'AUGBL'     techl = 'DENKLESTIRMEBELGESI'          texts = 'Denkleştirme'         textl = 'Denkleştirme Belgesi'          emphs = 'C300' shide = 'X' spgrp = 3 isgrp = ' '  ) TO gt_fieldlist.
    APPEND VALUE #( fname = 'AUGDT'     techl = 'DENKLESTIRMETARIHI'           texts = 'Dnkl. Tarihi'         textl = 'Denkleştirme Tarihi'           emphs = 'C300' shide = 'X' spgrp = 3 isgrp = ' '  ) TO gt_fieldlist.
    APPEND VALUE #( fname = 'GJAHR'     techl = 'FATURAYILI'                   texts = 'Fatura Yılı'          textl = 'Fatura Yılı'                   emphs = 'C300' shide = 'X' spgrp = 3 isgrp = '24' ) TO gt_fieldlist.
    APPEND VALUE #( fname = 'GMONT'     techl = 'FATURAAYI'                    texts = 'Fatura Ayı'           textl = 'Fatura Ayı'                    emphs = 'C300' shide = 'X' spgrp = 3 isgrp = '25' ) TO gt_fieldlist.
    APPEND VALUE #( fname = 'GQUAR'     techl = 'FATURACEYREKDONEMI'           texts = 'Fatura Çeyrek Dn.'    textl = 'Fatura Çeyrek Dn.'             emphs = 'C300' shide = 'X' spgrp = 3 isgrp = '26' ) TO gt_fieldlist.
    APPEND VALUE #( fname = 'GHALF'     techl = 'FATURAYARIDONEMI'             texts = 'Fatura Yarı Dn.'      textl = 'Fatura Yarı Dn.'               emphs = 'C300' shide = 'X' spgrp = 3 isgrp = '27' ) TO gt_fieldlist.
    APPEND VALUE #( fname = 'HKONT'     techl = 'KEBIRHESABI'                  texts = 'Kebir Hesabı'         textl = 'Kebir Hesabı'                  emphs = 'C300' shide = 'X' spgrp = 3 isgrp = '28' ) TO gt_fieldlist.
    APPEND VALUE #( fname = 'PRCTR'     techl = 'KARMERKEZI'                   texts = 'Kar Merkezi'          textl = 'Kar Merkezi'                   emphs = 'C300' shide = 'X' spgrp = 3 isgrp = '29' ) TO gt_fieldlist.
  ENDIF.
  APPEND VALUE #( fname = 'ZTERM'     techl = 'ODEMEKOSULU'                  texts = 'Ödeme Koş.'           textl = 'Ödeme Koşulu'                  emphs = 'C100' shide = ' ' spgrp = 1 isgrp = '30' grpx1 = 'ZTERM_X' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'ZTERM_X'   techl = 'ODEMEKOSULUTANIMI'            texts = 'Ödeme Koşulu Tnm.'    textl = 'Ödeme Koşulu Tanımı'           emphs = 'C100' shide = 'X' spgrp = 1 isgrp = ' '  grpx1 = ' '       ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'VKAUS'     techl = 'KULLANIMSURESI'               texts = 'Kullanım Süresi'      textl = 'Kullanım Süresi'               emphs = 'C400' shide = 'X' spgrp = 1 isgrp = '31' grpx1 = 'VKAUS_X' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'VKAUS_X'   techl = 'KULLANIMSURESITANIMI'         texts = 'Klnm.Sür.Tnm.'        textl = 'Kullanım Süresi Tanımı'        emphs = 'C400' shide = 'X' spgrp = 1 isgrp = ' '  grpx1 = ' '       ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'KDGRP'     techl = 'MUSTERIGRUBU'                 texts = 'Müş.Grb.'             textl = 'Müşteri Grubu'                 emphs = 'C200' shide = 'X' spgrp = 5 isgrp = '32' grpx1 = 'KONDA_X' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'KDGRP_X'   techl = 'MUSTERIGRUBUADI'              texts = 'Müş.Grb.Tnm.'         textl = 'Müşteri Grubu Adı'             emphs = 'C200' shide = 'X' spgrp = 5 isgrp = ' '  grpx1 = ' '       ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'KUNNR'     techl = 'SIPARISVEREN'                 texts = 'Satış Yapılan'        textl = 'Sipariş Veren'                 emphs = 'C200' shide = ' ' spgrp = 5 isgrp = '33' grpx1 = 'KUNNR_X' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'KUNNR_X'   techl = 'SIPARISVERENADI'              texts = 'Satış Yapılan Adı'    textl = 'Sipariş Veren Adı'             emphs = 'C200' shide = 'X' spgrp = 5 isgrp = ' '  grpx1 = ' '       ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'KUNRE'     techl = 'FATURAALICISI'                texts = 'Fatura Alıcısı'       textl = 'Fatura Alıcısı'                emphs = 'C200' shide = 'X' spgrp = 5 isgrp = '34' grpx1 = 'KUNRE_X' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'KUNRE_X'   techl = 'FATURAALICISIADI'             texts = 'Fatura Alıcısı Adı'   textl = 'Fatura Alıcısı Adı'            emphs = 'C200' shide = 'X' spgrp = 5 isgrp = ' '  grpx1 = ' '       ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'KUNRG'     techl = 'ODEMEYAPAN'                   texts = 'Ödeme Yapan'          textl = 'Ödeme Yapan'                   emphs = 'C200' shide = 'X' spgrp = 5 isgrp = '35' grpx1 = 'KUNRG_X' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'KUNRG_X'   techl = 'ODEMEYAPANADI'                texts = 'Ödeme Yapan Adı'      textl = 'Ödeme Yapan Adı'               emphs = 'C200' shide = 'X' spgrp = 5 isgrp = ' '  grpx1 = ' '       ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'KUNWE'     techl = 'TESLIMALAN'                   texts = 'Teslim Alan'          textl = 'Teslim Alan'                   emphs = 'C200' shide = 'X' spgrp = 5 isgrp = '36' grpx1 = 'KUNWE_X' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'KUNWE_X'   techl = 'TESLIMALANADI'                texts = 'Teslim Alan Adı'      textl = 'Teslim Alan Adı'               emphs = 'C200' shide = 'X' spgrp = 5 isgrp = ' '  grpx1 = ' '       ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'PARVW'     techl = 'MUHATAPROL'                   texts = 'Muhatap Rol'          textl = 'Muhatap Rol'                   emphs = 'C200' shide = 'X' spgrp = 5 isgrp = '37' grpx1 = 'PARVW_X' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'PARVW_X'   techl = 'MUHATAPROLADI'                texts = 'Muhatap Rol Adı'      textl = 'Muhatap Rol Adı'               emphs = 'C200' shide = 'X' spgrp = 5 isgrp = ' '  grpx1 = ' '       ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'PARTN'     techl = 'ROLMUHATABI'                  texts = 'Rol Muhatabı'         textl = 'Rol Muhatabı'                  emphs = 'C200' shide = 'X' spgrp = 5 isgrp = '38' grpx1 = 'PARTN_X' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'PARTN_X'   techl = 'ROLMUHATABIADI'               texts = 'Rol Muhatabı Adı'     textl = 'Rol Muhatabı Adı'              emphs = 'C200' shide = 'X' spgrp = 5 isgrp = ' '  grpx1 = ' '       ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'KTOKD'     techl = 'MUSTERIHESAPGRUBU'            texts = 'Hsp.Grb.'             textl = 'Müşteri Hesap Grubu'           emphs = 'C200' shide = 'X' spgrp = 5 isgrp = '39' grpx1 = 'KTOKD_X' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'KTOKD_X'   techl = 'MUSTERIHESAPGRUBUADI'         texts = 'Hsp.Grb.Tnm.'         textl = 'Müşteri Hesap Grubu Adı'       emphs = 'C200' shide = 'X' spgrp = 5 isgrp = ' '  grpx1 = ' '       ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'KTGRD'     techl = 'MUSTERIHESAPTAYINGRUBU'       texts = 'Hsp.Tayin.Grb.'       textl = 'Müşteri Hesap Tayin Grb'       emphs = 'C200' shide = 'X' spgrp = 5 isgrp = '40' grpx1 = 'KTGRD_X' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'KTGRD_X'   techl = 'MUSTERIHESAPTAYINGRUBUADI'    texts = 'Hsp.Tayin.Grb.Tnm.'   textl = 'Müşteri Hesap Tayin Grb. Adı'  emphs = 'C200' shide = 'X' spgrp = 5 isgrp = ' '  grpx1 = ' '       ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'KONDA'     techl = 'MUSTERIFIYATGRUBU'            texts = 'Fyt.Grb.'             textl = 'Müşteri Fiyat Grubu'           emphs = 'C200' shide = 'X' spgrp = 5 isgrp = '41' grpx1 = 'KONDA_X' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'KONDA_X'   techl = 'MUSTERIFIYATGRUBUADI'         texts = 'Fyt.Grb.Tnm.'         textl = 'Müşteri Fiyat Grubu Tanımı'    emphs = 'C200' shide = 'X' spgrp = 5 isgrp = ' '  grpx1 = ' '       ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'BPVIP'     techl = 'VIPMUSTERI'                   texts = 'VIP'                  textl = 'VIP Müşteri'                   emphs = 'C200' shide = 'X' spgrp = 5 isgrp = ' '  grpx1 = ' '       ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'BPUNW'     techl = 'ISTENMEYENMUSTERI'            texts = 'İstenmeyen'           textl = 'İstenmeyen Müşteri'            emphs = 'C200' shide = 'X' spgrp = 5 isgrp = ' '  grpx1 = ' '       ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'BPBLK'     techl = 'BLOKEMUSTERI'                 texts = 'Bloke'                textl = 'Bloke Müşteri'                 emphs = 'C200' shide = 'X' spgrp = 5 isgrp = ' '  grpx1 = ' '       ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'MATNR'     techl = 'MALZEME'                      texts = 'Malzeme'              textl = 'Malzeme'                       emphs = 'C200' shide = ' ' spgrp = 4 isgrp = '42' grpx1 = 'MAKTX'   ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'MAKTX'     techl = 'MALZEMEADI'                   texts = 'Malzeme Adı'          textl = 'Malzeme Adı'                   emphs = 'C200' shide = 'X' spgrp = 4 isgrp = ' '  grpx1 = ' '       ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'BWTAR'     techl = 'DEGERLEMETURU'                texts = 'Değer.Türü'           textl = 'Değerleme Türü'                emphs = 'C200' shide = 'X' spgrp = 4 isgrp = '43' grpx1 = ' '       ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'CHARG'     techl = 'PARTINO'                      texts = 'Parti'                textl = 'Parti No'                      emphs = 'C200' shide = 'X' spgrp = 4 isgrp = '44' grpx1 = ' '       ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'MATKL'     techl = 'MALGRUBU'                     texts = 'MalGrubu'             textl = 'Mal Grubu'                     emphs = 'C200' shide = 'X' spgrp = 4 isgrp = '45' grpx1 = 'WGBEZ'   ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'WGBEZ'     techl = 'MALGRUBUADI'                  texts = 'MalGrubuAd'           textl = 'Mal Grubu Tanımı'              emphs = 'C200' shide = 'X' spgrp = 4 isgrp = ' '  grpx1 = ' '       ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'MTART'     techl = 'MALZEMETURU'                  texts = 'Malz.Türü'            textl = 'Malzeme Türü'                  emphs = 'C200' shide = 'X' spgrp = 4 isgrp = '46' grpx1 = 'MTBEZ'   ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'MTBEZ'     techl = 'MALZEMETURUADI'               texts = 'Malz.TürüAd'          textl = 'Malzeme Türü Tanımı'           emphs = 'C200' shide = 'X' spgrp = 4 isgrp = ' '  grpx1 = ' '       ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'KTGRM'     techl = 'MALZEMEHESAPTAYINGRUBU'       texts = 'Malz.HTG'             textl = 'Malz. Hesap Tayin Grubu'       emphs = 'C200' shide = 'X' spgrp = 4 isgrp = '47' grpx1 = 'KTGRM_X' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'KTGRM_X'   techl = 'MALZEMEHESAPTAYINGRUBUADI'    texts = 'Malz.HTG Adı'         textl = 'Malz. Hesap Tayin Grubu Adı'   emphs = 'C200' shide = 'X' spgrp = 4 isgrp = ' '  grpx1 = ' '       ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'MVGR1'     techl = 'MALZEMEGRUBU1'                texts = 'Mlz.Grb.1'            textl = 'Malzeme Grubu 1'               emphs = 'C200' shide = 'X' spgrp = 4 isgrp = '48' grpx1 = 'MVGR1_X' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'MVGR1_X'   techl = 'MALZEMEGRUBU1ADI'             texts = 'Mlz.Grb.1.Ad'         textl = 'Malzeme Grubu 1 Adı'           emphs = 'C200' shide = 'X' spgrp = 4 isgrp = ' '  grpx1 = ' '       ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'MVGR2'     techl = 'MALZEMEGRUBU2'                texts = 'Mlz.Grb.2'            textl = 'Malzeme Grubu 2'               emphs = 'C200' shide = 'X' spgrp = 4 isgrp = '49' grpx1 = 'MVGR2_X' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'MVGR2_X'   techl = 'MALZEMEGRUBU2ADI'             texts = 'Mlz.Grb.2.Ad'         textl = 'Malzeme Grubu 2 Adı'           emphs = 'C200' shide = 'X' spgrp = 4 isgrp = ' '  grpx1 = ' '       ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'MVGR3'     techl = 'MALZEMEGRUBU3'                texts = 'Mlz.Grb.3'            textl = 'Malzeme Grubu 3'               emphs = 'C200' shide = 'X' spgrp = 4 isgrp = '50' grpx1 = 'MVGR3_X' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'MVGR3_X'   techl = 'MALZEMEGRUBU3ADI'             texts = 'Mlz.Grb.3.Ad'         textl = 'Malzeme Grubu 3 Adı'           emphs = 'C200' shide = 'X' spgrp = 4 isgrp = ' '  grpx1 = ' '       ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'MVGR4'     techl = 'MALZEMEGRUBU4'                texts = 'Mlz.Grb.4'            textl = 'Malzeme Grubu 4'               emphs = 'C200' shide = 'X' spgrp = 4 isgrp = '51' grpx1 = 'MVGR4_X' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'MVGR4_X'   techl = 'MALZEMEGRUBU4ADI'             texts = 'Mlz.Grb.4.Ad'         textl = 'Malzeme Grubu 4 Adı'           emphs = 'C200' shide = 'X' spgrp = 4 isgrp = ' '  grpx1 = ' '       ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'MVGR5'     techl = 'MALZEMEGRUBU5'                texts = 'Mlz.Grb.5'            textl = 'Malzeme Grubu 5'               emphs = 'C200' shide = 'X' spgrp = 4 isgrp = '52' grpx1 = 'MVGR5_X' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'MVGR5_X'   techl = 'MALZEMEGRUBU5ADI'             texts = 'Mlz.Grb.5.Ad'         textl = 'Malzeme Grubu 5 Adı'           emphs = 'C200' shide = 'X' spgrp = 4 isgrp = ' '  grpx1 = ' '       ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'VSTEL'     techl = 'SEVKIYATNOKTASI'              texts = 'Sevk.Nk.'             textl = 'Sevkiyat Noktası'              emphs = 'C200' shide = 'X' spgrp = 2 isgrp = '53' grpx1 = 'VSTEL_X' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'VSTEL_X'   techl = 'SEVKIYATNOKTASIADI'           texts = 'Sevk.Nk.Ad'           textl = 'Sevkiyat Noktası Adı'          emphs = 'C200' shide = 'X' spgrp = 2 isgrp = ' '  grpx1 = ' '       ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'WERKS'     techl = 'URETIMYERI'                   texts = 'Üret.Yeri'            textl = 'Üretim Yeri'                   emphs = 'C200' shide = 'X' spgrp = 2 isgrp = '54' grpx1 = 'WERKS_X' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'WERKS_X'   techl = 'URETIMYERIADI'                texts = 'Üret.Yeri.Ad'         textl = 'Üretim Yeri Adı'               emphs = 'C200' shide = 'X' spgrp = 2 isgrp = ' '  grpx1 = ' '       ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'LGORT'     techl = 'DEPOYERI'                     texts = 'Depo'                 textl = 'Depo Yeri'                     emphs = 'C200' shide = 'X' spgrp = 2 isgrp = '55' grpx1 = 'LGORT_X' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'LGORT_X'   techl = 'DEPOYERIADI'                  texts = 'Depo.Ad'              textl = 'Depo Yeri Adı'                 emphs = 'C200' shide = 'X' spgrp = 2 isgrp = ' '  grpx1 = ' '       ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'INCO1'     techl = 'INCOTERMS'                    texts = 'Incoterms'            textl = 'Incoterms'                     emphs = 'C200' shide = 'X' spgrp = 1 isgrp = '56' grpx1 = ' '       ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'INCO2'     techl = 'INCOTERMSYER'                 texts = 'Incoterms Yer'        textl = 'Incoterms Yer'                 emphs = 'C200' shide = 'X' spgrp = 1 isgrp = ' '  grpx1 = ' '       ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'WE_CITY'   techl = 'TESLIMALANILCE'               texts = 'MT İlçe'              textl = 'Teslim Alan İlçe'              emphs = 'C200' shide = 'X' spgrp = 2 isgrp = ' '  grpx1 = ' '       ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'WE_PSTC'   techl = 'TESLIMALANPOSTAKODU'          texts = 'MT PostaKod'          textl = 'Teslim Alan Posta Kodu'        emphs = 'C200' shide = 'X' spgrp = 2 isgrp = ' '  grpx1 = ' '       ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'WE_REGI'   techl = 'TESLIMALANILKODU'             texts = 'MT İl Kodu'           textl = 'Teslim Alan İli'               emphs = 'C200' shide = 'X' spgrp = 2 isgrp = '57' grpx1 = 'WE_REGN' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'WE_REGN'   techl = 'TESLIMALANILADI'              texts = 'MT İl'                textl = 'Teslim Alan İl Adı'            emphs = 'C200' shide = 'X' spgrp = 2 isgrp = ' '  grpx1 = ' '       ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'WE_CNTY'   techl = 'TESLIMALANULKESI'             texts = 'MT Ülke'              textl = 'Teslim Alan Ülkesi'            emphs = 'C200' shide = 'X' spgrp = 2 isgrp = '58' grpx1 = ' '       ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'WE_ADRS'   techl = 'TESLIMALANADRES'              texts = 'MT Adres'             textl = 'Teslim Alan Adres'             emphs = 'C200' shide = 'X' spgrp = 2 isgrp = ' '  grpx1 = ' '       ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'TM_QUAN'   techl = 'TERMINMIKTARI'                texts = 'Termin Mik.'          textl = 'Termin Miktarı'                emphs = 'C700' shide = ' ' spgrp = 6 cumty = 'T' slynr = '01' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'LF_QUAN'   techl = 'TESLIMMIKTARI'                texts = 'Teslim Mik.'          textl = 'Teslim Miktarı'                emphs = 'C700' shide = 'X' spgrp = 6 cumty = 'T' slynr = '02' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'LF_BQUA'   techl = 'TESLIMEDILMEMISMIKTAR'        texts = 'Teslim Bak.'          textl = 'Teslim Edilmemiş Miktar'       emphs = 'C700' shide = ' ' spgrp = 6 cumty = 'T' slynr = '03' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'WA_QUAN'   techl = 'MALCIKISMIKTARI'              texts = 'Çıkış Mik.'           textl = 'Mal Çıkış Miktarı'             emphs = 'C700' shide = 'X' spgrp = 6 cumty = 'T' slynr = '04' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'WA_BQUA'   techl = 'MALCIKISIEKSIKMIKTAR'         texts = 'Mik.EksikÇık.'        textl = 'Mal Çıkışı Eksik Miktar'       emphs = 'C700' shide = 'X' spgrp = 6 cumty = 'T' slynr = '05' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'FK_QUAN'   techl = 'FATURALANANMIKTAR'            texts = 'Fatura Mik.'          textl = 'Faturalanan Miktar'            emphs = 'C700' shide = ' ' spgrp = 6 cumty = 'T' slynr = '06' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'FK_BQUA'   techl = 'FATURALANMAMISMIKTAR'         texts = 'Fatura Bak.'          textl = 'Faturalanmamış Miktar'         emphs = 'C700' shide = 'X' spgrp = 6 cumty = 'T' slynr = '07' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'FK_WQUA'   techl = 'FATURALAMABEKLEYENMIKTAR'     texts = 'Faturalama Bek.Mik.'  textl = 'Faturalama Bekleyen Miktar'    emphs = 'C700' shide = 'X' spgrp = 6 cumty = 'T' slynr = '08' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'VRKME'     techl = 'RAPOROLCUBIRIMI'              texts = 'ÖB'                   textl = 'Ölçü Birimi'                   emphs = 'C700' shide = ' ' spgrp = 1 isgrp = '59' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'CVRKM'     techl = 'SIPARISOLCUBIRIMI'            texts = 'Sipariş ÖB'           textl = 'Sipariş Ölçü Birimi'           emphs = 'C700' shide = 'X' spgrp = 1 isgrp = '60' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'NT_PRIC'   techl = 'SATISFIYATI'                  texts = 'Satış Fiyatı'         textl = 'Satış Fiyatı'                  emphs = 'C100' shide = ' ' spgrp = 7 cumty = 'W' slynr = '09' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'NT_TXPR'   techl = 'VERGIDAHILSATISFIYATI'        texts = 'Vrg.Dhl.Sat.Fyt.'     textl = 'Vergi Dahil Satış Fiyatı'      emphs = 'C100' shide = 'X' spgrp = 7 cumty = 'W' slynr = '10' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'TX_AMNT'   techl = 'VERGITUTARI'                  texts = 'Vergi Tut.'           textl = 'Vergi Tutarı'                  emphs = 'C400' shide = 'X' spgrp = 8 cumty = 'T' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'TM_AMNT'   techl = 'TERMINTUTARI'                 texts = 'Termin Tutarı'        textl = 'Termin Tutarı'                 emphs = 'C300' shide = ' ' spgrp = 8 cumty = 'T' slynr = '11' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'LF_AMNT'   techl = 'TESLIMEDILENTUTAR'            texts = 'Teslim Tutarı'        textl = 'Teslim Edilen Tutar'           emphs = 'C300' shide = 'X' spgrp = 8 cumty = 'T' slynr = '12' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'LF_BAMN'   techl = 'TESLIMEDILMEMISTUTAR'         texts = 'Teslim Bak. Tut.'     textl = 'Teslim Bakiye Tutarı'          emphs = 'C300' shide = 'X' spgrp = 8 cumty = 'T' slynr = '13' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'FK_WAMN'   techl = 'FATURALAMABEKLEYENTUTAR'      texts = 'Faturalama Bek.Tut.'  textl = 'Faturalama Bekleyen Tutar'     emphs = 'C300' shide = 'X' spgrp = 8 cumty = 'T' slynr = '14' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'FK_BAMN'   techl = 'FATURALANMAMISTUTAR'          texts = 'Fatura Bak. Tut.'     textl = 'Faturalanmamış Tutar'          emphs = 'C300' shide = 'X' spgrp = 8 cumty = 'T' slynr = '15' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'FK_AMNT'   techl = 'FATURALANANTUTAR'             texts = 'Fatura Tutarı'        textl = 'Faturalanan Tutar'             emphs = 'C300' shide = ' ' spgrp = 8 cumty = 'T' slynr = '16' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'FK_TOTL'   techl = 'VERGIDAHILFATURALANANTUTAR'   texts = 'Vrg.Dhl.Fat.Tut.'     textl = 'Vrg. Dhl. Faturalanan Tutar'   emphs = 'C300' shide = 'X' spgrp = 8 cumty = 'T' slynr = '17' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'AG_AMNT'   techl = 'ESLENMISTUTAR'                texts = 'Eşlenmiş Tutar'       textl = 'Eşlenmiş Tutar'                emphs = 'C300' shide = 'X' spgrp = 8 cumty = 'T' slynr = '18' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'AG_BAMN'   techl = 'ESLENMEMISTUTAR'              texts = 'Eşlenmemiş Tutar'     textl = 'Eşlenmemiş Tutar'              emphs = 'C300' shide = 'X' spgrp = 8 cumty = 'T' slynr = '19' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'WAERK'     techl = 'RAPORPARABIRIMI'              texts = 'PB'                   textl = 'Para Birimi'                   emphs = 'C300' shide = ' ' spgrp = 1 isgrp = '61' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'CWAER'     techl = 'SIPARISPARABIRIMI'            texts = 'Sipariş PB'           textl = 'Sipariş Para Birimi'           emphs = 'C300' shide = 'X' spgrp = 1 isgrp = '62' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'NT_PRIC_2' techl = 'SATISFIYATI'                  texts = 'Satış Fiyatı'         textl = 'Satış Fiyatı'                  emphs = 'C100' shide = 'X' spgrp = 7 cumty = 'W'  ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'NT_TXPR_2' techl = 'VERGIDAHILSATISFIYATI'        texts = 'Vrg.Dhl.Sat.Fyt.'     textl = 'Vergi Dahil Satış Fiyatı'      emphs = 'C100' shide = 'X' spgrp = 7 cumty = 'W'  ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'FK_AMNT_2' techl = 'FATURALANANTUTAR'             texts = 'Fatura Tutarı'        textl = 'Faturalanan Tutar'             emphs = 'C300' shide = 'X' spgrp = 8 cumty = 'T'  ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'FK_TOTL_2' techl = 'VERGIDAHILFATURALANANTUTAR'   texts = 'Vrg.Dhl.Fat.Tut.'     textl = 'Vrg. Dhl. Faturalanan Tutar'   emphs = 'C300' shide = 'X' spgrp = 8 cumty = 'T'  ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'WAERK_2'   techl = 'RAPORPARABIRIMI'              texts = 'PB (2)'               textl = 'Para Birimi (2)'               emphs = 'C300' shide = 'X' spgrp = 1 ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'EC_AMNT'   techl = 'KURFARKI'                     texts = 'Kur Farkı'            textl = 'Kur Farkı'                     emphs = 'C400' shide = 'X' spgrp = 8 cumty = 'T' slynr = '20' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'EC_TAMN'   techl = 'VERGIDAHILKURFARKI'           texts = 'Vrg.Dhl.Kur Farkı'    textl = 'Vrg. Dhl. Kur Farkı'           emphs = 'C400' shide = 'X' spgrp = 8 cumty = 'T' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'VP_QUAN'   techl = 'SIPARISKALEMIMIKTARI'         texts = 'Sip.Klm.Mik.'         textl = 'Sipariş Kalem Miktarı'         emphs = 'C700' shide = 'X' spgrp = 6 cumty = ' ' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'ZTAGE'     techl = 'VADEGUNSAYISI'                texts = 'Vade Gün'             textl = 'Vade Gün Sayısı'               emphs = 'C100' shide = 'X' spgrp = 1 cumty = 'A' slynr = '21' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'GBSTA'     techl = 'DURUMU'                       texts = 'Sipariş Drm.'         textl = 'Sipariş Durumu'                emphs = 'C500' shide = 'X' spgrp = 1 isgrp = '63' grpx1 = 'GBSTA_X' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'GBSTA_D'   techl = 'DURUMTANIMI'                  texts = 'Sipariş Drm. Tnm.'    textl = 'Sipariş Durumu Tanımı'         emphs = 'C500' shide = 'X' spgrp = 1 isgrp = ' ' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'AUGRU'     techl = 'SIPARISNEDENI'                texts = 'Sipariş Nd.'          textl = 'Sipariş Nedeni'                emphs = 'C700' shide = 'X' spgrp = 1 isgrp = '64' cumty = ' ' grpx1 = 'AUGRU_X' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'AUGRU_X'   techl = 'SIPARISNEDENITANIMI'          texts = 'Sipariş Nedeni Tnm.'  textl = 'Sipariş Nedeni Tanımı'         emphs = 'C700' shide = 'X' spgrp = 1 isgrp = ' '  cumty = ' ' grpx1 = ' '  ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'ABGRU'     techl = 'RETNEDENI'                    texts = 'Ret Nd.'              textl = 'Ret Nedeni'                    emphs = 'C700' shide = 'X' spgrp = 1 isgrp = '65' cumty = ' ' grpx1 = 'ABGRU_X' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'ABGRU_X'   techl = 'RETNEDENITANIMI'              texts = 'Ret Nedeni Tnm.'      textl = 'Ret Nedeni Tanımı'             emphs = 'C700' shide = 'X' spgrp = 1 isgrp = ' '  cumty = ' ' grpx1 = ' '  ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'COUNT'     techl = 'KAYITSAYISI'                  texts = '#'                    textl = 'Kayıt Sayısı'                  emphs = 'C700' shide = 'X' spgrp = 1 isgrp = ' '  cumty = 'T' slynr = '22' ) TO gt_fieldlist.

ENDFORM.




FORM fill_parameters_en.

  CLEAR gt_fieldlist[].

  APPEND VALUE #( fname = 'HIERA'     techl = 'HIERARCHY'                      texts = 'Hierarchy'            textl = 'Hierarchy'                     emphs = 'C700' shide = 'X' spgrp = 1 isgrp = ' ' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'BUKRS'     techl = 'COMPANY'                        texts = 'Company'              textl = 'Company'                       emphs = 'C500' shide = 'X' spgrp = 5 isgrp = '01' grpx1 = 'BUKRS_X' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'BUKRS_X'   techl = 'COMPANYNAME'                    texts = 'Company Name'         textl = 'Company Name'                  emphs = 'C500' shide = 'X' spgrp = 5 isgrp = ' ' grpx1 = ' ' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'SDORG'     techl = 'SALESAREA'                      texts = 'Sales Area'           textl = 'Sales Area'        emphs = 'C500' spgrp = 5 isgrp = '02' grpx1 = 'VKORG_X' grpx2 = 'VTWEG_X' grpx3 = 'SPART_X' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'VKORG'     techl = 'SALESORGANIZATION'              texts = 'Sales Org.'           textl = 'Sales Organization'            emphs = 'C200' shide = 'X' spgrp = 5 isgrp = '03' grpx1 = 'VKORG_X' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'VKORG_X'   techl = 'SALESORGANIZATIONNAME'          texts = 'Sales Org. Name'      textl = 'Sales Organization Name'       emphs = 'C200' shide = 'X' spgrp = 5 isgrp = ' '  grpx1 = ' '       ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'VTWEG'     techl = 'DISTRIBUTIONCHANNEL'            texts = 'Dist. Ch.'            textl = 'Distribution Channel'          emphs = 'C200' shide = 'X' spgrp = 5 isgrp = '04' grpx1 = 'VTWEG_X' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'VTWEG_X'   techl = 'DISTRIBUTIONCHANNELNAME'        texts = 'Dist. Ch. Name'       textl = 'Distribution Channel Name'     emphs = 'C200' shide = 'X' spgrp = 5 isgrp = ' '  grpx1 = ' '       ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'SPART'     techl = 'DIVISION'                       texts = 'Div.'                 textl = 'Division'                      emphs = 'C200' shide = 'X' spgrp = 5 isgrp = '05' grpx1 = 'SPART_X' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'SPART_X'   techl = 'DIVISIONNAME'                   texts = 'Div. Name'            textl = 'Division Name'                 emphs = 'C200' shide = 'X' spgrp = 5 isgrp = ' '  grpx1 = ' '       ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'VKBUR'     techl = 'SALESOFFICE'                    texts = 'Sales Office'         textl = 'Sales Office'                  emphs = 'C200' shide = 'X' spgrp = 5 isgrp = '06' grpx1 = 'VKBUR_X' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'VKBUR_X'   techl = 'SALESOFFICENAME'                texts = 'Sales Office Nm.'     textl = 'Sales Office Name'             emphs = 'C200' shide = 'X' spgrp = 5 isgrp = ' '  grpx1 = ' '       ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'VKGRP'     techl = 'SALESGROUP'                     texts = 'Sales Group'          textl = 'Sales Group'                   emphs = 'C200' shide = 'X' spgrp = 5 isgrp = '07' grpx1 = 'VKGRP_X' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'VKGRP_X'   techl = 'SALESGROUPNAME'                 texts = 'Sales Group Nm.'      textl = 'Sales Group Name'              emphs = 'C200' shide = 'X' spgrp = 5 isgrp = ' '  grpx1 = ' '       ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'BZIRK'     techl = 'SALESDISTRICT'                  texts = 'Sales Dist.'          textl = 'Sales District'                emphs = 'C200' shide = 'X' spgrp = 5 isgrp = '08' grpx1 = 'BZIRK_X' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'BZIRK_X'   techl = 'SALESDISTRICTNAME'              texts = 'Sales Dist.Name'      textl = 'Sales District Name'           emphs = 'C200' shide = 'X' spgrp = 5 isgrp = ' '  grpx1 = ' '       ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'AUART'     techl = 'ORDERTYPE'                      texts = 'Order Type'           textl = 'Order Type'                    emphs = 'C500' shide = ' ' spgrp = 1 isgrp = '09' grpx1 = 'AUART_X' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'AUART_X'   techl = 'ORDERTYPEDESCRIPTION'           texts = 'Order Type Desc.'     textl = 'Order Type Description'        emphs = 'C500' shide = 'X' spgrp = 1 isgrp = ' '  grpx1 = ' '       ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'TTYPE'     techl = 'TERMINTYPE'                     texts = 'Termin'               textl = 'Termin Type'                   emphs = 'C500' shide = ' ' spgrp = 1 isgrp = '10' grpx1 = ' ' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'TSTAT'     techl = 'TERMINSTATUS'                   texts = 'Termin Status'        textl = 'Termin Status'                 emphs = 'C500' shide = ' ' spgrp = 1 isgrp = '11' grpx1 = ' ' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'VBELK'     techl = 'ORDERNOITEM'                    texts = 'Order No/Item'        textl = 'Order No/Item'                 emphs = 'C500' shide = 'X' spgrp = 1 isgrp = '12' grpx1 = 'VBELN' grpx2 = 'POSNR' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'VBELN'     techl = 'ORDERNO'                        texts = 'Order No'             textl = 'Order No'                      emphs = 'C500' shide = ' ' spgrp = 1 isgrp = ' '  grpx1 = ' ' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'POSNR'     techl = 'ORDERITEM'                      texts = 'Order Item'           textl = 'Order Item'                    emphs = 'C500' shide = ' ' spgrp = 1 isgrp = ' '  grpx1 = ' ' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'AUDAT'     techl = 'ORDERDATE'                      texts = 'Order Date'           textl = 'Order Date'                    emphs = 'C500' shide = ' ' spgrp = 1 isgrp = '13' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'VKPER'     techl = 'ORDERPERIOD'                    texts = 'Order Period'         textl = 'Order Period'                  emphs = 'C500' shide = 'X' spgrp = 1 isgrp = '14' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'VKWEK'     techl = 'ORDERWEEKNUMBER'                texts = 'Order WeekNo'         textl = 'Order Week Number'             emphs = 'C500' shide = 'X' spgrp = 1 isgrp = '15' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'ERDAT'     techl = 'ORDERCREATIONDATE'              texts = 'Or. Creation Dt.'     textl = 'Order Creation Date'           emphs = 'C500' shide = 'X' spgrp = 1 isgrp = '16' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'ERZET'     techl = 'ORDERCREATIONTIME'              texts = 'Or. Creation Tm.'     textl = 'Order Creation Time'           emphs = 'C500' shide = 'X' spgrp = 1 isgrp = ' '  ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'ERNAM'     techl = 'ORDERCREATEDBY'                 texts = 'Order CreatedBy'      textl = 'Order CreatedBy'               emphs = 'C500' shide = 'X' spgrp = 1 isgrp = '17' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'SHKZG'     techl = 'RETURN'                         texts = 'Return'               textl = 'Return'                        emphs = 'C500' shide = 'X' spgrp = 1 isgrp = ' '  ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'POSEX'     techl = 'PREVIOUSITEM'                   texts = 'Previous Item'        textl = 'Previous Item'                 emphs = 'C500' shide = 'X' spgrp = 1 isgrp = ' '  ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'VGBEL'     techl = 'ORDERREFDOCUMENT'               texts = 'Ref.Document'         textl = 'Order Ref. Document'           emphs = 'C500' shide = 'X' spgrp = 1 isgrp = ' '  ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'VGPOS'     techl = 'ORDERREFITEM'                   texts = 'Ref.Item'             textl = 'Order Ref. Item'               emphs = 'C500' shide = 'X' spgrp = 1 isgrp = ' '  ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'VGTYP'     techl = 'ORDERREFTYPE'                   texts = 'Ref.Type'             textl = 'Order Ref. Type'               emphs = 'C500' shide = 'X' spgrp = 1 isgrp = ' '  ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'BSTKD'     techl = 'CUSTOMERREFERENCE'              texts = 'Cus.Ref.'             textl = 'Customer Reference'            emphs = 'C500' shide = 'X' spgrp = 2 isgrp = ' '  ) TO gt_fieldlist.
  IF p_term EQ 'T'.
    APPEND VALUE #( fname = 'LFBEL'     techl = 'DELIVERYDOCUMENT'               texts = 'Dlv.Doc.'             textl = 'Delivery Document'             emphs = 'C700' shide = ' ' spgrp = 2 isgrp = ' '  ) TO gt_fieldlist.
    APPEND VALUE #( fname = 'LFPOS'     techl = 'DELIVERYITEM'                   texts = 'Dlv.Doc.Item.'        textl = 'Delivery Item'                 emphs = 'C700' shide = ' ' spgrp = 2 isgrp = ' '  ) TO gt_fieldlist.
    APPEND VALUE #( fname = 'LFDAT'     techl = 'DELIVERYDATE'                   texts = 'Dlv.Date'             textl = 'Delivery Date'                 emphs = 'C700' shide = ' ' spgrp = 2 isgrp = '18' ) TO gt_fieldlist.
    APPEND VALUE #( fname = 'LFPER'     techl = 'DELIVERYPERIOD'                 texts = 'Dlv.Period.'          textl = 'Delivery Period'               emphs = 'C700' shide = 'X' spgrp = 2 isgrp = '19' ) TO gt_fieldlist.
    APPEND VALUE #( fname = 'WBSTA'     techl = 'GOODSISSUESTATUS'               texts = 'GIS'                  textl = 'Goods Issue Status'            emphs = 'C700' shide = 'X' spgrp = 2 isgrp = ' '  ) TO gt_fieldlist.
    APPEND VALUE #( fname = 'BWART'     techl = 'MOVEMENTTYPE'                   texts = 'Mov.Type'             textl = 'Movement Type'                 emphs = 'C700' shide = 'X' spgrp = 2 isgrp = '20' ) TO gt_fieldlist.
    APPEND VALUE #( fname = 'MBLNR'     techl = 'MATERIALDOCUMENT'               texts = 'Mat.Document'         textl = 'Material Document'             emphs = 'C700' shide = 'X' spgrp = 2 isgrp = ' '  ) TO gt_fieldlist.
    APPEND VALUE #( fname = 'BLDAT'     techl = 'MATERIALISSUEDATE'              texts = 'Mat.IssueDate'        textl = 'Material Issue Date'           emphs = 'C700' shide = 'X' spgrp = 2 isgrp = ' '  ) TO gt_fieldlist.
    APPEND VALUE #( fname = 'FKBEL'     techl = 'BILLINGDOCUMENT'                texts = 'Bil.Doc.'             textl = 'Billing Document'              emphs = 'C300' shide = ' ' spgrp = 3 isgrp = ' '  ) TO gt_fieldlist.
    APPEND VALUE #( fname = 'FKPOS'     techl = 'BILLINGITEM'                    texts = 'Bil.Doc.Item'         textl = 'Billing Item'                  emphs = 'C300' shide = 'X' spgrp = 3 isgrp = ' '  ) TO gt_fieldlist.
    APPEND VALUE #( fname = 'PRSDT'     techl = 'PRICINGDATE'                    texts = 'Pricing Date'         textl = 'Pricing Date'                  emphs = 'C300' shide = 'X' spgrp = 3 isgrp = ' '  ) TO gt_fieldlist.
    APPEND VALUE #( fname = 'FKDAT'     techl = 'BILLINGDATE'                    texts = 'Bil.Date.'            textl = 'Billing Date'                  emphs = 'C300' shide = ' ' spgrp = 3 isgrp = '21' ) TO gt_fieldlist.
    APPEND VALUE #( fname = 'FKPER'     techl = 'BILLINGPERIOD'                  texts = 'Bil.Period'           textl = 'Billing Period'                emphs = 'C300' shide = 'X' spgrp = 3 isgrp = '22' ) TO gt_fieldlist.
    APPEND VALUE #( fname = 'FKWEK'     techl = 'BILLINGWEEKNUMBER'              texts = 'Bil.WeekNo'           textl = 'Billing Week Number'           emphs = 'C300' shide = 'X' spgrp = 3 isgrp = '23' ) TO gt_fieldlist.
    APPEND VALUE #( fname = 'FSTAT'     techl = 'BILLINGSTATUS'                  texts = 'Bil.Status'           textl = 'Billing Status'                emphs = 'C300' shide = 'X' spgrp = 3 isgrp = ' '  ) TO gt_fieldlist.
    APPEND VALUE #( fname = 'BELNR'     techl = 'ACCOUNTINGDOCUMENT'             texts = 'Acc.Document'         textl = 'Accounting Document'           emphs = 'C300' shide = 'X' spgrp = 3 isgrp = ' '  ) TO gt_fieldlist.
    APPEND VALUE #( fname = 'AUGBL'     techl = 'CLEARINGDOCUMENT'               texts = 'Clearing Doc.'        textl = 'Clearing Document'             emphs = 'C300' shide = 'X' spgrp = 3 isgrp = ' '  ) TO gt_fieldlist.
    APPEND VALUE #( fname = 'AUGDT'     techl = 'CLEARINGDATE'                   texts = 'Clr.Doc. Date'        textl = 'Clearing Date'                 emphs = 'C300' shide = 'X' spgrp = 3 isgrp = ' '  ) TO gt_fieldlist.
    APPEND VALUE #( fname = 'GJAHR'     techl = 'BILLINGYEAR'                    texts = 'Bil.Year'             textl = 'Billing Year'                  emphs = 'C300' shide = 'X' spgrp = 3 isgrp = '24' ) TO gt_fieldlist.
    APPEND VALUE #( fname = 'GMONT'     techl = 'BILLINGMONTH'                   texts = 'Bil.Month'            textl = 'Billing Month'                 emphs = 'C300' shide = 'X' spgrp = 3 isgrp = '25' ) TO gt_fieldlist.
    APPEND VALUE #( fname = 'GQUAR'     techl = 'BILLINGQUARTER'                 texts = 'Bil.Quarter'          textl = 'Billing Quarter'               emphs = 'C300' shide = 'X' spgrp = 3 isgrp = '26' ) TO gt_fieldlist.
    APPEND VALUE #( fname = 'GHALF'     techl = 'BILLINGHALFYEAR'                texts = 'Bil.Half Year'        textl = 'Billing Half Year'             emphs = 'C300' shide = 'X' spgrp = 3 isgrp = '27' ) TO gt_fieldlist.
    APPEND VALUE #( fname = 'HKONT'     techl = 'GENERALLEDGERACCOUNT'           texts = 'Gen.Ledger Acc.'      textl = 'General Ledger Account'        emphs = 'C300' shide = 'X' spgrp = 3 isgrp = '28' ) TO gt_fieldlist.
    APPEND VALUE #( fname = 'PRCTR'     techl = 'PROFITCENTER'                   texts = 'Profit Center'        textl = 'Profit Center'                 emphs = 'C300' shide = 'X' spgrp = 3 isgrp = '29' ) TO gt_fieldlist.
  ENDIF.
  APPEND VALUE #( fname = 'ZTERM'     techl = 'CONDITIONTYPE'                  texts = 'Cond.Type'            textl = 'Condition Type'                emphs = 'C100' shide = ' ' spgrp = 1 isgrp = '30' grpx1 = 'ZTERM_X' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'ZTERM_X'   techl = 'CONDITIONTYPEDEFINITION'        texts = 'Cond.Type Def.'       textl = 'Condition Type Definition'     emphs = 'C100' shide = 'X' spgrp = 1 isgrp = ' '  grpx1 = ' '       ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'VKAUS'     techl = 'USAGE'                          texts = 'Usage'                textl = 'Usage'                         emphs = 'C400' shide = 'X' spgrp = 1 isgrp = '31' grpx1 = 'VKAUS_X' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'VKAUS_X'   techl = 'USAGEDEFINITION'                texts = 'Usage Def.'           textl = 'Usage Definition'              emphs = 'C400' shide = 'X' spgrp = 1 isgrp = ' '  grpx1 = ' '       ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'KDGRP'     techl = 'CUSTOMERGROUP'                  texts = 'Cust.Grp'             textl = 'Customer Group'                emphs = 'C200' shide = 'X' spgrp = 5 isgrp = '32' grpx1 = 'KONDA_X' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'KDGRP_X'   techl = 'CUSTOMERGROUPNAME'              texts = 'Cust.Grp.Name'        textl = 'Customer Group Name'           emphs = 'C200' shide = 'X' spgrp = 5 isgrp = ' '  grpx1 = ' '       ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'KUNNR'     techl = 'ORDERER'                        texts = 'Orderer'              textl = 'Orderer'                       emphs = 'C200' shide = ' ' spgrp = 5 isgrp = '33' grpx1 = 'KUNNR_X' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'KUNNR_X'   techl = 'ORDERERNAME'                    texts = 'Orderer Name'         textl = 'Orderer Name'                  emphs = 'C200' shide = 'X' spgrp = 5 isgrp = ' '  grpx1 = ' '       ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'KUNRE'     techl = 'SOLDTOPARTY'                    texts = 'Sold-2P'              textl = 'Sold-to Party'                 emphs = 'C200' shide = 'X' spgrp = 5 isgrp = '34' grpx1 = 'KUNRE_X' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'KUNRE_X'   techl = 'SOLDTOPARTYNAME'                texts = 'Sold-2P Name'         textl = 'Sold-to Party Name'            emphs = 'C200' shide = 'X' spgrp = 5 isgrp = ' '  grpx1 = ' '       ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'KUNRG'     techl = 'PAYER'                          texts = 'Payer'                textl = 'Payer'                         emphs = 'C200' shide = 'X' spgrp = 5 isgrp = '35' grpx1 = 'KUNRG_X' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'KUNRG_X'   techl = 'PAYERNAME'                      texts = 'Payer Name'           textl = 'Payer Name'                    emphs = 'C200' shide = 'X' spgrp = 5 isgrp = ' '  grpx1 = ' '       ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'KUNWE'     techl = 'SHIPTOPARTY'                    texts = 'Ship-2P'              textl = 'Ship-to Party'                 emphs = 'C200' shide = 'X' spgrp = 5 isgrp = '36' grpx1 = 'KUNWE_X' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'KUNWE_X'   techl = 'SHIPTOPARTYNAME'                texts = 'Ship-2P Name'         textl = 'Ship-to Party Name'            emphs = 'C200' shide = 'X' spgrp = 5 isgrp = ' '  grpx1 = ' '       ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'PARVW'     techl = 'ROLE'                           texts = 'Role'                 textl = 'Role'                          emphs = 'C200' shide = 'X' spgrp = 5 isgrp = '37' grpx1 = 'PARVW_X' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'PARVW_X'   techl = 'ROLENAME'                       texts = 'Role Name'            textl = 'Role Name'                     emphs = 'C200' shide = 'X' spgrp = 5 isgrp = ' '  grpx1 = ' '       ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'PARTN'     techl = 'ROLEPARTNER'                    texts = 'Role Partner'         textl = 'Role Partner'                  emphs = 'C200' shide = 'X' spgrp = 5 isgrp = '38' grpx1 = 'PARTN_X' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'PARTN_X'   techl = 'ROLPARTNERNAME'                 texts = 'Role Partner Name'    textl = 'Role Partner Name'             emphs = 'C200' shide = 'X' spgrp = 5 isgrp = ' '  grpx1 = ' '       ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'KTOKD'     techl = 'CUSTOMERACCOUNTGROUP'           texts = 'Cust.Acc.Grp.'        textl = 'Customer Account Group'        emphs = 'C200' shide = 'X' spgrp = 5 isgrp = '39' grpx1 = 'KTOKD_X' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'KTOKD_X'   techl = 'CUSTOMERACCOUNTGROUPNAME'       texts = 'Cust.Acc.Grp.Name'    textl = 'Customer Account Group Name'   emphs = 'C200' shide = 'X' spgrp = 5 isgrp = ' '  grpx1 = ' '       ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'KTGRD'     techl = 'CUSTOMERACCOUNTASSGGROUP'       texts = 'Cust.Acc.Assg.Grp.'   textl = 'Customer Acct. Assg. Group'    emphs = 'C200' shide = 'X' spgrp = 5 isgrp = '40' grpx1 = 'KTGRD_X' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'KTGRD_X'   techl = 'CUSTOMERACCOUNTASSGGROUPNAME'   texts = 'Cust.Acc.Assg.Grp.N.' textl = 'Customer Acct. Assg. Group N.' emphs = 'C200' shide = 'X' spgrp = 5 isgrp = ' '  grpx1 = ' '       ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'KONDA'     techl = 'CUSTOMERPRICEGROUP'             texts = 'Cust.Prc.Grp.'        textl = 'Customer Price Group'          emphs = 'C200' shide = 'X' spgrp = 5 isgrp = '41' grpx1 = 'KONDA_X' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'KONDA_X'   techl = 'CUSTOMERPRICEGROUPNAME'         texts = 'Cust.Prc.Grp.Name'    textl = 'Customer Price Group Name'     emphs = 'C200' shide = 'X' spgrp = 5 isgrp = ' '  grpx1 = ' '       ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'BPVIP'     techl = 'VIPCUSTOMER'                    texts = 'VIP Cust.'            textl = 'VIP Customer'                  emphs = 'C200' shide = 'X' spgrp = 5 isgrp = ' '  grpx1 = ' '       ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'BPUNW'     techl = 'UNWANTEDCUSTOMER'               texts = 'Unw. Cust.'           textl = 'Unwanted Customer'             emphs = 'C200' shide = 'X' spgrp = 5 isgrp = ' '  grpx1 = ' '       ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'BPBLK'     techl = 'BLOCKEDCUSTOMER'                texts = 'Blk. Cust.'           textl = 'Blocked Customer'              emphs = 'C200' shide = 'X' spgrp = 5 isgrp = ' '  grpx1 = ' '       ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'MATNR'     techl = 'MATERIAL'                       texts = 'Material'             textl = 'Material'                      emphs = 'C200' shide = ' ' spgrp = 4 isgrp = '42' grpx1 = 'MAKTX'   ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'MAKTX'     techl = 'MATERIALNAME'                   texts = 'Mat. Name'            textl = 'Material Name'                 emphs = 'C200' shide = 'X' spgrp = 4 isgrp = ' '  grpx1 = ' '       ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'BWTAR'     techl = 'VALUATIONTYPE'                  texts = 'Val. Type'            textl = 'Valuation Type'                emphs = 'C200' shide = 'X' spgrp = 4 isgrp = '43' grpx1 = ' '       ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'CHARG'     techl = 'BATCHNUMBER'                    texts = 'Batch No.'            textl = 'Batch Number'                  emphs = 'C200' shide = 'X' spgrp = 4 isgrp = '44' grpx1 = ' '       ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'MATKL'     techl = 'MATERIALGROUP'                  texts = 'Mat.Group'            textl = 'Material Group'                emphs = 'C200' shide = 'X' spgrp = 4 isgrp = '45' grpx1 = 'WGBEZ'   ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'WGBEZ'     techl = 'MATERIALGROUPDEFINITION'        texts = 'Mat.Group Def.'       textl = 'Material Group Definition'     emphs = 'C200' shide = 'X' spgrp = 4 isgrp = ' '  grpx1 = ' '       ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'MTART'     techl = 'MATERIALTYPE'                   texts = 'Mat.Type'             textl = 'Material Type'                 emphs = 'C200' shide = 'X' spgrp = 4 isgrp = '46' grpx1 = 'MTBEZ'   ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'MTBEZ'     techl = 'MATERIALTYPEDEFINITION'         texts = 'Mat.Type Def.'        textl = 'Material Type Definition'      emphs = 'C200' shide = 'X' spgrp = 4 isgrp = ' '  grpx1 = ' '       ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'KTGRM'     techl = 'MATERIALACCOUNTGROUP'           texts = 'Mat.Acc.Grp.'         textl = 'Material Account Group'        emphs = 'C200' shide = 'X' spgrp = 4 isgrp = '47' grpx1 = 'KTGRM_X' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'KTGRM_X'   techl = 'MATERIALACCOUNTGROUPNAME'       texts = 'Mat.Acc.Grp. Name'    textl = 'Material Account Group Name'   emphs = 'C200' shide = 'X' spgrp = 4 isgrp = ' '  grpx1 = ' '       ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'MVGR1'     techl = 'MATERIALGROUP1'                 texts = 'Mat.Grp.1'            textl = 'Material Group 1'              emphs = 'C200' shide = 'X' spgrp = 4 isgrp = '48' grpx1 = 'MVGR1_X' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'MVGR1_X'   techl = 'MATERIALGROUP1NAME'             texts = 'Mat.Grp.1 Name'       textl = 'Material Group 1 Name'         emphs = 'C200' shide = 'X' spgrp = 4 isgrp = ' '  grpx1 = ' '       ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'MVGR2'     techl = 'MATERIALGROUP2'                 texts = 'Mat.Grp.2'            textl = 'Material Group 2'              emphs = 'C200' shide = 'X' spgrp = 4 isgrp = '49' grpx1 = 'MVGR2_X' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'MVGR2_X'   techl = 'MATERIALGROUP2NAME'             texts = 'Mat.Grp.2 Name'       textl = 'Material Group 2 Name'         emphs = 'C200' shide = 'X' spgrp = 4 isgrp = ' '  grpx1 = ' '       ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'MVGR3'     techl = 'MATERIALGROUP3'                 texts = 'Mat.Grp.3'            textl = 'Material Group 3'              emphs = 'C200' shide = 'X' spgrp = 4 isgrp = '50' grpx1 = 'MVGR3_X' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'MVGR3_X'   techl = 'MATERIALGROUP3NAME'             texts = 'Mat.Grp.3 Name'       textl = 'Material Group 3 Name'         emphs = 'C200' shide = 'X' spgrp = 4 isgrp = ' '  grpx1 = ' '       ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'MVGR4'     techl = 'MATERIALGROUP4'                 texts = 'Mat.Grp.4'            textl = 'Material Group 4'              emphs = 'C200' shide = 'X' spgrp = 4 isgrp = '51' grpx1 = 'MVGR4_X' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'MVGR4_X'   techl = 'MATERIALGROUP4NAME'             texts = 'Mat.Grp.4 Name'       textl = 'Material Group 4 Name'         emphs = 'C200' shide = 'X' spgrp = 4 isgrp = ' '  grpx1 = ' '       ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'MVGR5'     techl = 'MATERIALGROUP5'                 texts = 'Mat.Grp.5'            textl = 'Material Group 5'              emphs = 'C200' shide = 'X' spgrp = 4 isgrp = '52' grpx1 = 'MVGR5_X' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'MVGR5_X'   techl = 'MATERIALGROUP5NAME'             texts = 'Mat.Grp.5 Name'       textl = 'Material Group 5 Name'         emphs = 'C200' shide = 'X' spgrp = 4 isgrp = ' '  grpx1 = ' '       ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'VSTEL'     techl = 'SHIPMENTPOINT'                  texts = 'Ship.Point'           textl = 'Shipment Point'                emphs = 'C200' shide = 'X' spgrp = 2 isgrp = '53' grpx1 = 'VSTEL_X' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'VSTEL_X'   techl = 'SHIPMENTPOINTNAME'              texts = 'Ship.Point Name'      textl = 'Shipment Point Name'           emphs = 'C200' shide = 'X' spgrp = 2 isgrp = ' '  grpx1 = ' '       ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'WERKS'     techl = 'PRODUCTIONLOCATION'             texts = 'Prod.Loc.'            textl = 'Production Location'           emphs = 'C200' shide = 'X' spgrp = 2 isgrp = '54' grpx1 = 'WERKS_X' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'WERKS_X'   techl = 'PRODUCTIONLOCATIONNAME'         texts = 'Prod.Loc. Name'       textl = 'Production Location Name'      emphs = 'C200' shide = 'X' spgrp = 2 isgrp = ' '  grpx1 = ' '       ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'LGORT'     techl = 'WAREHOUSELOCATION'              texts = 'Ware.Loc.'            textl = 'Warehouse Location'            emphs = 'C200' shide = 'X' spgrp = 2 isgrp = '55' grpx1 = 'LGORT_X' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'LGORT_X'   techl = 'WAREHOUSELOCATIONNAME'          texts = 'Ware.Loc. Name'       textl = 'Warehouse Location Name'       emphs = 'C200' shide = 'X' spgrp = 2 isgrp = ' '  grpx1 = ' '       ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'INCO1'     techl = 'INCOTERMS'                      texts = 'Incot.'               textl = 'Incoterms'                     emphs = 'C200' shide = 'X' spgrp = 1 isgrp = '56' grpx1 = ' '       ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'INCO2'     techl = 'INCOTERMSPLACE'                 texts = 'Incot. Place'         textl = 'Incoterms Place'               emphs = 'C200' shide = 'X' spgrp = 1 isgrp = ' '  grpx1 = ' '       ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'WE_CITY'   techl = 'SHIPTOCITY'                     texts = 'STP City'             textl = 'Ship-to City'                  emphs = 'C200' shide = 'X' spgrp = 2 isgrp = ' '  grpx1 = ' '       ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'WE_PSTC'   techl = 'SHIPTOPOSTALCODE'               texts = 'STP Postal Code'      textl = 'Ship-to Postal Code'           emphs = 'C200' shide = 'X' spgrp = 2 isgrp = ' '  grpx1 = ' '       ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'WE_REGI'   techl = 'SHIPTOREGION'                   texts = 'STP Region'           textl = 'Ship-to Region'                emphs = 'C200' shide = 'X' spgrp = 2 isgrp = '57' grpx1 = 'WE_REGN' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'WE_REGN'   techl = 'SHIPTOREGIONNAME'               texts = 'STP Region Name'      textl = 'Ship-to Region Name'           emphs = 'C200' shide = 'X' spgrp = 2 isgrp = ' '  grpx1 = ' '       ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'WE_CNTY'   techl = 'SHIPTOCOUNTRY'                  texts = 'STP Country'          textl = 'Ship-to Country'               emphs = 'C200' shide = 'X' spgrp = 2 isgrp = '58' grpx1 = ' '       ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'WE_ADRS'   techl = 'SHIPTOADDRESS'                  texts = 'STP Address'          textl = 'Ship-to Address'               emphs = 'C200' shide = 'X' spgrp = 2 isgrp = ' '  grpx1 = ' '       ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'TM_QUAN'   techl = 'TERMINQUANTITY'                 texts = 'Term. Qty.'           textl = 'Termin Quantity'               emphs = 'C700' shide = ' ' spgrp = 6 cumty = 'T' slynr = '01' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'LF_QUAN'   techl = 'DELIVERYQUANTITY'               texts = 'Del. Qty.'            textl = 'Delivery Quantity'             emphs = 'C700' shide = 'X' spgrp = 6 cumty = 'T' slynr = '02' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'LF_BQUA'   techl = 'UNDELIVEREDQUANTITY'            texts = 'Undeliv. Qty.'        textl = 'Undelivered Quantity'          emphs = 'C700' shide = ' ' spgrp = 6 cumty = 'T' slynr = '03' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'WA_QUAN'   techl = 'GOODSISSUEQUANTITY'             texts = 'Issue Qty.'           textl = 'Goods Issue Quantity'          emphs = 'C700' shide = 'X' spgrp = 6 cumty = 'T' slynr = '04' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'WA_BQUA'   techl = 'GOODSISSUESHORTQUANTITY'        texts = 'Issue Sh. Qty.'       textl = 'Goods Issue Short. Quantity'   emphs = 'C700' shide = 'X' spgrp = 6 cumty = 'T' slynr = '05' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'FK_QUAN'   techl = 'BILLEDQUANTITY'                 texts = 'Bil. Qty.'            textl = 'Billed Quantity'               emphs = 'C700' shide = ' ' spgrp = 6 cumty = 'T' slynr = '06' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'FK_BQUA'   techl = 'UNBILLEDQUANTITY'               texts = 'Unbil. Qty.'          textl = 'Unbilled Quantity'             emphs = 'C700' shide = 'X' spgrp = 6 cumty = 'T' slynr = '07' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'FK_WQUA'   techl = 'PENDINGBILLINGQUANTITY'         texts = 'Pend. Bil. Qty.'      textl = 'Pending Billing Quantity'      emphs = 'C700' shide = 'X' spgrp = 6 cumty = 'T' slynr = '08' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'VRKME'     techl = 'REPORTMEASUREMENTUNIT'          texts = 'Unit'                 textl = 'Unit'                          emphs = 'C700' shide = ' ' spgrp = 1 isgrp = '59' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'CVRKM'     techl = 'ORDERMEASUREMENTUNIT'           texts = 'Ord. Unit'            textl = 'Order Unit'                    emphs = 'C700' shide = 'X' spgrp = 1 isgrp = '60' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'NT_PRIC'   techl = 'SALESPRICE'                     texts = 'Sales Pr.'            textl = 'Sales Price'                   emphs = 'C100' shide = ' ' spgrp = 7 cumty = 'W' slynr = '09' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'NT_TXPR'   techl = 'TAXINCLUSIVESALESPRICE'         texts = 'Tax-Incl.Sales Pr.'   textl = 'Tax-Inclusive Sales Price'     emphs = 'C100' shide = 'X' spgrp = 7 cumty = 'W' slynr = '10' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'TX_AMNT'   techl = 'TAXAMOUNT'                      texts = 'Tax Amt.'             textl = 'Tax Amount'                    emphs = 'C400' shide = 'X' spgrp = 8 cumty = 'T' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'TM_AMNT'   techl = 'TERMINAMOUNT'                   texts = 'Term. Amt.'           textl = 'Termin Amount'                 emphs = 'C300' shide = ' ' spgrp = 8 cumty = 'T' slynr = '11' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'LF_AMNT'   techl = 'DELIVEREDAMOUNT'                texts = 'Del. Amt.'            textl = 'Delivered Amount'              emphs = 'C300' shide = 'X' spgrp = 8 cumty = 'T' slynr = '12' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'LF_BAMN'   techl = 'UNDELIVEREDAMOUNT'              texts = 'Undlv. Amt.'          textl = 'Undelivered Amount'            emphs = 'C300' shide = 'X' spgrp = 8 cumty = 'T' slynr = '13' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'FK_WAMN'   techl = 'PENDINGBILLINGAMOUNT'           texts = 'Pend. Bil. Amt.'      textl = 'Pending Billing Amount'        emphs = 'C300' shide = 'X' spgrp = 8 cumty = 'T' slynr = '14' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'FK_BAMN'   techl = 'UNBILLEDAMOUNT'                 texts = 'Unbil. Amt.'          textl = 'Unbilled Amount'               emphs = 'C300' shide = 'X' spgrp = 8 cumty = 'T' slynr = '15' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'FK_AMNT'   techl = 'BILLEDAMOUNT'                   texts = 'Bil. Amt.'            textl = 'Billed Amount'                 emphs = 'C300' shide = ' ' spgrp = 8 cumty = 'T' slynr = '16' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'FK_TOTL'   techl = 'TAXINCLUSIVEBILLEDAMOUNT'       texts = 'Tax-Incl.Bil.Amt.'    textl = 'Tax-Inclusive Billed Amount'   emphs = 'C300' shide = 'X' spgrp = 8 cumty = 'T' slynr = '17' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'AG_AMNT'   techl = 'CLEAREDAMOUNT'                  texts = 'Cleared Amt.'         textl = 'Cleared Amount'                emphs = 'C300' shide = 'X' spgrp = 8 cumty = 'T' slynr = '18' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'AG_BAMN'   techl = 'UNCLEAREDAMOUNT'                texts = 'Uncleared Amt.'       textl = 'Uncleared Amount'              emphs = 'C300' shide = 'X' spgrp = 8 cumty = 'T' slynr = '19' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'WAERK'     techl = 'REPORTCURRENCY'                 texts = 'Curr.'                textl = 'Currency'                      emphs = 'C300' shide = ' ' spgrp = 1 isgrp = '61' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'CWAER'     techl = 'ORDERCURRENCY'                  texts = 'Ord.Curr.'            textl = 'Order Currency'                emphs = 'C300' shide = 'X' spgrp = 1 isgrp = '62' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'NT_PRIC_2' techl = 'SALESPRICE'                     texts = 'Sales Pr.'            textl = 'Sales Price'                   emphs = 'C100' shide = 'X' spgrp = 7 cumty = 'A'  ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'NT_TXPR_2' techl = 'TAXINCLUSIVESALESPRICE'         texts = 'Tax-Incl.Sales Pr.'   textl = 'Tax-Inclusive Sales Price'     emphs = 'C100' shide = 'X' spgrp = 7 cumty = 'A'  ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'FK_AMNT_2' techl = 'BILLEDDAMOUNT'                  texts = 'Bil. Amt.'            textl = 'Billed Amount'                 emphs = 'C300' shide = 'X' spgrp = 8 cumty = 'T'  ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'FK_TOTL_2' techl = 'TAXINCLUSIVEBILLEDAMOUNT'       texts = 'Tax-Incl.Bil.Amt.'    textl = 'Tax-Inclusive Billed Amount'   emphs = 'C300' shide = 'X' spgrp = 8 cumty = 'T'  ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'WAERK_2'   techl = 'REPORTCURRENCY_2'               texts = 'Curr. (2)'            textl = 'Currency (2)'                  emphs = 'C300' shide = 'X' spgrp = 1 ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'EC_AMNT'   techl = 'EXCHANGERATEDIFFERENCE'         texts = 'Exch. Rate Diff.'     textl = 'Exchange Rate Difference'      emphs = 'C400' shide = 'X' spgrp = 8 cumty = 'T' slynr = '20' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'EC_TAMN'   techl = 'TAXINCLEXCHANGERATEDIFF'        texts = 'Tax-Incl.Exch.Diff.'  textl = 'Tax-Incl. Exchange Rate Diff'  emphs = 'C400' shide = 'X' spgrp = 8 cumty = 'T' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'VP_QUAN'   techl = 'ORDERITEMQUANTITY'              texts = 'Ord. Item Qty.'       textl = 'Order Item Quantity'           emphs = 'C700' shide = 'X' spgrp = 6 cumty = ' ' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'ZTAGE'     techl = 'PAYMENTTERMSDAYCOUNT'           texts = 'Pay. Terms Day Cnt.'  textl = 'Payment Terms Day Count'       emphs = 'C100' shide = 'X' spgrp = 1 cumty = 'A' slynr = '21' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'GBSTA'     techl = 'ORDERSTATUS'                    texts = 'Ord. Status'          textl = 'Order Status'                  emphs = 'C500' shide = 'X' spgrp = 1 isgrp = '63' grpx1 = 'GBSTA_X' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'GBSTA_D'   techl = 'ORDERSTATUSDEFINITION'          texts = 'Ord. Status Def.'     textl = 'Order Status Definition'       emphs = 'C500' shide = 'X' spgrp = 1 isgrp = ' ' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'AUGRU'     techl = 'ORDERREASON'                    texts = 'Order Reason'         textl = 'Order Reason'                  emphs = 'C700' shide = 'X' spgrp = 1 isgrp = '64' cumty = ' ' grpx1 = 'AUGRU_X' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'AUGRU_X'   techl = 'ORDERREASONDEFINITION'          texts = 'Order Reason Def.'    textl = 'Order Reason Definition'       emphs = 'C700' shide = 'X' spgrp = 1 isgrp = ' '  cumty = ' ' grpx1 = ' '  ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'ABGRU'     techl = 'RETURNREASON'                   texts = 'Return Reason'        textl = 'Return Reason'                 emphs = 'C700' shide = 'X' spgrp = 1 isgrp = '65' cumty = ' ' grpx1 = 'ABGRU_X' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'ABGRU_X'   techl = 'RETURNREASONDEFINITION'         texts = 'Return Reason Def.'   textl = 'Return Reason Definition'      emphs = 'C700' shide = 'X' spgrp = 1 isgrp = ' '  cumty = ' ' grpx1 = ' '  ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'COUNT'     techl = 'RECORDCOUNT'                    texts = '#'                    textl = 'Record Count'                  emphs = 'C700' shide = 'X' spgrp = 1 isgrp = ' '  cumty = 'T' slynr = '22' ) TO gt_fieldlist.

ENDFORM.



FORM fill_parameters_de.

  CLEAR gt_fieldlist[].

  APPEND VALUE #( fname = 'HIERA'     techl = 'HIERARCHIE'                     texts = 'Hier.'               textl = 'Hierarchie'                     emphs = 'C700' shide = 'X' spgrp = 1 isgrp = ' ' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'BUKRS'     techl = 'BUCHUNGSKREIS'                  texts = 'Buchungskreis'       textl = 'Buchungskreis'                  emphs = 'C500' shide = 'X' spgrp = 5 isgrp = '01' grpx1 = 'BUKRS_X' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'BUKRS_X'   techl = 'BUCHUNGSKREISNAME'              texts = 'Buchungskreis Name'  textl = 'Buchungskreis Name'             emphs = 'C500' shide = 'X' spgrp = 5 isgrp = ' ' grpx1 = ' ' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'SDORG'     techl = 'VERTRIEBSBEREICH'               texts = 'Vertriebsb.'         textl = 'Vertriebsbereich'   emphs = 'C500' spgrp = 6 isgrp = '02' grpx1 = 'VKORG_X' grpx2 = 'VTWEG_X' grpx3 = 'SPART_X' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'VKORG'     techl = 'VERKAUFSORGANISATION'           texts = 'Verkaufsorg.'        textl = 'Verkaufsorganisation'           emphs = 'C200' shide = 'X' spgrp = 5 isgrp = '03' grpx1 = 'VKORG_X' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'VKORG_X'   techl = 'VERKAUFSORGANISATIONNAME'       texts = 'Verkaufsorg. Name'   textl = 'Verkaufsorganisationname'       emphs = 'C200' shide = 'X' spgrp = 5 isgrp = ' '  grpx1 = ' '       ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'VTWEG'     techl = 'VERTRIEBSWEG'                   texts = 'Vertriebsweg'        textl = 'Vertriebsweg'                   emphs = 'C200' shide = 'X' spgrp = 5 isgrp = '04' grpx1 = 'VTWEG_X' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'VTWEG_X'   techl = 'VERTRIEBSWEGNAME'               texts = 'Vertriebsweg Name'   textl = 'Vertriebswegname'               emphs = 'C200' shide = 'X' spgrp = 5 isgrp = ' '  grpx1 = ' '       ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'SPART'     techl = 'SPARTE'                         texts = 'Sparte'              textl = 'Sparte'                         emphs = 'C200' shide = 'X' spgrp = 5 isgrp = '05' grpx1 = 'SPART_X' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'SPART_X'   techl = 'SPARTENAME'                     texts = 'Sparte Name'         textl = 'Spartename'                     emphs = 'C200' shide = 'X' spgrp = 5 isgrp = ' '  grpx1 = ' '       ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'VKBUR'     techl = 'VERKAUFSBURO'                   texts = 'Verkaufsbüro'        textl = 'Verkaufsbüro'                   emphs = 'C200' shide = 'X' spgrp = 5 isgrp = '06' grpx1 = 'VKBUR_X' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'VKBUR_X'   techl = 'VERKAUFSBURONAME'               texts = 'Verkaufsbüro Name'   textl = 'Verkaufsbüroname'               emphs = 'C200' shide = 'X' spgrp = 5 isgrp = ' '  grpx1 = ' '       ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'VKGRP'     techl = 'VERKAUFERGRUPPE'                texts = 'Verkäufergruppe'     textl = 'Verkäufergruppe'                emphs = 'C200' shide = 'X' spgrp = 5 isgrp = '07' grpx1 = 'VKGRP_X' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'VKGRP_X'   techl = 'VERKAUFERGRUPPENAME'            texts = 'Verkäufergruppe Nm.' textl = 'Verkäufergruppename'            emphs = 'C200' shide = 'X' spgrp = 5 isgrp = ' '  grpx1 = ' '       ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'BZIRK'     techl = 'VERKAUFSBEZIRKE'                texts = 'Verkaufsbezirke'      textl = 'Verkaufsbezirke'               emphs = 'C200' shide = 'X' spgrp = 5 isgrp = '08' grpx1 = 'BZIRK_X' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'BZIRK_X'   techl = 'VERKAUFSBEZIRKEBEZEICHNUNG'     texts = 'Verkaufsbezirke Bez.' textl = 'Verkaufsbezirke Bez.'          emphs = 'C200' shide = 'X' spgrp = 5 isgrp = ' '  grpx1 = ' '       ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'AUART'     techl = 'VERKAUFSBELEGART'               texts = 'Verkaufsbelegart'    textl = 'Auftragsart'                    emphs = 'C500' shide = ' ' spgrp = 1 isgrp = '09' grpx1 = 'AUART_X' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'AUART_X'   techl = 'VERKAUFSBELEGARTBESCHREIBUNG'   texts = 'Verkaufsbelegart B.' textl = 'Verkaufsbelegart Besch.'        emphs = 'C500' shide = 'X' spgrp = 1 isgrp = ' '  grpx1 = ' '       ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'TTYPE'     techl = 'TERMINART'                      texts = 'Term.-Art'           textl = 'Terminart'                      emphs = 'C500' shide = ' ' spgrp = 1 isgrp = '10' grpx1 = ' ' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'TSTAT'     techl = 'TERMINSTATUS'                   texts = 'Term.-Status'        textl = 'Terminstatus'                   emphs = 'C500' shide = ' ' spgrp = 1 isgrp = '11' grpx1 = ' ' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'VBELK'     techl = 'VERKAUFSNUMMERPOSITION'         texts = 'Verk.-Nr./-Pos.'     textl = 'Verkaufsnummer/-position'       emphs = 'C500' shide = 'X' spgrp = 1 isgrp = '12' grpx1 = 'VBELN' grpx2 = 'POSNR' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'VBELN'     techl = 'VERKAUFSNUMMER'                 texts = 'Verk.-Nr.'           textl = 'Verkaufsnummer'                 emphs = 'C500' shide = ' ' spgrp = 1 isgrp = ' '  grpx1 = ' ' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'POSNR'     techl = 'VERKAUFSPOSITION'               texts = 'Verk.-Pos.'          textl = 'Verkaufsposition'               emphs = 'C500' shide = ' ' spgrp = 1 isgrp = ' '  grpx1 = ' ' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'AUDAT'     techl = 'VERKAUFSDATUM'                  texts = 'Verk.-Datum'         textl = 'Verkaufsdatum'                  emphs = 'C500' shide = ' ' spgrp = 1 isgrp = '13' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'VKPER'     techl = 'VERKAUFSPERIODE'                texts = 'Verk.-Periode'       textl = 'Verkaufsperiode'                emphs = 'C500' shide = 'X' spgrp = 1 isgrp = '14' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'VKWEK'     techl = 'VERKAUFSWOCHE'                  texts = 'Verk.-Woche'         textl = 'Verkaufswoche'                  emphs = 'C500' shide = 'X' spgrp = 1 isgrp = '15' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'ERDAT'     techl = 'AUFTRAGSDATUM'                  texts = 'Aufttragsdatum'      textl = 'Auftragerstellungsdatum'        emphs = 'C500' shide = 'X' spgrp = 1 isgrp = '16' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'ERZET'     techl = 'AUFTRAGSZEITPUNKT'              texts = 'Aufttragszeitpkt.'   textl = 'Auftragerstellungszeitpunkt'    emphs = 'C500' shide = 'X' spgrp = 1 isgrp = ' '  ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'ERNAM'     techl = 'AUFTRAGSERSTELLER'              texts = 'Auftragsersteller'   textl = 'Auftragsersteller'              emphs = 'C500' shide = 'X' spgrp = 1 isgrp = '17' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'SHKZG'     techl = 'RUCKGABE'                       texts = 'Rückgabe'            textl = 'Rückgabe'                       emphs = 'C500' shide = 'X' spgrp = 1 isgrp = ' '  ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'POSEX'     techl = 'VORHERIGEPOSITION'              texts = 'Vorherige Pos.'      textl = 'Vorherige Position'             emphs = 'C500' shide = 'X' spgrp = 1 isgrp = ' '  ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'VGBEL'     techl = 'VORLAGEBELEG'                   texts = 'Vorlagebeleg-Dok.'   textl = 'Vorlagebeleg'                   emphs = 'C500' shide = 'X' spgrp = 1 isgrp = ' '  ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'VGPOS'     techl = 'VORLAGEBELEGPOSITION'           texts = 'Vorlagebeleg-Pos.'   textl = 'Vorlagebelegposition'           emphs = 'C500' shide = 'X' spgrp = 1 isgrp = ' '  ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'VGTYP'     techl = 'VORLAGEBELEGART'                texts = 'Vorlagebeleg-Art'    textl = 'Vorlagebelegart'                emphs = 'C500' shide = 'X' spgrp = 1 isgrp = ' '  ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'BSTKD'     techl = 'KUNDENREFERENZ'                 texts = 'Kundenref.'          textl = 'Kundenreferenz'                 emphs = 'C500' shide = 'X' spgrp = 2 isgrp = ' '  ) TO gt_fieldlist.
  IF p_term EQ 'T'.
    APPEND VALUE #( fname = 'LFBEL'     techl = 'LIEFERDOKUMENT'                 texts = 'Liefer-Dok.'         textl = 'Lieferdokument'                 emphs = 'C700' shide = ' ' spgrp = 2 isgrp = ' '  ) TO gt_fieldlist.
    APPEND VALUE #( fname = 'LFPOS'     techl = 'LIEFERPOSITION'                 texts = 'Liefer-Pos.'         textl = 'Lieferposition'                 emphs = 'C700' shide = ' ' spgrp = 2 isgrp = ' '  ) TO gt_fieldlist.
    APPEND VALUE #( fname = 'LFDAT'     techl = 'LIEFERDATUM'                    texts = 'Liefer-Datum'        textl = 'Lieferdatum'                    emphs = 'C700' shide = ' ' spgrp = 2 isgrp = '18' ) TO gt_fieldlist.
    APPEND VALUE #( fname = 'LFPER'     techl = 'LIEFERPERIODE'                  texts = 'Lieferperiode'       textl = 'Lieferperiode'                  emphs = 'C700' shide = 'X' spgrp = 2 isgrp = '19' ) TO gt_fieldlist.
    APPEND VALUE #( fname = 'WBSTA'     techl = 'WARENVERSANDSTATUS'             texts = 'Warenversandstatus'  textl = 'Warenversandstatus'             emphs = 'C700' shide = 'X' spgrp = 2 isgrp = ' '  ) TO gt_fieldlist.
    APPEND VALUE #( fname = 'BWART'     techl = 'BEWEGUNGSART'                   texts = 'Bewegungsart'        textl = 'Bewegungsart'                   emphs = 'C700' shide = 'X' spgrp = 2 isgrp = '20' ) TO gt_fieldlist.
    APPEND VALUE #( fname = 'MBLNR'     techl = 'WARENAUSGANGSDOKUMENT'          texts = 'Warenaus.-Dok.'      textl = 'Warenausgangsdokument'          emphs = 'C700' shide = 'X' spgrp = 2 isgrp = ' '  ) TO gt_fieldlist.
    APPEND VALUE #( fname = 'BLDAT'     techl = 'WARENAUSGANGSDATUM'             texts = 'Warenaus.-Datum'     textl = 'Warenausgangsdatum'             emphs = 'C700' shide = 'X' spgrp = 2 isgrp = ' '  ) TO gt_fieldlist.
    APPEND VALUE #( fname = 'FKBEL'     techl = 'RECHNUNGSDOKUMENT'              texts = 'Rechn.-Dok.'         textl = 'Rechnungsdokument'              emphs = 'C300' shide = ' ' spgrp = 3 isgrp = ' '  ) TO gt_fieldlist.
    APPEND VALUE #( fname = 'FKPOS'     techl = 'RECHNUNGSPOSITION'              texts = 'Rechn.-Pos.'         textl = 'Rechnungsposition'              emphs = 'C300' shide = 'X' spgrp = 3 isgrp = ' '  ) TO gt_fieldlist.
    APPEND VALUE #( fname = 'PRSDT'     techl = 'PREISDATUM'                     texts = 'Preis Datum'         textl = 'Preis Datum'                    emphs = 'C300' shide = 'X' spgrp = 3 isgrp = ' '  ) TO gt_fieldlist.
    APPEND VALUE #( fname = 'FKDAT'     techl = 'RECHNUNGSDATUM'                 texts = 'Rechn.-Datum'        textl = 'Rechnungsdatum'                 emphs = 'C300' shide = ' ' spgrp = 3 isgrp = '21' ) TO gt_fieldlist.
    APPEND VALUE #( fname = 'FKPER'     techl = 'RECHNUNGSPERIODE'               texts = 'Rechn.-Periode'      textl = 'Rechnungsperiode'               emphs = 'C300' shide = 'X' spgrp = 3 isgrp = '22' ) TO gt_fieldlist.
    APPEND VALUE #( fname = 'FKWEK'     techl = 'RECHNUNGSWOCHE'                 texts = 'Rechn.-Woche'        textl = 'Rechnungswoche'                 emphs = 'C300' shide = 'X' spgrp = 3 isgrp = '23' ) TO gt_fieldlist.
    APPEND VALUE #( fname = 'FSTAT'     techl = 'RECHNUNGSSTATUS'                texts = 'Rechn.-Status'       textl = 'Rechnungsstatus'                emphs = 'C300' shide = 'X' spgrp = 3 isgrp = ' '  ) TO gt_fieldlist.
    APPEND VALUE #( fname = 'BELNR'     techl = 'BUCHUNGSDOKUMENT'               texts = 'Buchungsdok.'        textl = 'Buchungsdokument'               emphs = 'C300' shide = 'X' spgrp = 3 isgrp = ' '  ) TO gt_fieldlist.
    APPEND VALUE #( fname = 'AUGBL'     techl = 'AUSGLEICHSDOKUMENT'             texts = 'Ausgleichsdok.'      textl = 'Ausgleichsdokument'             emphs = 'C300' shide = 'X' spgrp = 3 isgrp = ' '  ) TO gt_fieldlist.
    APPEND VALUE #( fname = 'AUGDT'     techl = 'AUSGLEICHSDATUM'                texts = 'Ausgleichsdatum'     textl = 'Ausgleichsdatum'                emphs = 'C300' shide = 'X' spgrp = 3 isgrp = ' '  ) TO gt_fieldlist.
    APPEND VALUE #( fname = 'GJAHR'     techl = 'RECHNUNGSJAHR'                  texts = 'Rechn.-Jahr'         textl = 'Rechnungsjahr'                  emphs = 'C300' shide = 'X' spgrp = 3 isgrp = '24' ) TO gt_fieldlist.
    APPEND VALUE #( fname = 'GMONT'     techl = 'RECHNUNGSMONAT'                 texts = 'Rechn.-Monat'        textl = 'Rechnungsmonat'                 emphs = 'C300' shide = 'X' spgrp = 3 isgrp = '25' ) TO gt_fieldlist.
    APPEND VALUE #( fname = 'GQUAR'     techl = 'RECHNUNGSQUARTAL'               texts = 'Rechn.-Quartal'      textl = 'Rechnungsquartal'               emphs = 'C300' shide = 'X' spgrp = 3 isgrp = '26' ) TO gt_fieldlist.
    APPEND VALUE #( fname = 'GHALF'     techl = 'RECHNUNGSHALBJAHR'              texts = 'Rechn.-Halbjahr'     textl = 'Rechnungshalbjahr'              emphs = 'C300' shide = 'X' spgrp = 3 isgrp = '27' ) TO gt_fieldlist.
    APPEND VALUE #( fname = 'HKONT'     techl = 'HAUPTBUCHKONTO'                 texts = 'Hauptbuchkonto'      textl = 'Hauptbuchkonto'                 emphs = 'C300' shide = 'X' spgrp = 3 isgrp = '28' ) TO gt_fieldlist.
    APPEND VALUE #( fname = 'PRCTR'     techl = 'PROFITCENTER'                   texts = 'Profit Center'       textl = 'Profit Center'                  emphs = 'C300' shide = 'X' spgrp = 3 isgrp = '29' ) TO gt_fieldlist.
  ENDIF.
  APPEND VALUE #( fname = 'ZTERM'     techl = 'KONDITIONSTYP'                  texts = 'Kond.-Typ'           textl = 'Konditionstyp'                  emphs = 'C100' shide = ' ' spgrp = 1 isgrp = '30' grpx1 = 'ZTERM_X' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'ZTERM_X'   techl = 'KONDITIONSTYPBEZEICHNUNG'       texts = 'Kond.-Typ Bez.'      textl = 'Konditionstyp Bezeichnung'      emphs = 'C100' shide = 'X' spgrp = 1 isgrp = ' '  grpx1 = ' '       ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'VKAUS'     techl = 'NUTZUNG'                        texts = 'Nutzung'             textl = 'Nutzung'                        emphs = 'C400' shide = 'X' spgrp = 1 isgrp = '31' grpx1 = 'VKAUS_X' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'VKAUS_X'   techl = 'NUTZUNGBEZEICHNUNG'             texts = 'Nutzung Bez.'        textl = 'Nutzung Bezeichnung'            emphs = 'C400' shide = 'X' spgrp = 1 isgrp = ' '  grpx1 = ' '       ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'KDGRP'     techl = 'KUNDENGRUPPE'                   texts = 'Kundengruppe'        textl = 'Kundengruppe'                   emphs = 'C200' shide = 'X' spgrp = 5 isgrp = '32' grpx1 = 'KONDA_X' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'KDGRP_X'   techl = 'KUNDENGRUPPEBEZEICHNUNG'        texts = 'Kundengruppe Bez.'   textl = 'Kundengruppe Bez.'              emphs = 'C200' shide = 'X' spgrp = 5 isgrp = ' '  grpx1 = ' '       ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'KUNNR'     techl = 'BESTELLER'                      texts = 'Besteller'           textl = 'Besteller'                      emphs = 'C200' shide = ' ' spgrp = 5 isgrp = '33' grpx1 = 'KUNNR_X' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'KUNNR_X'   techl = 'NAMEDESBESTELLERS'              texts = 'Besteller-Name'      textl = 'Name des Bestellers'            emphs = 'C200' shide = 'X' spgrp = 5 isgrp = ' '  grpx1 = ' '       ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'KUNRE'     techl = 'RECHNUNGSEMPFANGER'             texts = 'Rechnungsempf.'      textl = 'Rechnungsempfänger'             emphs = 'C200' shide = 'X' spgrp = 5 isgrp = '34' grpx1 = 'KUNRE_X' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'KUNRE_X'   techl = 'NAMEDESRECHNUNGSEMPFANGERS'     texts = 'Rechnungsempf.-Name' textl = 'Name des Rechnungsempfängers'   emphs = 'C200' shide = 'X' spgrp = 5 isgrp = ' '  grpx1 = ' '       ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'KUNRG'     techl = 'ZAHLER'                         texts = 'Zahler'              textl = 'Zahler'                         emphs = 'C200' shide = 'X' spgrp = 5 isgrp = '35' grpx1 = 'KUNRG_X' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'KUNRG_X'   techl = 'NAMEDESZAHLERS'                 texts = 'Name des Zahlers'    textl = 'Name des Zahlers'               emphs = 'C200' shide = 'X' spgrp = 5 isgrp = ' '  grpx1 = ' '       ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'KUNWE'     techl = 'WARENEMPFANGER'                 texts = 'Warenempf.'          textl = 'Warenempfänger'                 emphs = 'C200' shide = 'X' spgrp = 5 isgrp = '36' grpx1 = 'KUNWE_X' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'KUNWE_X'   techl = 'NAMEDESWARENEMPFANGERS'         texts = 'Warenempf.-Name'     textl = 'Name des Warenempfängers'       emphs = 'C200' shide = 'X' spgrp = 5 isgrp = ' '  grpx1 = ' '       ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'PARVW'     techl = 'ROLE'                           texts = 'Role'                textl = 'Role'                           emphs = 'C200' shide = 'X' spgrp = 5 isgrp = '37' grpx1 = 'PARVW_X' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'PARVW_X'   techl = 'ROLEBEZEICHNUNG'                texts = 'Role Bez.'           textl = 'Role Bezeichnung'               emphs = 'C200' shide = 'X' spgrp = 5 isgrp = ' '  grpx1 = ' '       ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'PARTN'     techl = 'ROLEPARTNER'                    texts = 'Role Partner'        textl = 'Role Partner'                   emphs = 'C200' shide = 'X' spgrp = 5 isgrp = '38' grpx1 = 'PARTN_X' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'PARTN_X'   techl = 'ROLEPARTNERNAME'                texts = 'Role Partner Name'   textl = 'Role Partner Name'              emphs = 'C200' shide = 'X' spgrp = 5 isgrp = ' '  grpx1 = ' '       ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'KTOKD'     techl = 'KUNDENKONTENGRUPPE'             texts = 'Kund.Kontengr.'      textl = 'Kundenkontengruppe'             emphs = 'C200' shide = 'X' spgrp = 5 isgrp = '39' grpx1 = 'KTOKD_X' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'KTOKD_X'   techl = 'KUNDENKONTENGRUPPENBEZEICHNUNG' texts = 'Kund.Kontengr.Bez.'  textl = 'Kundenkontengruppen Bez.'       emphs = 'C200' shide = 'X' spgrp = 5 isgrp = ' '  grpx1 = ' '       ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'KTGRD'     techl = 'KUNDENKONTIERUNGSGRUPPE'        texts = 'Kund.Kontier.Grp.'   textl = 'Kundenkontierungsgruppe'        emphs = 'C200' shide = 'X' spgrp = 5 isgrp = '40' grpx1 = 'KTGRD_X' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'KTGRD_X'   techl = 'KUNDENKONTIERUNGSGRUPPENAME'    texts = 'Kund.Kontier.Grp.B.' textl = 'Kundenkontierungsgruppe Bez.'   emphs = 'C200' shide = 'X' spgrp = 5 isgrp = ' '  grpx1 = ' '       ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'KONDA'     techl = 'KUNDENPREISGRUPPE'              texts = 'Kund.Preisgr.'       textl = 'Kundenpreisgruppe'              emphs = 'C200' shide = 'X' spgrp = 5 isgrp = '41' grpx1 = 'KONDA_X' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'KONDA_X'   techl = 'KUNDENPREISGRUPPENBEZEICHNUNG'  texts = 'Kund.Preisgr.Bez.'   textl = 'Kundenpreisgruppen Bez.'        emphs = 'C200' shide = 'X' spgrp = 5 isgrp = ' '  grpx1 = ' '       ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'BPVIP'     techl = 'VIPKUNDE'                       texts = 'VIP-Kunde'           textl = 'VIP-Kunde'                      emphs = 'C200' shide = 'X' spgrp = 5 isgrp = ' '  grpx1 = ' '       ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'BPUNW'     techl = 'UNERWUNSCHTERKUNDE'             texts = 'Unerw. Kunde'        textl = 'Unerwünschter Kunde'            emphs = 'C200' shide = 'X' spgrp = 5 isgrp = ' '  grpx1 = ' '       ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'BPBLK'     techl = 'GESPERRTERKUNDE'                texts = 'Gesp. Kunde'         textl = 'Gesperrter Kunde'               emphs = 'C200' shide = 'X' spgrp = 5 isgrp = ' '  grpx1 = ' '       ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'MATNR'     techl = 'MATERIAL'                       texts = 'Material'            textl = 'Material'                       emphs = 'C200' shide = ' ' spgrp = 4 isgrp = '42' grpx1 = 'MAKTX'   ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'MAKTX'     techl = 'MATERIALNAME'                   texts = 'Materialname'        textl = 'Materialname'                   emphs = 'C200' shide = 'X' spgrp = 4 isgrp = ' '  grpx1 = ' '       ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'BWTAR'     techl = 'BEWERTUNGSTYP'                  texts = 'Bewertungstyp'       textl = 'Bewertungstyp'                  emphs = 'C200' shide = 'X' spgrp = 4 isgrp = '43' grpx1 = ' '       ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'CHARG'     techl = 'CHARGENNUMMER'                  texts = 'Chargennummer'       textl = 'Chargennummer'                  emphs = 'C200' shide = 'X' spgrp = 4 isgrp = '44' grpx1 = ' '       ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'MATKL'     techl = 'MATERIALGRUPPE'                 texts = 'Mat.Gruppe'          textl = 'Materialgruppe'                 emphs = 'C200' shide = 'X' spgrp = 4 isgrp = '45' grpx1 = 'WGBEZ'   ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'WGBEZ'     techl = 'MATERIALGRUPPEBEZEICHNUNG'      texts = 'Mat.Gr.Def.'         textl = 'Materialgruppe Bezeichnung'     emphs = 'C200' shide = 'X' spgrp = 4 isgrp = ' '  grpx1 = ' '       ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'MTART'     techl = 'MATERIALTYP'                    texts = 'Mat.Typ'             textl = 'Materialtyp'                    emphs = 'C200' shide = 'X' spgrp = 4 isgrp = '46' grpx1 = 'MTBEZ'   ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'MTBEZ'     techl = 'MATERIALTYPBEZEICHNUNG'         texts = 'Mat.Typ Def.'        textl = 'Materialtyp Bezeichnung'        emphs = 'C200' shide = 'X' spgrp = 4 isgrp = ' '  grpx1 = ' '       ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'KTGRM'     techl = 'MATERIALBUCHUNGSGRUPPE'         texts = 'Mat.Buch.Gr.'        textl = 'Materialbuchungsgruppe'         emphs = 'C200' shide = 'X' spgrp = 4 isgrp = '47' grpx1 = 'KTGRM_X' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'KTGRM_X'   techl = 'MATERIALBUCHUNGSGRUPPEBEZEICH'  texts = 'Mat.Buch.Gr.Bez.'    textl = 'Materialbuchungsgruppe Bez.'    emphs = 'C200' shide = 'X' spgrp = 4 isgrp = ' '  grpx1 = ' '       ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'MVGR1'     techl = 'MATERIALGRUPPE1'                texts = 'Mat.Gr.1'            textl = 'Materialgruppe 1'               emphs = 'C200' shide = 'X' spgrp = 4 isgrp = '48' grpx1 = 'MVGR1_X' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'MVGR1_X'   techl = 'MATERIALGRUPPE1BEZEICHNUNG'     texts = 'Mat.Gr.1 Bez.'       textl = 'Materialgruppe 1 Bezeichnung'   emphs = 'C200' shide = 'X' spgrp = 4 isgrp = ' '  grpx1 = ' '       ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'MVGR2'     techl = 'MATERIALGRUPPE2'                texts = 'Mat.Gr.2'            textl = 'Materialgruppe 2'               emphs = 'C200' shide = 'X' spgrp = 4 isgrp = '49' grpx1 = 'MVGR2_X' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'MVGR2_X'   techl = 'MATERIALGRUPPE2BEZEICHNUNG'     texts = 'Mat.Gr.2 Bez.'       textl = 'Materialgruppe 2 Bezeichnung'   emphs = 'C200' shide = 'X' spgrp = 4 isgrp = ' '  grpx1 = ' '       ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'MVGR3'     techl = 'MATERIALGRUPPE3'                texts = 'Mat.Gr.3'            textl = 'Materialgruppe 3'               emphs = 'C200' shide = 'X' spgrp = 4 isgrp = '50' grpx1 = 'MVGR3_X' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'MVGR3_X'   techl = 'MATERIALGRUPPE3BEZEICHNUNG'     texts = 'Mat.Gr.3 Bez.'       textl = 'Materialgruppe 3 Bezeichnung'   emphs = 'C200' shide = 'X' spgrp = 4 isgrp = ' '  grpx1 = ' '       ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'MVGR4'     techl = 'MATERIALGRUPPE4'                texts = 'Mat.Gr.4'            textl = 'Materialgruppe 4'               emphs = 'C200' shide = 'X' spgrp = 4 isgrp = '51' grpx1 = 'MVGR4_X' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'MVGR4_X'   techl = 'MATERIALGRUPPE4BEZEICHNUNG'     texts = 'Mat.Gr.4 Bez.'       textl = 'Materialgruppe 4 Bezeichnung'   emphs = 'C200' shide = 'X' spgrp = 4 isgrp = ' '  grpx1 = ' '       ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'MVGR5'     techl = 'MATERIALGRUPPE5'                texts = 'Mat.Gr.5'            textl = 'Materialgruppe 5'               emphs = 'C200' shide = 'X' spgrp = 4 isgrp = '52' grpx1 = 'MVGR5_X' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'MVGR5_X'   techl = 'MATERIALGRUPPE5BEZEICHNUNG'     texts = 'Mat.Gr.5 Bez.'       textl = 'Materialgruppe 5 Bezeichnung'   emphs = 'C200' shide = 'X' spgrp = 4 isgrp = ' '  grpx1 = ' '       ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'VSTEL'     techl = 'VERSANDSTELLE'                  texts = 'Versandstelle'       textl = 'Versandstelle'                  emphs = 'C200' shide = 'X' spgrp = 2 isgrp = '53' grpx1 = 'VSTEL_X' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'VSTEL_X'   techl = 'VERSANDSTELLEBEZEICHNUNG'       texts = 'Versandstelle Bez.'  textl = 'Versandstelle Bezeichnung'      emphs = 'C200' shide = 'X' spgrp = 2 isgrp = ' '  grpx1 = ' '       ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'WERKS'     techl = 'VERSANDWERK'                    texts = 'Werke'               textl = 'Versandwerk'                    emphs = 'C200' shide = 'X' spgrp = 2 isgrp = '54' grpx1 = 'WERKS_X' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'WERKS_X'   techl = 'VERSANDWERKBEZEICHNUNG'         texts = 'Werke Bez.'          textl = 'Versandwerk Bezeichnung'        emphs = 'C200' shide = 'X' spgrp = 2 isgrp = ' '  grpx1 = ' '       ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'LGORT'     techl = 'VERSANDLAGERORT'                texts = 'Lagerort'            textl = 'Versandlagerort'                emphs = 'C200' shide = 'X' spgrp = 2 isgrp = '55' grpx1 = 'LGORT_X' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'LGORT_X'   techl = 'VERSANDLAGERORTBEZEICHNUNG'     texts = 'Lagerort Bez.'       textl = 'Versandlagerort Bezeichnung'    emphs = 'C200' shide = 'X' spgrp = 2 isgrp = ' '  grpx1 = ' '       ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'INCO1'     techl = 'INCOTERMS'                      texts = 'Incoterms'           textl = 'Incoterms'                      emphs = 'C200' shide = 'X' spgrp = 1 isgrp = '56' grpx1 = ' '       ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'INCO2'     techl = 'INCOTERMSORT'                   texts = 'Incoterms-Ort'       textl = 'Incoterms-Ort'                  emphs = 'C200' shide = 'X' spgrp = 1 isgrp = ' '  grpx1 = ' '       ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'WE_CITY'   techl = 'EMPFANGERSSTADT'                texts = 'Empf.Stadt'          textl = 'Empfängersstadt'                emphs = 'C200' shide = 'X' spgrp = 2 isgrp = ' '  grpx1 = ' '       ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'WE_PSTC'   techl = 'EMPFANGERSPOSTLEITZAHL'         texts = 'Empf.PLZ'            textl = 'Empfängerspostleitzahl'         emphs = 'C200' shide = 'X' spgrp = 2 isgrp = ' '  grpx1 = ' '       ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'WE_REGI'   techl = 'EMPFANGERSREGION'               texts = 'Empf.Region'         textl = 'Empfängersregion'               emphs = 'C200' shide = 'X' spgrp = 2 isgrp = '57' grpx1 = 'WE_REGN' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'WE_REGN'   techl = 'EMPFANGERSREGIONNAME'           texts = 'Empf.Regionname'     textl = 'Empfängersregionname'           emphs = 'C200' shide = 'X' spgrp = 2 isgrp = ' '  grpx1 = ' '       ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'WE_CNTY'   techl = 'EMPFANGERSLAND'                 texts = 'Empf.Land'           textl = 'Empfängersland'                 emphs = 'C200' shide = 'X' spgrp = 2 isgrp = '58' grpx1 = ' '       ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'WE_ADRS'   techl = 'EMPFANGERSADRESSE'              texts = 'Empf.Adresse'        textl = 'Empfängersadresse'              emphs = 'C200' shide = 'X' spgrp = 2 isgrp = ' '  grpx1 = ' '       ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'TM_QUAN'   techl = 'TERMINMENGE'                    texts = 'Terminmenge'         textl = 'Terminmenge'                    emphs = 'C700' shide = ' ' spgrp = 6 cumty = 'T' slynr = '01' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'LF_QUAN'   techl = 'LIEFERMENGE'                    texts = 'Liefermenge'         textl = 'Liefermenge'                    emphs = 'C700' shide = 'X' spgrp = 6 cumty = 'T' slynr = '02' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'LF_BQUA'   techl = 'NICHTGELIEFERTEMENGE'           texts = 'Nicht gel.Menge '    textl = 'Nicht gelieferte Menge'         emphs = 'C700' shide = ' ' spgrp = 6 cumty = 'T' slynr = '03' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'WA_QUAN'   techl = 'WARENAUSGANGSMENGE'             texts = 'WA Menge'            textl = 'Warenausgangsmenge'             emphs = 'C700' shide = 'X' spgrp = 6 cumty = 'T' slynr = '04' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'WA_BQUA'   techl = 'FEHLENDEWARENAUSGANGSMENGE'     texts = 'Fehl. WA Menge'      textl = 'Fehlende Warenausgangsmenge'    emphs = 'C700' shide = 'X' spgrp = 6 cumty = 'T' slynr = '05' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'FK_QUAN'   techl = 'INRECHNUNGMENGE'                texts = 'IR-Menge'            textl = 'In Rechnung Menge'              emphs = 'C700' shide = ' ' spgrp = 6 cumty = 'T' slynr = '06' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'FK_BQUA'   techl = 'NICHTINRECHNUNGMENGE'           texts = 'NIR-Menge'           textl = 'Nicht in Rechnung Menge'        emphs = 'C700' shide = 'X' spgrp = 6 cumty = 'T' slynr = '07' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'FK_WQUA'   techl = 'AUSSTEHENDERECHNUNGSMENGE'      texts = 'Ausst. R-Menge'      textl = 'Ausstehende Rechnungsmenge'     emphs = 'C700' shide = 'X' spgrp = 6 cumty = 'T' slynr = '08' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'VRKME'     techl = 'BERICHTSSMENGEEINHEIT'          texts = 'Einheit'             textl = 'Einheit'                        emphs = 'C700' shide = 'X' spgrp = 1 isgrp = '59' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'CVRKM'     techl = 'VERKAUFSMENGEEINHEIT'           texts = 'A-Einheit'           textl = 'Auftragseinheit'                emphs = 'C700' shide = ' ' spgrp = 1 isgrp = '60' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'NT_PRIC'   techl = 'VERKAUFSPREIS'                  texts = 'Verkaufspreis'       textl = 'Verkaufspreis'                  emphs = 'C100' shide = ' ' spgrp = 7 cumty = 'W' slynr = '09' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'NT_TXPR'   techl = 'VERKAUFSPREISINKLSTEUERN'       texts = 'VP inkl.MwSt.'       textl = 'Verkaufspreis inkl. Steuern'    emphs = 'C100' shide = 'X' spgrp = 7 cumty = 'W' slynr = '10' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'TX_AMNT'   techl = 'STEUERBETRAG'                   texts = 'Steuerbetrag'        textl = 'Steuerbetrag'                   emphs = 'C400' shide = 'X' spgrp = 8 cumty = 'T' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'TM_AMNT'   techl = 'TERMINBETRAG'                   texts = 'Terminbetrag'        textl = 'Termin Betrag'                  emphs = 'C300' shide = ' ' spgrp = 8 cumty = 'T' slynr = '11' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'LF_AMNT'   techl = 'GELIEFERTERBETRAG'              texts = 'Gel. Betrag'         textl = 'Gelieferter Betrag'             emphs = 'C300' shide = 'X' spgrp = 8 cumty = 'T' slynr = '12' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'LF_BAMN'   techl = 'NICHTGELIEFERTERBETRAG'         texts = 'NG-Betrag'           textl = 'Nicht Gelieferter Betrag'       emphs = 'C300' shide = 'X' spgrp = 8 cumty = 'T' slynr = '13' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'FK_WAMN'   techl = 'AUSSTEHENDERRECHNUNGSBETRAG'    texts = 'Ausst. R-Betrag'     textl = 'Ausstehender Rechnungsbetrag'   emphs = 'C300' shide = 'X' spgrp = 8 cumty = 'T' slynr = '14' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'FK_BAMN'   techl = 'NICHTINRECHNUNGBETRAG'          texts = 'NIR-Betrag'          textl = 'Nicht in Rechnung Betrag'       emphs = 'C300' shide = 'X' spgrp = 8 cumty = 'T' slynr = '15' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'FK_AMNT'   techl = 'INRECHNUNGBETRAG'               texts = 'IR-Betrag'           textl = 'In Rechnung Betrag'             emphs = 'C300' shide = ' ' spgrp = 8 cumty = 'T' slynr = '16' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'FK_TOTL'   techl = 'STEUERINKLINRECHNUNGBETRAG'     texts = 'IR-Betrag in.MwSt.'  textl = 'Steuerinkl. in Rechnung Betrag' emphs = 'C300' shide = 'X' spgrp = 8 cumty = 'T' slynr = '17' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'AG_AMNT'   techl = 'AUSGEGLICHENERBETRAG'           texts = 'Ausgeglich. Betrag'  textl = 'Ausgeglichener Betrag'          emphs = 'C300' shide = 'X' spgrp = 8 cumty = 'T' slynr = '18' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'AG_BAMN'   techl = 'NICHTAUSGEGLICHENERBETRAG'      texts = 'NI-Ausgegl.Betrag'   textl = 'Nicht Ausgeglichener Betrag'    emphs = 'C300' shide = 'X' spgrp = 8 cumty = 'T' slynr = '19' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'WAERK'     techl = 'BERICHTSSWAHRUNG'               texts = 'Währung'             textl = 'Währung'                        emphs = 'C300' shide = ' ' spgrp = 1 isgrp = '61' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'CWAER'     techl = 'AUFTRAGSWAHRUNG'                texts = 'A-Währung'           textl = 'Auftragswährung'                emphs = 'C300' shide = 'X' spgrp = 1 isgrp = '62' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'NT_PRIC_2' techl = 'VERKAUFSPREIS'                  texts = 'Verkaufspreis'       textl = 'Verkaufspreis'                  emphs = 'C100' shide = 'X' spgrp = 7 cumty = 'W'  ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'NT_TXPR_2' techl = 'STEUERINKLVERKAUFSPREIS'        texts = 'VP inkl.MwSt'        textl = 'Steuerinklusiver Verkaufspreis' emphs = 'C100' shide = 'X' spgrp = 7 cumty = 'W'  ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'FK_AMNT_2' techl = 'INRECHNUNGBETRAG'               texts = 'IR-Betrag'           textl = 'In Rechnung Betrag'             emphs = 'C300' shide = 'X' spgrp = 8 cumty = 'T'  ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'FK_TOTL_2' techl = 'STEUERINKLINRECHNUNGBETRAG'     texts = 'IR-Betrag in.MwSt.'  textl = 'Steuerinkl. in Rechnung Betrag' emphs = 'C300' shide = 'X' spgrp = 8 cumty = 'T'  ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'WAERK_2'   techl = 'BERICHTSWAHRUNG2'               texts = 'Währung (2)'         textl = 'Währung (2)'                    emphs = 'C300' shide = 'X' spgrp = 1 ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'EC_AMNT'   techl = 'WECHSELKURSDIFFERENZ'           texts = 'WexK Diff.'          textl = 'Wechselkursdifferenz'           emphs = 'C400' shide = 'X' spgrp = 8 cumty = 'T' slynr = '20' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'EC_TAMN'   techl = 'STEUERINKLWECHSELKURSDIFF.'     texts = 'WexK Diff. in.MwSt.' textl = 'Steuerinkl. Wechselkursdiff.'   emphs = 'C400' shide = 'X' spgrp = 8 cumty = 'T' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'VP_QUAN'   techl = 'AUFTRAGSPOSITIONSMENGE'         texts = 'Auftragspos.menge '  textl = 'Auftragspositionsmenge'         emphs = 'C700' shide = 'X' spgrp = 6 cumty = ' ' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'ZTAGE'     techl = 'ZAHLUNGSKONDITIONENTAGANZAHL'   texts = 'ZK-Tage'             textl = 'Zahlungskonditionen Taganzahl'  emphs = 'C100' shide = 'X' spgrp = 1 cumty = 'A' slynr = '21' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'GBSTA'     techl = 'GESAMTSTATUS'                   texts = 'Gesamtstatus'        textl = 'Gesamtstatus'                   emphs = 'C500' shide = 'X' spgrp = 1 isgrp = '63' grpx1 = 'GBSTA_X' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'GBSTA_D'   techl = 'GESAMTSTATUSBEZEICHNUNG'        texts = 'Gesamtstatus Bez.'   textl = 'Gesamtstatus Bezeichnung'       emphs = 'C500' shide = 'X' spgrp = 1 isgrp = ' ' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'AUGRU'     techl = 'AUFTRAGSGRUND'                  texts = 'Auftragsgrund'       textl = 'Auftragsgrund'                  emphs = 'C700' shide = 'X' spgrp = 1 isgrp = '64' cumty = ' ' grpx1 = 'AUGRU_X' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'AUGRU_X'   techl = 'AUFTRAGSGRUNDBEZEICHNUNG'       texts = 'Auftragsgrund Bez.'  textl = 'Auftragsgrund Bezeichnung'      emphs = 'C700' shide = 'X' spgrp = 1 isgrp = ' '  cumty = ' ' grpx1 = ' '  ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'ABGRU'     techl = 'RUCKGABEGRUND'                  texts = 'Rückgabegrund'       textl = 'Rückgabegrund'                  emphs = 'C700' shide = 'X' spgrp = 1 isgrp = '65' cumty = ' ' grpx1 = 'ABGRU_X' ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'ABGRU_X'   techl = 'RUCKGABEGRUNDBEZEICHNUNG'       texts = 'Rückgabegrund Bez.'  textl = 'Rückgabegrund Bezeichnung'      emphs = 'C700' shide = 'X' spgrp = 1 isgrp = ' '  cumty = ' ' grpx1 = ' '  ) TO gt_fieldlist.
  APPEND VALUE #( fname = 'COUNT'     techl = 'DATENSATZANZAHL'                texts = '#'                   textl = 'Datensatzanzahl'                emphs = 'C700' shide = 'X' spgrp = 1 isgrp = ' '  cumty = 'T' slynr = '22' ) TO gt_fieldlist.

ENDFORM.



FORM set_text_tr.

  CLEAR gt_textlist[].

  APPEND VALUE #( sym = 'A01'	text = 'Seçim aralığını sınırlandırın.' ) TO gt_textlist.
  APPEND VALUE #( sym = 'A02' text = 'Oluşacak kolon sayısı maksimum değeri aşıyor.' ) TO gt_textlist.
  APPEND VALUE #( sym = 'A03' text = 'Oluşacak sayfa sayısı maksimum değeri aşıyor.' ) TO gt_textlist.
  APPEND VALUE #( sym = 'A04' text = 'Ekli dosya 20 MB''dan büyük. E-posta gönderilmedi.' ) TO gt_textlist.
  APPEND VALUE #( sym = 'A05' text = 'E-Posta adresi hatalı :' ) TO gt_textlist.
  APPEND VALUE #( sym = 'A06' text = 'Lütfen ekli dosyayı inceleyiniz.' ) TO gt_textlist.
  APPEND VALUE #( sym = 'A07' text = 'Sistem dilini değiştirmek istiyor musunuz ?' ) TO gt_textlist.
  APPEND VALUE #( sym = 'A08' text = 'E-posta gönderildi.' ) TO gt_textlist.

  APPEND VALUE #( sym = 'A10' text = 'Alan tipleri uyumlu değil !' ) TO gt_textlist.
  APPEND VALUE #( sym = 'A11' text = 'Tarih geçerli değil. Yıl ay gün ardışık rakam girin !' ) TO gt_textlist.
  APPEND VALUE #( sym = 'A12' text = 'Saat geçerli değil. Saat dakika saniye ardışık rakam girin !' ) TO gt_textlist.
  APPEND VALUE #( sym = 'A13' text = 'Nümerik değer girin !' ) TO gt_textlist.
  APPEND VALUE #( sym = 'A14' text = 'Girilebilecek maksimum karakter sayısı : ' ) TO gt_textlist.

  APPEND VALUE #( sym = 'B01' text = 'Seçimleri sıfırla' ) TO gt_textlist.
  APPEND VALUE #( sym = 'B02' text = 'Dili Değiştir' ) TO gt_textlist.
  APPEND VALUE #( sym = 'B03' text = 'Alan seçimi' ) TO gt_textlist.
  APPEND VALUE #( sym = 'B04' text = 'Seçim' ) TO gt_textlist.
  APPEND VALUE #( sym = 'B05' text = 'Evet' ) TO gt_textlist.
  APPEND VALUE #( sym = 'B06' text = 'Hayır' ) TO gt_textlist.
  APPEND VALUE #( sym = 'B07' text = 'İşlemler' ) TO gt_textlist.
  APPEND VALUE #( sym = 'B08' text = 'Ara toplamlar' ) TO gt_textlist.
  APPEND VALUE #( sym = 'C01' text = 'Dil Seçimi' ) TO gt_textlist.
  APPEND VALUE #( sym = 'C02' text = 'Varyant Açıklaması' ) TO gt_textlist.
  APPEND VALUE #( sym = 'DO1' text = 'Sipariş Numarası' ) TO gt_textlist.
  APPEND VALUE #( sym = 'DO2' text = 'Yaratma Tarihi' ) TO gt_textlist.
  APPEND VALUE #( sym = 'DO3' text = 'Sipariş Tarihi' ) TO gt_textlist.
  APPEND VALUE #( sym = 'DO4' text = 'Teslimat Tarihi' ) TO gt_textlist.
  APPEND VALUE #( sym = 'DO5' text = 'Fatura Tarihi' ) TO gt_textlist.
  APPEND VALUE #( sym = 'DO6' text = 'Fiyatlandırma Tarihi' ) TO gt_textlist.
  APPEND VALUE #( sym = 'DO7' text = 'Denkleştirme Tarihi' ) TO gt_textlist.
  APPEND VALUE #( sym = 'DO8' text = 'Günün Tarihi' ) TO gt_textlist.
  APPEND VALUE #( sym = 'DS0' text = 'CL Tablo' ) TO gt_textlist.
  APPEND VALUE #( sym = 'DS1' text = 'Tablo' ) TO gt_textlist.
  APPEND VALUE #( sym = 'DS2' text = 'Liste' ) TO gt_textlist.
  APPEND VALUE #( sym = 'DS3' text = 'Ağaç' ) TO gt_textlist.
  APPEND VALUE #( sym = 'DSZ' text = 'Demo seçimi' ) TO gt_textlist.
  APPEND VALUE #( sym = 'DT1' text = 'Sipariş kalemleri' ) TO gt_textlist.
  APPEND VALUE #( sym = 'DT2' text = 'Teslimat ve Fatura' ) TO gt_textlist.
  APPEND VALUE #( sym = 'L11' text = 'Kaynak' ) TO gt_textlist.
  APPEND VALUE #( sym = 'L12' text = 'Seçenekler' ) TO gt_textlist.
  APPEND VALUE #( sym = 'L13' text = 'Grup' ) TO gt_textlist.
  APPEND VALUE #( sym = 'L14' text = 'Düzen' ) TO gt_textlist.
  APPEND VALUE #( sym = 'L15' text = 'Aktarım' ) TO gt_textlist.
  APPEND VALUE #( sym = 'L16' text = 'Filtre' ) TO gt_textlist.
  APPEND VALUE #( sym = 'L21' text = 'Tarih' ) TO gt_textlist.
  APPEND VALUE #( sym = 'L22' text = 'Belge' ) TO gt_textlist.
  APPEND VALUE #( sym = 'L23' text = 'Durum' ) TO gt_textlist.
  APPEND VALUE #( sym = 'L31' text = 'Sipariş' ) TO gt_textlist.
  APPEND VALUE #( sym = 'L32' text = 'Koşul' ) TO gt_textlist.
  APPEND VALUE #( sym = 'L33' text = 'Muhatap' ) TO gt_textlist.
  APPEND VALUE #( sym = 'L34' text = 'Lokasyon' ) TO gt_textlist.
  APPEND VALUE #( sym = 'L41' text = 'Malzeme' ) TO gt_textlist.
  APPEND VALUE #( sym = 'M01' text = 'SIP' ) TO gt_textlist.
  APPEND VALUE #( sym = 'M02' text = 'TSL' ) TO gt_textlist.
  APPEND VALUE #( sym = 'M03' text = 'FAT' ) TO gt_textlist.
  APPEND VALUE #( sym = 'M04' text = 'FYT' ) TO gt_textlist.
  APPEND VALUE #( sym = 'M05' text = 'DNK' ) TO gt_textlist.
  APPEND VALUE #( sym = 'M06' text = 'GUN' ) TO gt_textlist.
  APPEND VALUE #( sym = 'L42' text = 'Malzeme Grubu' ) TO gt_textlist.
  APPEND VALUE #( sym = 'OCD' text = 'Yaratma tarihi' ) TO gt_textlist.
  APPEND VALUE #( sym = 'OCR' text = 'Yaratan' ) TO gt_textlist.
  APPEND VALUE #( sym = 'P01' text = '01-OCAK' ) TO gt_textlist.
  APPEND VALUE #( sym = 'P02' text = '02-ŞUBAT' ) TO gt_textlist.
  APPEND VALUE #( sym = 'P03' text = '03-MART' ) TO gt_textlist.
  APPEND VALUE #( sym = 'P04' text = '04-NİSAN' ) TO gt_textlist.
  APPEND VALUE #( sym = 'P05' text = '05-MAYIS' ) TO gt_textlist.
  APPEND VALUE #( sym = 'P06' text = '06-HAZİRAN' ) TO gt_textlist.
  APPEND VALUE #( sym = 'P07' text = '07-TEMMUZ' ) TO gt_textlist.
  APPEND VALUE #( sym = 'P08' text = '08-AĞUSTOS' ) TO gt_textlist.
  APPEND VALUE #( sym = 'P09' text = '09-EYLÜL' ) TO gt_textlist.
  APPEND VALUE #( sym = 'P10' text = '10-EKİM' ) TO gt_textlist.
  APPEND VALUE #( sym = 'P11' text = '11-KASIM' ) TO gt_textlist.
  APPEND VALUE #( sym = 'P12' text = '12-ARALIK' ) TO gt_textlist.
  APPEND VALUE #( sym = 'PAD' text = 'Büyükten küçüğe' ) TO gt_textlist.
  APPEND VALUE #( sym = 'PAP' text = 'Ara toplamlar' ) TO gt_textlist.
  APPEND VALUE #( sym = 'PAT' text = 'Genel toplam' ) TO gt_textlist.
  APPEND VALUE #( sym = 'PAS' text = 'Onay durumu' ) TO gt_textlist.
  APPEND VALUE #( sym = 'PBD' text = 'Varyant açıklamasını ekle' ) TO gt_textlist.
  APPEND VALUE #( sym = 'PBO' text = 'Bakiye satırları' ) TO gt_textlist.
  APPEND VALUE #( sym = 'PC1' text = 'Kur tarihi' ) TO gt_textlist.
  APPEND VALUE #( sym = 'PC2' text = 'Kur tarihi' ) TO gt_textlist.
  APPEND VALUE #( sym = 'PCD' text = 'Sabit ondalıklı rakamlar - birim referansı yok' ) TO gt_textlist.
  APPEND VALUE #( sym = 'PCL' text = 'Tanımlar kod ile başlasın' ) TO gt_textlist.
  APPEND VALUE #( sym = 'PCO' text = 'Kolonları biçimlendir' ) TO gt_textlist.
  APPEND VALUE #( sym = 'PCS' text = 'Büyük/küçük harf duyarlı' ) TO gt_textlist.
  APPEND VALUE #( sym = 'PCP' text = 'Birim fiyatları dönüştür' ) TO gt_textlist.
  APPEND VALUE #( sym = 'PDD' text = 'Detay düzeni' ) TO gt_textlist.
  APPEND VALUE #( sym = 'PDM' text = 'Düzen' ) TO gt_textlist.
  APPEND VALUE #( sym = 'PDR' text = 'Raporu görüntüle' ) TO gt_textlist.
  APPEND VALUE #( sym = 'PEX' text = 'Excel''e kaydet / Dosya adı' ) TO gt_textlist.
  APPEND VALUE #( sym = 'PLO' text = 'Tanım alanları' ) TO gt_textlist.
  APPEND VALUE #( sym = 'PML' text = 'E-Posta gönder -> Alıcı' ) TO gt_textlist.
  APPEND VALUE #( sym = 'PNL' text = 'Tanımlar yok' ) TO gt_textlist.
  APPEND VALUE #( sym = 'PZL' text = 'Grup başlıkları sadece tanım ile' ) TO gt_textlist.
  APPEND VALUE #( sym = 'POA' text = 'Onaylı' ) TO gt_textlist.
  APPEND VALUE #( sym = 'POC' text = 'Sıralanan eş değerleri birleştirme' ) TO gt_textlist.
  APPEND VALUE #( sym = 'PON' text = 'Onay bekleyen' ) TO gt_textlist.
  APPEND VALUE #( sym = 'POO' text = 'Açık siparişler' ) TO gt_textlist.
  APPEND VALUE #( sym = 'POT' text = 'Sipariş tipi' ) TO gt_textlist.
  APPEND VALUE #( sym = 'POX' text = 'Excel dosyayı aç' ) TO gt_textlist.
  APPEND VALUE #( sym = 'PRV' text = 'Rapor ölçü birimi' ) TO gt_textlist.
  APPEND VALUE #( sym = 'PSB' text = '    E-Posta konusu' ) TO gt_textlist.
  APPEND VALUE #( sym = 'PSR' text = 'Sıralama' ) TO gt_textlist.
  APPEND VALUE #( sym = 'PST' text = 'Durumu' ) TO gt_textlist.
  APPEND VALUE #( sym = 'PSV' text = 'Seçim varyantı' ) TO gt_textlist.
  APPEND VALUE #( sym = 'PTC' text = 'Başlıklarda teknik adları kullan' ) TO gt_textlist.
  APPEND VALUE #( sym = 'PTP' text = 'Termin tipi' ) TO gt_textlist.
  APPEND VALUE #( sym = 'PTR' text = 'Gösterim yapısı' ) TO gt_textlist.
  APPEND VALUE #( sym = 'PTW' text = 'Belge birimini referans olarak kullan' ) TO gt_textlist.
  APPEND VALUE #( sym = 'PW1' text = 'Rapor para birimi 1' ) TO gt_textlist.
  APPEND VALUE #( sym = 'PW2' text = 'Rapor para birimi 2' ) TO gt_textlist.
  APPEND VALUE #( sym = 'PWA' text = 'Ağırlıklı ortalama hesapla' ) TO gt_textlist.
  APPEND VALUE #( sym = 'PWS' text = 'Çalışma sayfaları oluştur' ) TO gt_textlist.
  APPEND VALUE #( sym = 'PYV' text = 'Son grup kolonlarda' ) TO gt_textlist.
  APPEND VALUE #( sym = 'PHL' text = 'Ağaç görünümünde kapalı' ) TO gt_textlist.
  APPEND VALUE #( sym = 'PZR' text = 'Sıfır değerleri görüntüleme' ) TO gt_textlist.
  APPEND VALUE #( sym = 'Q01' text = '1.ÇEYREK' ) TO gt_textlist.
  APPEND VALUE #( sym = 'Q02' text = '2.ÇEYREK' ) TO gt_textlist.
  APPEND VALUE #( sym = 'Q03' text = '3.ÇEYREK' ) TO gt_textlist.
  APPEND VALUE #( sym = 'Q04' text = '4.ÇEYREK' ) TO gt_textlist.
  APPEND VALUE #( sym = 'R01' text = 'Gruplama alanı 1' ) TO gt_textlist.
  APPEND VALUE #( sym = 'R02' text = 'Gruplama alanı 2' ) TO gt_textlist.
  APPEND VALUE #( sym = 'R03' text = 'Gruplama alanı 3' ) TO gt_textlist.
  APPEND VALUE #( sym = 'R04' text = 'Gruplama alanı 4' ) TO gt_textlist.
  APPEND VALUE #( sym = 'R05' text = 'Gruplama alanı 5' ) TO gt_textlist.
  APPEND VALUE #( sym = 'R06' text = 'Gruplama alanı 6' ) TO gt_textlist.
  APPEND VALUE #( sym = 'R07' text = 'Gruplama alanı 7' ) TO gt_textlist.
  APPEND VALUE #( sym = 'R08' text = 'Gruplama alanı 8' ) TO gt_textlist.
  APPEND VALUE #( sym = 'R09' text = 'Gruplama alanı 9' ) TO gt_textlist.
  APPEND VALUE #( sym = 'R10' text = 'Gruplama alanı 10' ) TO gt_textlist.
  APPEND VALUE #( sym = 'R11' text = 'Gruplama alanı 11' ) TO gt_textlist.
  APPEND VALUE #( sym = 'R12' text = 'Gruplama alanı 12' ) TO gt_textlist.
  APPEND VALUE #( sym = 'S01' text = 'İptal Edil' ) TO gt_textlist.
  APPEND VALUE #( sym = 'S02' text = 'Muhasebeleştirilmedi' ) TO gt_textlist.
  APPEND VALUE #( sym = 'S03' text = 'Mal Çıkışı Bekliyor' ) TO gt_textlist.
  APPEND VALUE #( sym = 'S04' text = 'Ödendi' ) TO gt_textlist.
  APPEND VALUE #( sym = 'S05' text = 'Kısmen Ödendi' ) TO gt_textlist.
  APPEND VALUE #( sym = 'S06' text = 'Faturalandı' ) TO gt_textlist.
  APPEND VALUE #( sym = 'S07' text = 'Kısmen Faturalandı' ) TO gt_textlist.
  APPEND VALUE #( sym = 'S08' text = 'Faturalama Bekliyor' ) TO gt_textlist.
  APPEND VALUE #( sym = 'S09' text = 'Teslim Edildi' ) TO gt_textlist.
  APPEND VALUE #( sym = 'S10' text = 'Kısmen Teslim Edildi' ) TO gt_textlist.
  APPEND VALUE #( sym = 'S11' text = 'Teslimat Bekliyor' ) TO gt_textlist.
  APPEND VALUE #( sym = 'SAA' text = 'Satış sipariş tipi' ) TO gt_textlist.
  APPEND VALUE #( sym = 'SAB' text = 'Denkleştirme belgesi' ) TO gt_textlist.
  APPEND VALUE #( sym = 'SAD' text = 'Sipariş tarihi' ) TO gt_textlist.
  APPEND VALUE #( sym = 'SAU' text = 'Sipariş nedeni' ) TO gt_textlist.
  APPEND VALUE #( sym = 'SAG' text = 'Ret nedeni' ) TO gt_textlist.
  APPEND VALUE #( sym = 'SBS' text = 'Teyit Durumu' ) TO gt_textlist.
  APPEND VALUE #( sym = 'SLS' text = 'Teslimat Durumu' ) TO gt_textlist.
  APPEND VALUE #( sym = 'SCD' text = 'Yaratma tarihi' ) TO gt_textlist.
  APPEND VALUE #( sym = 'SCR' text = 'Yaratan' ) TO gt_textlist.
  APPEND VALUE #( sym = 'SFB' text = 'Fatura belgesi' ) TO gt_textlist.
  APPEND VALUE #( sym = 'SFS' text = 'Faturalama durumu' ) TO gt_textlist.
  APPEND VALUE #( sym = 'SLB' text = 'Teslimat belgesi' ) TO gt_textlist.
  APPEND VALUE #( sym = 'SMB' text = 'Malzeme belgesi' ) TO gt_textlist.
  APPEND VALUE #( sym = 'SNB' text = 'Muhasebe belgesi' ) TO gt_textlist.
  APPEND VALUE #( sym = 'SOB' text = 'Sipariş numarası' ) TO gt_textlist.
  APPEND VALUE #( sym = 'SOP' text = 'Sipariş kalemi' ) TO gt_textlist.
  APPEND VALUE #( sym = 'SSK' text = 'Müşteri referansı' ) TO gt_textlist.
  APPEND VALUE #( sym = 'SVB' text = 'Satış ofisi' ) TO gt_textlist.
  APPEND VALUE #( sym = 'SVT' text = 'Referans belge tipi' ) TO gt_textlist.
  APPEND VALUE #( sym = 'SWS' text = 'Mal çıkış durumu' ) TO gt_textlist.
  APPEND VALUE #( sym = 'TFB' text = 'Fatura Bakiye' ) TO gt_textlist.
  APPEND VALUE #( sym = 'TFK' text = 'Fatura' ) TO gt_textlist.
  APPEND VALUE #( sym = 'TIS' text = 'Kalemler' ) TO gt_textlist.
  APPEND VALUE #( sym = 'TLB' text = 'Teslimat Bakiye' ) TO gt_textlist.
  APPEND VALUE #( sym = 'TLF' text = 'Teslimat' ) TO gt_textlist.
  APPEND VALUE #( sym = 'TLS' text = 'Teslimatlar' ) TO gt_textlist.
  APPEND VALUE #( sym = 'TOI' text = 'Sipariş Kalemi' ) TO gt_textlist.
  APPEND VALUE #( sym = 'TSO' text = 'Siparişi görüntüle' ) TO gt_textlist.
  APPEND VALUE #( sym = 'TT1' text = '(Teslim Tar. Kur)' ) TO gt_textlist.
  APPEND VALUE #( sym = 'TT2' text = '(Fatura Tar. Kur)' ) TO gt_textlist.
  APPEND VALUE #( sym = 'TT3' text = '(Güncel Kur)' ) TO gt_textlist.
  APPEND VALUE #( sym = 'TT4' text = '(Kur Tekilleştirilmedi !!!)' ) TO gt_textlist.
  APPEND VALUE #( sym = 'TT5' text = '(Farklı Ölçü Birimleri !!!)' ) TO gt_textlist.
  APPEND VALUE #( sym = 'TT6' text = 'Gün.Kur' ) TO gt_textlist.
  APPEND VALUE #( sym = 'TW0' text = 'Yüzde' ) TO gt_textlist.
  APPEND VALUE #( sym = 'TW1' text = 'Ort.' ) TO gt_textlist.
  APPEND VALUE #( sym = 'TW2' text = 'Ortalama' ) TO gt_textlist.
  APPEND VALUE #( sym = 'TW3' text = 'Genel Ortalama' ) TO gt_textlist.
  APPEND VALUE #( sym = 'TW4' text = 'Ağ.Ort.' ) TO gt_textlist.
  APPEND VALUE #( sym = 'TW5' text = 'Ağ.Ortalama' ) TO gt_textlist.
  APPEND VALUE #( sym = 'TW6' text = 'Maksimum' ) TO gt_textlist.
  APPEND VALUE #( sym = 'TW7' text = 'Minimum' ) TO gt_textlist.
  APPEND VALUE #( sym = 'TW8' text = 'Max.' ) TO gt_textlist.
  APPEND VALUE #( sym = 'TW9' text = 'Min.' ) TO gt_textlist.
  APPEND VALUE #( sym = 'TWS' text = 'Genel Ağ. Ort.' ) TO gt_textlist.
  APPEND VALUE #( sym = 'TWT' text = 'Genel Ağ. Ortalama' ) TO gt_textlist.
  APPEND VALUE #( sym = 'TXA' text = 'Seçilebilecek alanlar' ) TO gt_textlist.
  APPEND VALUE #( sym = 'TXB' text = 'Seçilen alanlar' ) TO gt_textlist.
  APPEND VALUE #( sym = 'TXC' text = 'Alan adı' ) TO gt_textlist.
  APPEND VALUE #( sym = 'TXD' text = 'Detay' ) TO gt_textlist.
  APPEND VALUE #( sym = 'TXF' text = 'Dosya adı' ) TO gt_textlist.
  APPEND VALUE #( sym = 'TXG' text = 'İlk gruplama alanı' ) TO gt_textlist.
  APPEND VALUE #( sym = 'TXM' text = 'E-Posta adresleri' ) TO gt_textlist.
  APPEND VALUE #( sym = 'TXR' text = 'Top.' ) TO gt_textlist.
  APPEND VALUE #( sym = 'TXS' text = 'Toplam' ) TO gt_textlist.
  APPEND VALUE #( sym = 'TXP' text = 'Ara toplamlar' ) TO gt_textlist.
  APPEND VALUE #( sym = 'TXT' text = 'Genel Toplam' ) TO gt_textlist.
  APPEND VALUE #( sym = 'TXU' text = 'Kullanıcılar' ) TO gt_textlist.
  APPEND VALUE #( sym = 'TXY' text = 'Küme seçenekleri' ) TO gt_textlist.
  APPEND VALUE #( sym = 'TXZ' text = 'Metin fonksiyonları' ) TO gt_textlist.
  APPEND VALUE #( sym = 'TZ0' text = 'SATIS' ) TO gt_textlist.
  APPEND VALUE #( sym = 'TZ1' text = 'ORTALAMA' ) TO gt_textlist.
  APPEND VALUE #( sym = 'TZ2' text = 'GENELORTALAMA' ) TO gt_textlist.
  APPEND VALUE #( sym = 'TZ3' text = 'AGORTALAMA' ) TO gt_textlist.
  APPEND VALUE #( sym = 'TZ4' text = 'GENELAGIRLIKLIORTALAMA' ) TO gt_textlist.
  APPEND VALUE #( sym = 'TZC' text = 'GUNKUR' ) TO gt_textlist.
  APPEND VALUE #( sym = 'TZM' text = 'MAX' ) TO gt_textlist.
  APPEND VALUE #( sym = 'TZL' text = 'MIN' ) TO gt_textlist.
  APPEND VALUE #( sym = 'TZP' text = 'YUZDE' ) TO gt_textlist.
  APPEND VALUE #( sym = 'TZS' text = 'TOPLAM' ) TO gt_textlist.
  APPEND VALUE #( sym = 'TZT' text = 'GENELTOPLAM' ) TO gt_textlist.
  APPEND VALUE #( sym = 'Y01' text = 'Sipariş' ) TO gt_textlist.
  APPEND VALUE #( sym = 'Y02' text = 'Teslimat' ) TO gt_textlist.
  APPEND VALUE #( sym = 'Y03' text = 'Fatura' ) TO gt_textlist.
  APPEND VALUE #( sym = 'Y04' text = 'Malzeme' ) TO gt_textlist.
  APPEND VALUE #( sym = 'Y05' text = 'Muhatap' ) TO gt_textlist.
  APPEND VALUE #( sym = 'Y06' text = 'Miktar' ) TO gt_textlist.
  APPEND VALUE #( sym = 'Y07' text = 'Fiyat' ) TO gt_textlist.
  APPEND VALUE #( sym = 'Y08' text = 'Tutar' ) TO gt_textlist.
  APPEND VALUE #( sym = 'Y09' text = 'Diğer' ) TO gt_textlist.
  APPEND VALUE #( sym = 'Z01' text = 'Satış Analizi' ) TO gt_textlist.

ENDFORM.


FORM set_screen_tr.

  %_s_abgru_%_app_%-text = 'Ret nedeni'.
  %_s_auart_%_app_%-text = 'Satış belgesi türü'.
  %_s_audat_%_app_%-text = 'Sipariş tarihi'.
  %_s_augbl_%_app_%-text = 'Denkleştirme belgesi'.
  %_s_belnr_%_app_%-text = 'Belge numarası'.
  %_s_bldat_%_app_%-text = 'Mal çıkış tarihi'.
  %_s_bwtar_%_app_%-text = 'Değerleme türü'.
  %_s_charg_%_app_%-text = 'Parti'.
  %_s_cntry_%_app_%-text = 'Varış ülkesi'.
  %_s_edatu_%_app_%-text = 'Teslimat tarihi'.
  %_s_erdat_%_app_%-text = 'Yaratma tarihi'.
  %_s_ernam_%_app_%-text = 'Yaratan'.
  %_s_fkdat_%_app_%-text = 'Faturalama tarihi'.
  %_s_fstat_%_app_%-text = 'Durum'.
  %_s_gbsta_%_app_%-text = 'Genel durum'.
  %_s_inco1_%_app_%-text = 'Incoterms'.
  %_s_lfbel_%_app_%-text = 'Teslimat Belgesi'.
  %_s_kdgrp_%_app_%-text = 'Müşteri grubu'.
  %_s_kunnr_%_app_%-text = 'Sipariş veren'.
  %_s_kunre_%_app_%-text = 'Fatura alıcısı'.
  %_s_kunrg_%_app_%-text = 'Ödeyen'.
  %_s_kunwe_%_app_%-text = 'Malı teslim alan'.
  %_s_parvw_%_app_%-text = 'Muhatap rolü'.
  %_s_partn_%_app_%-text = '└ Muhatap'.
  %_s_lgort_%_app_%-text = 'Depo yeri'.
  %_s_matkl_%_app_%-text = 'Mal grubu'.
  %_s_matnr_%_app_%-text = 'Malzeme'.
  %_s_mblnr_%_app_%-text = 'Malzeme belgesi'.
  %_s_mtart_%_app_%-text = 'Malzeme türü'.
  %_s_mvgr1_%_app_%-text = 'Malzeme grubu 1'.
  %_s_mvgr2_%_app_%-text = 'Malzeme grubu 2'.
  %_s_mvgr3_%_app_%-text = 'Malzeme grubu 3'.
  %_s_mvgr4_%_app_%-text = 'Malzeme grubu 4'.
  %_s_mvgr5_%_app_%-text = 'Malzeme grubu 5'.
  %_s_posnr_%_app_%-text = 'Kalem'.
  %_s_regio_%_app_%-text = 'Varış ili'.
  %_s_spart_%_app_%-text = 'Bölüm'.
  %_s_vbeln_%_app_%-text = 'Satış belgesi'.
  %_s_vgtyp_%_app_%-text = 'Önceki belge tipi'.
  %_s_vkaus_%_app_%-text = 'Kullanım'.
  %_s_vkbur_%_app_%-text = 'Satış bürosu'.
  %_s_vkgrp_%_app_%-text = 'Satış grubu'.
  %_s_vkorg_%_app_%-text = 'Satış organizasyonu'.
  %_s_vrkms_%_app_%-text = 'Satış ölçü birimi'.
  %_s_vstel_%_app_%-text = 'Sevkiyat noktası'.
  %_s_vtweg_%_app_%-text = 'Dağıtım kanalı'.
  %_s_waers_%_app_%-text = 'Belge para birimi'.
  %_s_wbsta_%_app_%-text = 'Mal hareketi durumu'.
  %_s_werks_%_app_%-text = 'Üretim yeri'.
  %_s_fkbel_%_app_%-text = 'Fatura Belgesi'.
  %_s_zterm_%_app_%-text = 'Ödeme koşulu'.

  %_s_abgru_%_app_%-to_text = 'son'.
  %_s_auart_%_app_%-to_text = 'son'.
  %_s_audat_%_app_%-to_text = 'son'.
  %_s_augbl_%_app_%-to_text = 'son'.
  %_s_belnr_%_app_%-to_text = 'son'.
  %_s_bldat_%_app_%-to_text = 'son'.
  %_s_bwtar_%_app_%-to_text = 'son'.
  %_s_charg_%_app_%-to_text = 'son'.
  %_s_cntry_%_app_%-to_text = 'son'.
  %_s_edatu_%_app_%-to_text = 'son'.
  %_s_erdat_%_app_%-to_text = 'son'.
  %_s_ernam_%_app_%-to_text = 'son'.
  %_s_fkdat_%_app_%-to_text = 'son'.
  %_s_fstat_%_app_%-to_text = 'son'.
  %_s_gbsta_%_app_%-to_text = 'son'.
  %_s_inco1_%_app_%-to_text = 'son'.
  %_s_lfbel_%_app_%-to_text = 'son'.
  %_s_kdgrp_%_app_%-to_text = 'son'.
  %_s_kunnr_%_app_%-to_text = 'son'.
  %_s_kunre_%_app_%-to_text = 'son'.
  %_s_kunrg_%_app_%-to_text = 'son'.
  %_s_kunwe_%_app_%-to_text = 'son'.
  %_s_partn_%_app_%-to_text = 'son'.
  %_s_lgort_%_app_%-to_text = 'son'.
  %_s_matkl_%_app_%-to_text = 'son'.
  %_s_matnr_%_app_%-to_text = 'son'.
  %_s_mblnr_%_app_%-to_text = 'son'.
  %_s_mtart_%_app_%-to_text = 'son'.
  %_s_mvgr1_%_app_%-to_text = 'son'.
  %_s_mvgr2_%_app_%-to_text = 'son'.
  %_s_mvgr3_%_app_%-to_text = 'son'.
  %_s_mvgr4_%_app_%-to_text = 'son'.
  %_s_mvgr5_%_app_%-to_text = 'son'.
  %_s_posnr_%_app_%-to_text = 'son'.
  %_s_regio_%_app_%-to_text = 'son'.
  %_s_spart_%_app_%-to_text = 'son'.
  %_s_vbeln_%_app_%-to_text = 'son'.
  %_s_vgtyp_%_app_%-to_text = 'son'.
  %_s_vkaus_%_app_%-to_text = 'son'.
  %_s_vkbur_%_app_%-to_text = 'son'.
  %_s_vkgrp_%_app_%-to_text = 'son'.
  %_s_vkorg_%_app_%-to_text = 'son'.
  %_s_vrkms_%_app_%-to_text = 'son'.
  %_s_vstel_%_app_%-to_text = 'son'.
  %_s_vtweg_%_app_%-to_text = 'son'.
  %_s_waers_%_app_%-to_text = 'son'.
  %_s_wbsta_%_app_%-to_text = 'son'.
  %_s_werks_%_app_%-to_text = 'son'.
  %_s_fkbel_%_app_%-to_text = 'son'.
  %_s_zterm_%_app_%-to_text = 'son'.


ENDFORM.



FORM set_text_en.

  CLEAR gt_textlist[].

  APPEND VALUE #( sym = 'A01'	text = 'Limit selection screen values !' ) TO gt_textlist.
  APPEND VALUE #( sym = 'A02' text = 'The number of columns to be formed exceeds the maximum value' ) TO gt_textlist.
  APPEND VALUE #( sym = 'A03' text = 'The number of pages to be created exceeds the maximum value' ) TO gt_textlist.
  APPEND VALUE #( sym = 'A04' text = 'File is too big. E-mail will not be sent.' ) TO gt_textlist.
  APPEND VALUE #( sym = 'A05' text = 'E-mail address is incorrect :' ) TO gt_textlist.
  APPEND VALUE #( sym = 'A06' text = 'Please see attached file.' ) TO gt_textlist.
  APPEND VALUE #( sym = 'A07' text = 'Also change system locale language ?' ) TO gt_textlist.
  APPEND VALUE #( sym = 'A08' text = 'E-mail has been sent.' ) TO gt_textlist.

  APPEND VALUE #( sym = 'A10' text = 'Field types are not compatible !' ) TO gt_textlist.
  APPEND VALUE #( sym = 'A11' text = 'Date not valid. Enter consecutive digits for year month day !' ) TO gt_textlist.
  APPEND VALUE #( sym = 'A12' text = 'Saat geçerli değil. Saat dakika saniye ardışık rakam girin !' ) TO gt_textlist.
  APPEND VALUE #( sym = 'A13' text = 'Time is not valid. Enter consecutive digits for hours minutes seconds !' ) TO gt_textlist.
  APPEND VALUE #( sym = 'A14' text = 'Maximum number of characters that can be entered : ' ) TO gt_textlist.

  APPEND VALUE #( sym = 'B01' text = 'Clear Selection' ) TO gt_textlist.
  APPEND VALUE #( sym = 'B02' text = 'Change Language' ) TO gt_textlist.
  APPEND VALUE #( sym = 'B03' text = 'Fields' ) TO gt_textlist.
  APPEND VALUE #( sym = 'B04' text = 'Selection' ) TO gt_textlist.
  APPEND VALUE #( sym = 'B05' text = 'Yes' ) TO gt_textlist.
  APPEND VALUE #( sym = 'B06' text = 'No' ) TO gt_textlist.
  APPEND VALUE #( sym = 'B07' text = 'Aggregations' ) TO gt_textlist.
  APPEND VALUE #( sym = 'B08' text = 'Subtotals' ) TO gt_textlist.
  APPEND VALUE #( sym = 'C01' text = 'Choose Language' ) TO gt_textlist.
  APPEND VALUE #( sym = 'C02' text = 'Variant Definition' ) TO gt_textlist.
  APPEND VALUE #( sym = 'DO1' text = 'Order Document' ) TO gt_textlist.
  APPEND VALUE #( sym = 'DO2' text = 'Creation Date' ) TO gt_textlist.
  APPEND VALUE #( sym = 'DO3' text = 'Order Date' ) TO gt_textlist.
  APPEND VALUE #( sym = 'DO4' text = 'Delivery Date' ) TO gt_textlist.
  APPEND VALUE #( sym = 'DO5' text = 'Billing Date' ) TO gt_textlist.
  APPEND VALUE #( sym = 'DO6' text = 'Pricing Date' ) TO gt_textlist.
  APPEND VALUE #( sym = 'DO7' text = 'Clearing Date' ) TO gt_textlist.
  APPEND VALUE #( sym = 'DO8' text = 'Current Date' ) TO gt_textlist.
  APPEND VALUE #( sym = 'DS0' text = 'CL Grid' ) TO gt_textlist.
  APPEND VALUE #( sym = 'DS1' text = 'Grid' ) TO gt_textlist.
  APPEND VALUE #( sym = 'DS2' text = 'List' ) TO gt_textlist.
  APPEND VALUE #( sym = 'DS3' text = 'Tree' ) TO gt_textlist.
  APPEND VALUE #( sym = 'DSZ' text = 'Select Demo' ) TO gt_textlist.
  APPEND VALUE #( sym = 'DT1' text = 'Order Item' ) TO gt_textlist.
  APPEND VALUE #( sym = 'DT2' text = 'Delivery and Billing' ) TO gt_textlist.
  APPEND VALUE #( sym = 'L11' text = 'Order' ) TO gt_textlist.
  APPEND VALUE #( sym = 'L12' text = 'Options' ) TO gt_textlist.
  APPEND VALUE #( sym = 'L13' text = 'Grouping' ) TO gt_textlist.
  APPEND VALUE #( sym = 'L14' text = 'Display' ) TO gt_textlist.
  APPEND VALUE #( sym = 'L15' text = 'Export' ) TO gt_textlist.
  APPEND VALUE #( sym = 'L16' text = 'Filter' ) TO gt_textlist.
  APPEND VALUE #( sym = 'L21' text = 'Date' ) TO gt_textlist.
  APPEND VALUE #( sym = 'L22' text = 'Document' ) TO gt_textlist.
  APPEND VALUE #( sym = 'L23' text = 'Status' ) TO gt_textlist.
  APPEND VALUE #( sym = 'L31' text = 'Sales' ) TO gt_textlist.
  APPEND VALUE #( sym = 'L32' text = 'Condition' ) TO gt_textlist.
  APPEND VALUE #( sym = 'L33' text = 'Partner' ) TO gt_textlist.
  APPEND VALUE #( sym = 'L34' text = 'Location' ) TO gt_textlist.
  APPEND VALUE #( sym = 'L41' text = 'Material' ) TO gt_textlist.
  APPEND VALUE #( sym = 'L42' text = 'Material Group' ) TO gt_textlist.
  APPEND VALUE #( sym = 'M01' text = 'ORD' ) TO gt_textlist.
  APPEND VALUE #( sym = 'M02' text = 'DLV' ) TO gt_textlist.
  APPEND VALUE #( sym = 'M03' text = 'BIL' ) TO gt_textlist.
  APPEND VALUE #( sym = 'M04' text = 'PRC' ) TO gt_textlist.
  APPEND VALUE #( sym = 'M05' text = 'CLR' ) TO gt_textlist.
  APPEND VALUE #( sym = 'M06' text = 'CUR' ) TO gt_textlist.
  APPEND VALUE #( sym = 'OCD' text = 'Creation Date' ) TO gt_textlist.
  APPEND VALUE #( sym = 'OCR' text = 'Created By' ) TO gt_textlist.
  APPEND VALUE #( sym = 'P01' text = '01-JANUARY' ) TO gt_textlist.
  APPEND VALUE #( sym = 'P02' text = '02-FEBRUARY' ) TO gt_textlist.
  APPEND VALUE #( sym = 'P03' text = '03-MARCH' ) TO gt_textlist.
  APPEND VALUE #( sym = 'P04' text = '04-APRIL' ) TO gt_textlist.
  APPEND VALUE #( sym = 'P05' text = '05-MAY' ) TO gt_textlist.
  APPEND VALUE #( sym = 'P06' text = '06-JUNE' ) TO gt_textlist.
  APPEND VALUE #( sym = 'P07' text = '07-JULY' ) TO gt_textlist.
  APPEND VALUE #( sym = 'P08' text = '08-AUGUST' ) TO gt_textlist.
  APPEND VALUE #( sym = 'P09' text = '09-SEPTEMBER' ) TO gt_textlist.
  APPEND VALUE #( sym = 'P10' text = '10-OCTOBER' ) TO gt_textlist.
  APPEND VALUE #( sym = 'P11' text = '11-NOVEMBER' ) TO gt_textlist.
  APPEND VALUE #( sym = 'P12' text = '12-DECEMBER' ) TO gt_textlist.
  APPEND VALUE #( sym = 'PAD' text = 'Descending' ) TO gt_textlist.
  APPEND VALUE #( sym = 'PAP' text = 'Subtotals' ) TO gt_textlist.
  APPEND VALUE #( sym = 'PAT' text = 'Totals' ) TO gt_textlist.
  APPEND VALUE #( sym = 'PAS' text = 'Approval Status' ) TO gt_textlist.
  APPEND VALUE #( sym = 'PBD' text = 'Add variant info to mail body' ) TO gt_textlist.
  APPEND VALUE #( sym = 'PBO' text = 'Balance Lines' ) TO gt_textlist.
  APPEND VALUE #( sym = 'PC1' text = 'Exchange Rate Date' ) TO gt_textlist.
  APPEND VALUE #( sym = 'PC2' text = 'Exchange Rate Date' ) TO gt_textlist.
  APPEND VALUE #( sym = 'PCD' text = 'Fixed decimals - no unit reference' ) TO gt_textlist.
  APPEND VALUE #( sym = 'PCL' text = 'Merge codes and definitions' ) TO gt_textlist.
  APPEND VALUE #( sym = 'PCO' text = 'Format columns' ) TO gt_textlist.
  APPEND VALUE #( sym = 'PCS' text = 'Case sensitive' ) TO gt_textlist.
  APPEND VALUE #( sym = 'PCP' text = 'Convert unit prices' ) TO gt_textlist.
  APPEND VALUE #( sym = 'PDD' text = 'Detail Layout' ) TO gt_textlist.
  APPEND VALUE #( sym = 'PDM' text = 'Layout' ) TO gt_textlist.
  APPEND VALUE #( sym = 'PDR' text = 'Display Report' ) TO gt_textlist.
  APPEND VALUE #( sym = 'PEX' text = 'Save to Excel / File name' ) TO gt_textlist.
  APPEND VALUE #( sym = 'PLO' text = 'Definition Fields' ) TO gt_textlist.
  APPEND VALUE #( sym = 'PML' text = 'Send Email -> Recipient' ) TO gt_textlist.
  APPEND VALUE #( sym = 'PNL' text = 'No definition fields' ) TO gt_textlist.
  APPEND VALUE #( sym = 'PZL' text = 'Definition only on group labels' ) TO gt_textlist.
  APPEND VALUE #( sym = 'POA' text = 'Approved' ) TO gt_textlist.
  APPEND VALUE #( sym = 'POC' text = 'Without cell merging during sorts' ) TO gt_textlist.
  APPEND VALUE #( sym = 'PON' text = 'Pending Approval' ) TO gt_textlist.
  APPEND VALUE #( sym = 'POO' text = 'Open Orders' ) TO gt_textlist.
  APPEND VALUE #( sym = 'POT' text = 'Order Type' ) TO gt_textlist.
  APPEND VALUE #( sym = 'POX' text = 'Open Excel file' ) TO gt_textlist.
  APPEND VALUE #( sym = 'PRV' text = 'Report Measurement Unit' ) TO gt_textlist.
  APPEND VALUE #( sym = 'PSB' text = '    Email subject' ) TO gt_textlist.
  APPEND VALUE #( sym = 'PSR' text = 'Sorting' ) TO gt_textlist.
  APPEND VALUE #( sym = 'PST' text = 'Status' ) TO gt_textlist.
  APPEND VALUE #( sym = 'PSV' text = 'Selection Variant' ) TO gt_textlist.
  APPEND VALUE #( sym = 'PTC' text = 'Use technical names in headers' ) TO gt_textlist.
  APPEND VALUE #( sym = 'PTP' text = 'Termin Type' ) TO gt_textlist.
  APPEND VALUE #( sym = 'PTR' text = 'Display as' ) TO gt_textlist.
  APPEND VALUE #( sym = 'PTW' text = 'Use document unit/currency as reference' ) TO gt_textlist.
  APPEND VALUE #( sym = 'PW1' text = 'Report Currency 1' ) TO gt_textlist.
  APPEND VALUE #( sym = 'PW2' text = 'Report Currency 2' ) TO gt_textlist.
  APPEND VALUE #( sym = 'PWA' text = 'Calculate weighted average' ) TO gt_textlist.
  APPEND VALUE #( sym = 'PWS' text = 'Create worksheets' ) TO gt_textlist.
  APPEND VALUE #( sym = 'PYV' text = 'Last group on columns' ) TO gt_textlist.
  APPEND VALUE #( sym = 'PHL' text = 'Collapse tree node' ) TO gt_textlist.
  APPEND VALUE #( sym = 'PZR' text = 'Do not display zero values' ) TO gt_textlist.
  APPEND VALUE #( sym = 'Q01' text = '1ST QUARTER' ) TO gt_textlist.
  APPEND VALUE #( sym = 'Q02' text = '2ND QUARTER' ) TO gt_textlist.
  APPEND VALUE #( sym = 'Q03' text = '3RD QUARTER' ) TO gt_textlist.
  APPEND VALUE #( sym = 'Q04' text = '4TH QUARTER' ) TO gt_textlist.
  APPEND VALUE #( sym = 'R01' text = 'Grouping Field 1' ) TO gt_textlist.
  APPEND VALUE #( sym = 'R02' text = 'Grouping Field 2' ) TO gt_textlist.
  APPEND VALUE #( sym = 'R03' text = 'Grouping Field 3' ) TO gt_textlist.
  APPEND VALUE #( sym = 'R04' text = 'Grouping Field 4' ) TO gt_textlist.
  APPEND VALUE #( sym = 'R05' text = 'Grouping Field 5' ) TO gt_textlist.
  APPEND VALUE #( sym = 'R06' text = 'Grouping Field 6' ) TO gt_textlist.
  APPEND VALUE #( sym = 'R07' text = 'Grouping Field 7' ) TO gt_textlist.
  APPEND VALUE #( sym = 'R08' text = 'Grouping Field 8' ) TO gt_textlist.
  APPEND VALUE #( sym = 'R09' text = 'Grouping Field 9' ) TO gt_textlist.
  APPEND VALUE #( sym = 'R10' text = 'Grouping Field 10' ) TO gt_textlist.
  APPEND VALUE #( sym = 'R11' text = 'Grouping Field 11' ) TO gt_textlist.
  APPEND VALUE #( sym = 'R12' text = 'Grouping Field 12' ) TO gt_textlist.
  APPEND VALUE #( sym = 'S01' text = 'Canceled' ) TO gt_textlist.
  APPEND VALUE #( sym = 'S02' text = 'No accounting' ) TO gt_textlist.
  APPEND VALUE #( sym = 'S03' text = 'Pending goods issue' ) TO gt_textlist.
  APPEND VALUE #( sym = 'S04' text = 'Payed' ) TO gt_textlist.
  APPEND VALUE #( sym = 'S05' text = 'Partially payed' ) TO gt_textlist.
  APPEND VALUE #( sym = 'S06' text = 'Billed' ) TO gt_textlist.
  APPEND VALUE #( sym = 'S07' text = 'Partially billed' ) TO gt_textlist.
  APPEND VALUE #( sym = 'S08' text = 'Pending billing' ) TO gt_textlist.
  APPEND VALUE #( sym = 'S09' text = 'Delivered' ) TO gt_textlist.
  APPEND VALUE #( sym = 'S10' text = 'Partially delivered' ) TO gt_textlist.
  APPEND VALUE #( sym = 'S11' text = 'Pending delivery' ) TO gt_textlist.
  APPEND VALUE #( sym = 'SAA' text = 'Order Type' ) TO gt_textlist.
  APPEND VALUE #( sym = 'SAB' text = 'Clearing Document' ) TO gt_textlist.
  APPEND VALUE #( sym = 'SAD' text = 'Order Date' ) TO gt_textlist.
  APPEND VALUE #( sym = 'SAU' text = 'Order Reason' ) TO gt_textlist.
  APPEND VALUE #( sym = 'SAG' text = 'Reason for Rejection' ) TO gt_textlist.
  APPEND VALUE #( sym = 'SBS' text = 'Confirmation Status' ) TO gt_textlist.
  APPEND VALUE #( sym = 'SLS' text = 'Delivery Status' ) TO gt_textlist.
  APPEND VALUE #( sym = 'SCD' text = 'Creation Date' ) TO gt_textlist.
  APPEND VALUE #( sym = 'SCR' text = 'Created By' ) TO gt_textlist.
  APPEND VALUE #( sym = 'SFB' text = 'Billing Document' ) TO gt_textlist.
  APPEND VALUE #( sym = 'SFS' text = 'Billing Status' ) TO gt_textlist.
  APPEND VALUE #( sym = 'SLB' text = 'Delivery Document' ) TO gt_textlist.
  APPEND VALUE #( sym = 'SMB' text = 'Material Document' ) TO gt_textlist.
  APPEND VALUE #( sym = 'SNB' text = 'Accounting Document' ) TO gt_textlist.
  APPEND VALUE #( sym = 'SOB' text = 'Order Document' ) TO gt_textlist.
  APPEND VALUE #( sym = 'SOP' text = 'Order Item' ) TO gt_textlist.
  APPEND VALUE #( sym = 'SSK' text = 'Customer Reference' ) TO gt_textlist.
  APPEND VALUE #( sym = 'SVB' text = 'Sales Office' ) TO gt_textlist.
  APPEND VALUE #( sym = 'SVT' text = 'Ref. Document Type' ) TO gt_textlist.
  APPEND VALUE #( sym = 'SWS' text = 'Goods Issue Status' ) TO gt_textlist.
  APPEND VALUE #( sym = 'TFB' text = 'Billing Balance' ) TO gt_textlist.
  APPEND VALUE #( sym = 'TFK' text = 'Billing' ) TO gt_textlist.
  APPEND VALUE #( sym = 'TIS' text = 'Items' ) TO gt_textlist.
  APPEND VALUE #( sym = 'TLB' text = 'Delivery Balance' ) TO gt_textlist.
  APPEND VALUE #( sym = 'TLF' text = 'Delivery' ) TO gt_textlist.
  APPEND VALUE #( sym = 'TLS' text = 'Deliveries' ) TO gt_textlist.
  APPEND VALUE #( sym = 'TOI' text = 'Order Item' ) TO gt_textlist.
  APPEND VALUE #( sym = 'TSO' text = 'Open Order Document' ) TO gt_textlist.
  APPEND VALUE #( sym = 'TT1' text = '(exch. on delivery)' ) TO gt_textlist.
  APPEND VALUE #( sym = 'TT2' text = '(exch. on billing)' ) TO gt_textlist.
  APPEND VALUE #( sym = 'TT3' text = '(current exch. rate)' ) TO gt_textlist.
  APPEND VALUE #( sym = 'TT4' text = '(different currencies !!!)' ) TO gt_textlist.
  APPEND VALUE #( sym = 'TT5' text = '(different units !!!)' ) TO gt_textlist.
  APPEND VALUE #( sym = 'TT6' text = 'Cur.Rate' ) TO gt_textlist.
  APPEND VALUE #( sym = 'TW0' text = 'Percentage' ) TO gt_textlist.
  APPEND VALUE #( sym = 'TW1' text = 'Avg.' ) TO gt_textlist.
  APPEND VALUE #( sym = 'TW2' text = 'Average' ) TO gt_textlist.
  APPEND VALUE #( sym = 'TW3' text = 'Overall average' ) TO gt_textlist.
  APPEND VALUE #( sym = 'TW4' text = 'Wgt.Avg.' ) TO gt_textlist.
  APPEND VALUE #( sym = 'TW5' text = 'Wgt.Average' ) TO gt_textlist.
  APPEND VALUE #( sym = 'TW6' text = 'Maximum' ) TO gt_textlist.
  APPEND VALUE #( sym = 'TW7' text = 'Minimum' ) TO gt_textlist.
  APPEND VALUE #( sym = 'TW8' text = 'Max.' ) TO gt_textlist.
  APPEND VALUE #( sym = 'TW9' text = 'Min.' ) TO gt_textlist.
  APPEND VALUE #( sym = 'TWS' text = 'Overall Wgt. Avg.' ) TO gt_textlist.
  APPEND VALUE #( sym = 'TWT' text = 'Overall Wgt. Average' ) TO gt_textlist.
  APPEND VALUE #( sym = 'TXA' text = 'Field List' ) TO gt_textlist.
  APPEND VALUE #( sym = 'TXB' text = 'Selected Fields' ) TO gt_textlist.
  APPEND VALUE #( sym = 'TXC' text = 'Field Name' ) TO gt_textlist.
  APPEND VALUE #( sym = 'TXD' text = 'Detail' ) TO gt_textlist.
  APPEND VALUE #( sym = 'TXF' text = 'File name' ) TO gt_textlist.
  APPEND VALUE #( sym = 'TXG' text = 'First grouping field' ) TO gt_textlist.
  APPEND VALUE #( sym = 'TXM' text = 'E-mail addresses' ) TO gt_textlist.
  APPEND VALUE #( sym = 'TXR' text = 'Tot.' ) TO gt_textlist.
  APPEND VALUE #( sym = 'TXS' text = 'Total' ) TO gt_textlist.
  APPEND VALUE #( sym = 'TXP' text = 'Subtotals' ) TO gt_textlist.
  APPEND VALUE #( sym = 'TXT' text = 'Grand Total' ) TO gt_textlist.
  APPEND VALUE #( sym = 'TXU' text = 'Users' ) TO gt_textlist.
  APPEND VALUE #( sym = 'TXY' text = 'Aggregation Settings' ) TO gt_textlist.
  APPEND VALUE #( sym = 'TXZ' text = 'Text Functions' ) TO gt_textlist.
  APPEND VALUE #( sym = 'TZ0' text = 'SALES' ) TO gt_textlist.
  APPEND VALUE #( sym = 'TZ1' text = 'AVERAGE' ) TO gt_textlist.
  APPEND VALUE #( sym = 'TZ2' text = 'OVERALLAVERAGE' ) TO gt_textlist.
  APPEND VALUE #( sym = 'TZ3' text = 'WEIGHTEDAVERAGE' ) TO gt_textlist.
  APPEND VALUE #( sym = 'TZ4' text = 'OVERALLWEIGHTEDAVERAGE' ) TO gt_textlist.
  APPEND VALUE #( sym = 'TZC' text = 'CURRATE' ) TO gt_textlist.
  APPEND VALUE #( sym = 'TZM' text = 'MAX' ) TO gt_textlist.
  APPEND VALUE #( sym = 'TZL' text = 'MIN' ) TO gt_textlist.
  APPEND VALUE #( sym = 'TZP' text = 'PERCENTAGE' ) TO gt_textlist.
  APPEND VALUE #( sym = 'TZS' text = 'TOTAL' ) TO gt_textlist.
  APPEND VALUE #( sym = 'TZT' text = 'GRANDTOTAL' ) TO gt_textlist.
  APPEND VALUE #( sym = 'Y01' text = 'Order' ) TO gt_textlist.
  APPEND VALUE #( sym = 'Y02' text = 'Delivery' ) TO gt_textlist.
  APPEND VALUE #( sym = 'Y03' text = 'Billing' ) TO gt_textlist.
  APPEND VALUE #( sym = 'Y04' text = 'Material' ) TO gt_textlist.
  APPEND VALUE #( sym = 'Y05' text = 'Partner' ) TO gt_textlist.
  APPEND VALUE #( sym = 'Y06' text = 'Quantity' ) TO gt_textlist.
  APPEND VALUE #( sym = 'Y07' text = 'Price' ) TO gt_textlist.
  APPEND VALUE #( sym = 'Y08' text = 'Amount' ) TO gt_textlist.
  APPEND VALUE #( sym = 'Y09' text = 'Other' ) TO gt_textlist.
  APPEND VALUE #( sym = 'Z01' text = 'Sales Analysis' ) TO gt_textlist.

ENDFORM.


FORM set_screen_en.

  %_s_abgru_%_app_%-text = 'Reason for Rejection'.
  %_s_auart_%_app_%-text = 'Sales Document Type'.
  %_s_audat_%_app_%-text = 'Order Date'.
  %_s_augbl_%_app_%-text = 'Clearing Document'.
  %_s_belnr_%_app_%-text = 'Accounting Document'.
  %_s_bldat_%_app_%-text = 'Goods Issue Date'.
  %_s_bwtar_%_app_%-text = 'Valuation Type'.
  %_s_charg_%_app_%-text = 'Batch'.
  %_s_cntry_%_app_%-text = 'Destination Country'.
  %_s_edatu_%_app_%-text = 'Delivery Date'.
  %_s_erdat_%_app_%-text = 'Created on'.
  %_s_ernam_%_app_%-text = 'Created by'.
  %_s_fkdat_%_app_%-text = 'Billing Date'.
  %_s_fstat_%_app_%-text = 'Status'.
  %_s_gbsta_%_app_%-text = 'Overall Status'.
  %_s_inco1_%_app_%-text = 'Incoterms'.
  %_s_lfbel_%_app_%-text = 'Delivery Document'.
  %_s_kdgrp_%_app_%-text = 'Customer Group'.
  %_s_kunnr_%_app_%-text = 'Sold-To Party'.
  %_s_kunre_%_app_%-text = 'Bill-to Party'.
  %_s_kunrg_%_app_%-text = 'Payer'.
  %_s_kunwe_%_app_%-text = 'Ship-to Party'.
  %_s_parvw_%_app_%-text = 'Partner Function'.
  %_s_partn_%_app_%-text = '└ Partner'.
  %_s_lgort_%_app_%-text = 'Storage Location'.
  %_s_matkl_%_app_%-text = 'Material Group'.
  %_s_matnr_%_app_%-text = 'Material'.
  %_s_mblnr_%_app_%-text = 'Material Document'.
  %_s_mtart_%_app_%-text = 'Material Type'.
  %_s_mvgr1_%_app_%-text = 'Material Group 1'.
  %_s_mvgr2_%_app_%-text = 'Material Group 2'.
  %_s_mvgr3_%_app_%-text = 'Material Group 3'.
  %_s_mvgr4_%_app_%-text = 'Material Group 4'.
  %_s_mvgr5_%_app_%-text = 'Material Group 5'.
  %_s_posnr_%_app_%-text = 'Sales Document Item'.
  %_s_regio_%_app_%-text = 'Region'.
  %_s_spart_%_app_%-text = 'Division'.
  %_s_vbeln_%_app_%-text = 'Sales Document'.
  %_s_vgtyp_%_app_%-text = 'Preceding Doc.Categ.'.
  %_s_vkaus_%_app_%-text = 'Usage'.
  %_s_vkbur_%_app_%-text = 'Sales Office'.
  %_s_vkgrp_%_app_%-text = 'Sales Group'.
  %_s_vkorg_%_app_%-text = 'Sales Organization'.
  %_s_vrkms_%_app_%-text = 'Document Unit'.
  %_s_vstel_%_app_%-text = 'Shipping Point'.
  %_s_vtweg_%_app_%-text = 'Distribution Channel'.
  %_s_waers_%_app_%-text = 'Document Currency'.
  %_s_wbsta_%_app_%-text = 'Goods Movement Sts'.
  %_s_werks_%_app_%-text = 'Plant'.
  %_s_fkbel_%_app_%-text = 'Billing Document'.
  %_s_zterm_%_app_%-text = 'Payment terms'.

  %_s_abgru_%_app_%-to_text = 'to'.
  %_s_auart_%_app_%-to_text = 'to'.
  %_s_audat_%_app_%-to_text = 'to'.
  %_s_augbl_%_app_%-to_text = 'to'.
  %_s_belnr_%_app_%-to_text = 'to'.
  %_s_bldat_%_app_%-to_text = 'to'.
  %_s_bwtar_%_app_%-to_text = 'to'.
  %_s_charg_%_app_%-to_text = 'to'.
  %_s_cntry_%_app_%-to_text = 'to'.
  %_s_edatu_%_app_%-to_text = 'to'.
  %_s_erdat_%_app_%-to_text = 'to'.
  %_s_ernam_%_app_%-to_text = 'to'.
  %_s_fkdat_%_app_%-to_text = 'to'.
  %_s_fstat_%_app_%-to_text = 'to'.
  %_s_gbsta_%_app_%-to_text = 'to'.
  %_s_inco1_%_app_%-to_text = 'to'.
  %_s_lfbel_%_app_%-to_text = 'to'.
  %_s_kdgrp_%_app_%-to_text = 'to'.
  %_s_kunnr_%_app_%-to_text = 'to'.
  %_s_kunre_%_app_%-to_text = 'to'.
  %_s_kunrg_%_app_%-to_text = 'to'.
  %_s_kunwe_%_app_%-to_text = 'to'.
  %_s_partn_%_app_%-to_text = 'to'.
  %_s_lgort_%_app_%-to_text = 'to'.
  %_s_matkl_%_app_%-to_text = 'to'.
  %_s_matnr_%_app_%-to_text = 'to'.
  %_s_mblnr_%_app_%-to_text = 'to'.
  %_s_mtart_%_app_%-to_text = 'to'.
  %_s_mvgr1_%_app_%-to_text = 'to'.
  %_s_mvgr2_%_app_%-to_text = 'to'.
  %_s_mvgr3_%_app_%-to_text = 'to'.
  %_s_mvgr4_%_app_%-to_text = 'to'.
  %_s_mvgr5_%_app_%-to_text = 'to'.
  %_s_posnr_%_app_%-to_text = 'to'.
  %_s_regio_%_app_%-to_text = 'to'.
  %_s_spart_%_app_%-to_text = 'to'.
  %_s_vbeln_%_app_%-to_text = 'to'.
  %_s_vgtyp_%_app_%-to_text = 'to'.
  %_s_vkaus_%_app_%-to_text = 'to'.
  %_s_vkbur_%_app_%-to_text = 'to'.
  %_s_vkgrp_%_app_%-to_text = 'to'.
  %_s_vkorg_%_app_%-to_text = 'to'.
  %_s_vrkms_%_app_%-to_text = 'to'.
  %_s_vstel_%_app_%-to_text = 'to'.
  %_s_vtweg_%_app_%-to_text = 'to'.
  %_s_waers_%_app_%-to_text = 'to'.
  %_s_wbsta_%_app_%-to_text = 'to'.
  %_s_werks_%_app_%-to_text = 'to'.
  %_s_fkbel_%_app_%-to_text = 'to'.
  %_s_zterm_%_app_%-to_text = 'to'.


ENDFORM.



FORM set_text_de.

  CLEAR gt_textlist[].

  APPEND VALUE #( sym = 'A01'	text = 'Begrenzen Sie den Auswahlbereich' ) TO gt_textlist.
  APPEND VALUE #( sym = 'A02' text = 'Die maximale Anzahl von Spalten wird überschritten' ) TO gt_textlist.
  APPEND VALUE #( sym = 'A03' text = 'Die maximale Anzahl der Seiten wird überschritten' ) TO gt_textlist.
  APPEND VALUE #( sym = 'A04' text = 'Die angehängte Datei ist zu groß. Die E-Mail wird nicht versendet' ) TO gt_textlist.
  APPEND VALUE #( sym = 'A05' text = 'Die E-Mail-Adresse ist falsch :' ) TO gt_textlist.
  APPEND VALUE #( sym = 'A06' text = 'Anbei finden Sie die Datei zur E-Mail.' ) TO gt_textlist.
  APPEND VALUE #( sym = 'A07' text = 'Ändern Sie auch das lokal Sprache des Systems ? ' ) TO gt_textlist.
  APPEND VALUE #( sym = 'A08' text = 'Die Email wurde verschickt.' ) TO gt_textlist.

  APPEND VALUE #( sym = 'A10' text = 'Feldtypen sind nicht kompatibel !' ) TO gt_textlist.
  APPEND VALUE #( sym = 'A11' text = 'Datum ungültig. Geben Sie fortlaufende Ziffern für Jahr, Monat, Tag ein !' ) TO gt_textlist.
  APPEND VALUE #( sym = 'A12' text = 'Die Uhrzeit ist ungültig. Geben Sie fortlaufende Ziffern für Stunden, Minuten und Sekunden ein !' ) TO gt_textlist.
  APPEND VALUE #( sym = 'A13' text = 'Zahlenwert eingeben !' ) TO gt_textlist.
  APPEND VALUE #( sym = 'A14' text = 'Maximale Anzahl der Zeichen, die eingegeben werden können : ' ) TO gt_textlist.

  APPEND VALUE #( sym = 'B01' text = 'Auswahl löschen' ) TO gt_textlist.
  APPEND VALUE #( sym = 'B02' text = 'Sprache ändern' ) TO gt_textlist.
  APPEND VALUE #( sym = 'B03' text = 'Felder' ) TO gt_textlist.
  APPEND VALUE #( sym = 'B04' text = 'Selektion' ) TO gt_textlist.
  APPEND VALUE #( sym = 'B05' text = 'Ja' ) TO gt_textlist.
  APPEND VALUE #( sym = 'B06' text = 'Nein' ) TO gt_textlist.
  APPEND VALUE #( sym = 'B07' text = 'Aggregationen' ) TO gt_textlist.
  APPEND VALUE #( sym = 'B08' text = 'Zwischensummen' ) TO gt_textlist.
  APPEND VALUE #( sym = 'C01' text = 'Sprache wählen' ) TO gt_textlist.
  APPEND VALUE #( sym = 'C02' text = 'Variant Definition' ) TO gt_textlist.
  APPEND VALUE #( sym = 'DO1' text = 'Belegnummer' ) TO gt_textlist.
  APPEND VALUE #( sym = 'DO2' text = 'Erstellungdatum' ) TO gt_textlist.
  APPEND VALUE #( sym = 'DO3' text = 'Verkaufsdatum' ) TO gt_textlist.
  APPEND VALUE #( sym = 'DO4' text = 'Lieferungdatum' ) TO gt_textlist.
  APPEND VALUE #( sym = 'DO5' text = 'Rechnungdatum' ) TO gt_textlist.
  APPEND VALUE #( sym = 'DO6' text = 'Preisdatum' ) TO gt_textlist.
  APPEND VALUE #( sym = 'DO7' text = 'Ausgleichsdatum' ) TO gt_textlist.
  APPEND VALUE #( sym = 'DO8' text = 'Aktuellesdatum' ) TO gt_textlist.
  APPEND VALUE #( sym = 'DS0' text = 'CL Gitter' ) TO gt_textlist.
  APPEND VALUE #( sym = 'DS1' text = 'Gitter' ) TO gt_textlist.
  APPEND VALUE #( sym = 'DS2' text = 'Liste' ) TO gt_textlist.
  APPEND VALUE #( sym = 'DS3' text = 'Baum' ) TO gt_textlist.
  APPEND VALUE #( sym = 'DSZ' text = 'Demo auswählen' ) TO gt_textlist.
  APPEND VALUE #( sym = 'DT1' text = 'Auftragposition' ) TO gt_textlist.
  APPEND VALUE #( sym = 'DT2' text = 'Lieferung und Rechnung' ) TO gt_textlist.
  APPEND VALUE #( sym = 'L11' text = 'Auftrag' ) TO gt_textlist.
  APPEND VALUE #( sym = 'L12' text = 'Optionen' ) TO gt_textlist.
  APPEND VALUE #( sym = 'L13' text = 'Gruppe' ) TO gt_textlist.
  APPEND VALUE #( sym = 'L14' text = 'Layout' ) TO gt_textlist.
  APPEND VALUE #( sym = 'L15' text = 'Exportierung' ) TO gt_textlist.
  APPEND VALUE #( sym = 'L16' text = 'Filter' ) TO gt_textlist.
  APPEND VALUE #( sym = 'L21' text = 'Datum' ) TO gt_textlist.
  APPEND VALUE #( sym = 'L22' text = 'Beleg' ) TO gt_textlist.
  APPEND VALUE #( sym = 'L23' text = 'Status' ) TO gt_textlist.
  APPEND VALUE #( sym = 'L31' text = 'Verkauf' ) TO gt_textlist.
  APPEND VALUE #( sym = 'L32' text = 'Kondition' ) TO gt_textlist.
  APPEND VALUE #( sym = 'L33' text = 'Partner' ) TO gt_textlist.
  APPEND VALUE #( sym = 'L34' text = 'Standort' ) TO gt_textlist.
  APPEND VALUE #( sym = 'L41' text = 'Material' ) TO gt_textlist.
  APPEND VALUE #( sym = 'L42' text = 'Materialgruppe' ) TO gt_textlist.
  APPEND VALUE #( sym = 'M01' text = 'AUF' ) TO gt_textlist.
  APPEND VALUE #( sym = 'M02' text = 'LFR' ) TO gt_textlist.
  APPEND VALUE #( sym = 'M03' text = 'FKT' ) TO gt_textlist.
  APPEND VALUE #( sym = 'M04' text = 'PRS' ) TO gt_textlist.
  APPEND VALUE #( sym = 'M05' text = 'AUS' ) TO gt_textlist.
  APPEND VALUE #( sym = 'M06' text = 'TAG' ) TO gt_textlist.
  APPEND VALUE #( sym = 'OCD' text = 'Erstellungdatum' ) TO gt_textlist.
  APPEND VALUE #( sym = 'OCR' text = 'Ersteller' ) TO gt_textlist.
  APPEND VALUE #( sym = 'P01' text = '01-JANUAR' ) TO gt_textlist.
  APPEND VALUE #( sym = 'P02' text = '02-FEBRUAR' ) TO gt_textlist.
  APPEND VALUE #( sym = 'P03' text = '03-MÄRZ' ) TO gt_textlist.
  APPEND VALUE #( sym = 'P04' text = '04-APRIL' ) TO gt_textlist.
  APPEND VALUE #( sym = 'P05' text = '05-MAI' ) TO gt_textlist.
  APPEND VALUE #( sym = 'P06' text = '06-JUNI' ) TO gt_textlist.
  APPEND VALUE #( sym = 'P07' text = '07-JULI' ) TO gt_textlist.
  APPEND VALUE #( sym = 'P08' text = '08-AUGUST' ) TO gt_textlist.
  APPEND VALUE #( sym = 'P09' text = '09-SEPTEMBER' ) TO gt_textlist.
  APPEND VALUE #( sym = 'P10' text = '10-OKTOBER' ) TO gt_textlist.
  APPEND VALUE #( sym = 'P11' text = '11-NOVEMBER' ) TO gt_textlist.
  APPEND VALUE #( sym = 'P12' text = '12-DEZEMBER' ) TO gt_textlist.
  APPEND VALUE #( sym = 'PAD' text = 'Absteigend' ) TO gt_textlist.
  APPEND VALUE #( sym = 'PAP' text = 'Zwischensummen' ) TO gt_textlist.
  APPEND VALUE #( sym = 'PAT' text = 'Summen' ) TO gt_textlist.
  APPEND VALUE #( sym = 'PAS' text = 'Genehmigungsstatus' ) TO gt_textlist.
  APPEND VALUE #( sym = 'PBD' text = 'Variant Info an die E-Mail anhängen.' ) TO gt_textlist.
  APPEND VALUE #( sym = 'PBO' text = 'Saldenzeilen' ) TO gt_textlist.
  APPEND VALUE #( sym = 'PC1' text = 'Wechselkursdatum' ) TO gt_textlist.
  APPEND VALUE #( sym = 'PC2' text = 'Wechselkursdatum' ) TO gt_textlist.
  APPEND VALUE #( sym = 'PCD' text = 'Feste Dezimalstellen - keine Einheitsreferenz' ) TO gt_textlist.
  APPEND VALUE #( sym = 'PCL' text = 'Definitionen mit Schlüssel' ) TO gt_textlist.
  APPEND VALUE #( sym = 'PCO' text = 'Spalten formatieren' ) TO gt_textlist.
  APPEND VALUE #( sym = 'PCS' text = 'Groß- und Klein beachten' ) TO gt_textlist.
  APPEND VALUE #( sym = 'PCP' text = 'Einheitspreise umrechnen' ) TO gt_textlist.
  APPEND VALUE #( sym = 'PDD' text = 'Detaillayout' ) TO gt_textlist.
  APPEND VALUE #( sym = 'PDM' text = 'Layout' ) TO gt_textlist.
  APPEND VALUE #( sym = 'PDR' text = 'Bericht anzeigen' ) TO gt_textlist.
  APPEND VALUE #( sym = 'PEX' text = 'In Excel speichern / Dateiname' ) TO gt_textlist.
  APPEND VALUE #( sym = 'PLO' text = 'Definition Felder' ) TO gt_textlist.
  APPEND VALUE #( sym = 'PML' text = 'E-Mail senden -> Empfänger' ) TO gt_textlist.
  APPEND VALUE #( sym = 'PNL' text = 'Keine Definition Felder' ) TO gt_textlist.
  APPEND VALUE #( sym = 'PZL' text = 'Nur Definition auf Gruppenetiketten' ) TO gt_textlist.
  APPEND VALUE #( sym = 'POA' text = 'Genehmigt' ) TO gt_textlist.
  APPEND VALUE #( sym = 'POC' text = 'ohne Zusammenfassen von Eintragen' ) TO gt_textlist.
  APPEND VALUE #( sym = 'PON' text = 'Genehmigung ausstehend' ) TO gt_textlist.
  APPEND VALUE #( sym = 'POO' text = 'Offene Bestellungen' ) TO gt_textlist.
  APPEND VALUE #( sym = 'POT' text = 'Bestellart' ) TO gt_textlist.
  APPEND VALUE #( sym = 'POX' text = 'Excel-Datei öffnen' ) TO gt_textlist.
  APPEND VALUE #( sym = 'PRV' text = 'Berichtseinheit' ) TO gt_textlist.
  APPEND VALUE #( sym = 'PSB' text = '    E-Mail-Betreff' ) TO gt_textlist.
  APPEND VALUE #( sym = 'PSR' text = 'Sortierung' ) TO gt_textlist.
  APPEND VALUE #( sym = 'PST' text = 'Status' ) TO gt_textlist.
  APPEND VALUE #( sym = 'PSV' text = 'Selektionvarianten' ) TO gt_textlist.
  APPEND VALUE #( sym = 'PTC' text = 'Technische Namen in Überschriften verwenden' ) TO gt_textlist.
  APPEND VALUE #( sym = 'PTP' text = 'Terminart' ) TO gt_textlist.
  APPEND VALUE #( sym = 'PTR' text = 'Ausgabe als' ) TO gt_textlist.
  APPEND VALUE #( sym = 'PTW' text = 'Auftragseinheit/währung als Referenz' ) TO gt_textlist.
  APPEND VALUE #( sym = 'PW1' text = 'Berichtswährung 1' ) TO gt_textlist.
  APPEND VALUE #( sym = 'PW2' text = 'Berichtswährung 2' ) TO gt_textlist.
  APPEND VALUE #( sym = 'PWA' text = 'Gewichteten Durchschnitt berechnen' ) TO gt_textlist.
  APPEND VALUE #( sym = 'PWS' text = 'Arbeitsblätter erstellen' ) TO gt_textlist.
  APPEND VALUE #( sym = 'PYV' text = 'Letzte Gruppe in Spalten' ) TO gt_textlist.
  APPEND VALUE #( sym = 'PHL' text = 'Baumknoten reduzieren' ) TO gt_textlist.
  APPEND VALUE #( sym = 'PZR' text = 'Nullwerte nicht anzeigen' ) TO gt_textlist.
  APPEND VALUE #( sym = 'Q01' text = '1.QUARTAL' ) TO gt_textlist.
  APPEND VALUE #( sym = 'Q02' text = '2.QUARTAL' ) TO gt_textlist.
  APPEND VALUE #( sym = 'Q03' text = '3.QUARTAL' ) TO gt_textlist.
  APPEND VALUE #( sym = 'Q04' text = '4.QUARTAL' ) TO gt_textlist.
  APPEND VALUE #( sym = 'R01' text = 'Gruppierungsfeld 1' ) TO gt_textlist.
  APPEND VALUE #( sym = 'R02' text = 'Gruppierungsfeld 2' ) TO gt_textlist.
  APPEND VALUE #( sym = 'R03' text = 'Gruppierungsfeld 3' ) TO gt_textlist.
  APPEND VALUE #( sym = 'R04' text = 'Gruppierungsfeld 4' ) TO gt_textlist.
  APPEND VALUE #( sym = 'R05' text = 'Gruppierungsfeld 5' ) TO gt_textlist.
  APPEND VALUE #( sym = 'R06' text = 'Gruppierungsfeld 6' ) TO gt_textlist.
  APPEND VALUE #( sym = 'R07' text = 'Gruppierungsfeld 7' ) TO gt_textlist.
  APPEND VALUE #( sym = 'R08' text = 'Gruppierungsfeld 8' ) TO gt_textlist.
  APPEND VALUE #( sym = 'R09' text = 'Gruppierungsfeld 9' ) TO gt_textlist.
  APPEND VALUE #( sym = 'R10' text = 'Gruppierungsfeld 10' ) TO gt_textlist.
  APPEND VALUE #( sym = 'R11' text = 'Gruppierungsfeld 11' ) TO gt_textlist.
  APPEND VALUE #( sym = 'R12' text = 'Gruppierungsfeld 12' ) TO gt_textlist.
  APPEND VALUE #( sym = 'S01' text = 'Storniert' ) TO gt_textlist.
  APPEND VALUE #( sym = 'S02' text = 'Nicht verbucht' ) TO gt_textlist.
  APPEND VALUE #( sym = 'S03' text = 'Wartet auf Warenausgang' ) TO gt_textlist.
  APPEND VALUE #( sym = 'S04' text = 'Bezahlt' ) TO gt_textlist.
  APPEND VALUE #( sym = 'S05' text = 'Teilweise bezahlt' ) TO gt_textlist.
  APPEND VALUE #( sym = 'S06' text = 'In Rechnung gestellt' ) TO gt_textlist.
  APPEND VALUE #( sym = 'S07' text = 'Teilweise in Rechnung gestel' ) TO gt_textlist.
  APPEND VALUE #( sym = 'S08' text = 'Erwartet Rechnungsstellung' ) TO gt_textlist.
  APPEND VALUE #( sym = 'S09' text = 'Geliefert' ) TO gt_textlist.
  APPEND VALUE #( sym = 'S10' text = 'Teilweise geliefert' ) TO gt_textlist.
  APPEND VALUE #( sym = 'S11' text = 'Erwartet Lieferung' ) TO gt_textlist.
  APPEND VALUE #( sym = 'SAA' text = 'Auftragsart' ) TO gt_textlist.
  APPEND VALUE #( sym = 'SAB' text = 'Ausgleichsdokument' ) TO gt_textlist.
  APPEND VALUE #( sym = 'SAD' text = 'Verkaufsdatum' ) TO gt_textlist.
  APPEND VALUE #( sym = 'SAU' text = 'Verkaufsgrund' ) TO gt_textlist.
  APPEND VALUE #( sym = 'SAG' text = 'Absagegrund' ) TO gt_textlist.
  APPEND VALUE #( sym = 'SBS' text = 'Bestätigstatus' ) TO gt_textlist.
  APPEND VALUE #( sym = 'SLS' text = 'Lieferstatus' ) TO gt_textlist.
  APPEND VALUE #( sym = 'SCD' text = 'Angelegt am' ) TO gt_textlist.
  APPEND VALUE #( sym = 'SCR' text = 'Angelegt von' ) TO gt_textlist.
  APPEND VALUE #( sym = 'SFB' text = 'Rechnungsdokument' ) TO gt_textlist.
  APPEND VALUE #( sym = 'SFS' text = 'Rechnungsstatus' ) TO gt_textlist.
  APPEND VALUE #( sym = 'SLB' text = 'Auslieferungbeleg' ) TO gt_textlist.
  APPEND VALUE #( sym = 'SMB' text = 'Warenauslieferungbeleg' ) TO gt_textlist.
  APPEND VALUE #( sym = 'SNB' text = 'Buchungsbeleg' ) TO gt_textlist.
  APPEND VALUE #( sym = 'SOB' text = 'Auftragnummer' ) TO gt_textlist.
  APPEND VALUE #( sym = 'SOP' text = 'Auftragposition' ) TO gt_textlist.
  APPEND VALUE #( sym = 'SSK' text = 'Kundenreferenz' ) TO gt_textlist.
  APPEND VALUE #( sym = 'SVB' text = 'Verkaufsbüro' ) TO gt_textlist.
  APPEND VALUE #( sym = 'SVT' text = 'Referenzdokumenttyp' ) TO gt_textlist.
  APPEND VALUE #( sym = 'SWS' text = 'Warenausgangsstatus' ) TO gt_textlist.
  APPEND VALUE #( sym = 'TFB' text = 'Rechnungssaldo' ) TO gt_textlist.
  APPEND VALUE #( sym = 'TFK' text = 'Rechnung' ) TO gt_textlist.
  APPEND VALUE #( sym = 'TIS' text = 'Auftrags' ) TO gt_textlist.
  APPEND VALUE #( sym = 'TLB' text = 'Liefersaldo' ) TO gt_textlist.
  APPEND VALUE #( sym = 'TLF' text = 'Lieferung' ) TO gt_textlist.
  APPEND VALUE #( sym = 'TLS' text = 'Lieferungs' ) TO gt_textlist.
  APPEND VALUE #( sym = 'TOI' text = 'Auftragsposition' ) TO gt_textlist.
  APPEND VALUE #( sym = 'TSO' text = 'Auftrag anzeigen' ) TO gt_textlist.
  APPEND VALUE #( sym = 'TT1' text = '(Wechselkurs am Lieferdatum)' ) TO gt_textlist.
  APPEND VALUE #( sym = 'TT2' text = '(Wechselkurs am Rechnungdatum)' ) TO gt_textlist.
  APPEND VALUE #( sym = 'TT3' text = '(Aktueller Wechselkurs)' ) TO gt_textlist.
  APPEND VALUE #( sym = 'TT4' text = '(Unterschiedliche Währungen !!!)' ) TO gt_textlist.
  APPEND VALUE #( sym = 'TT5' text = '(Unterschiedliche Einheiten !!!)' ) TO gt_textlist.
  APPEND VALUE #( sym = 'TT6' text = 'Tag.Kurs' ) TO gt_textlist.
  APPEND VALUE #( sym = 'TW0' text = 'Prozentsatz' ) TO gt_textlist.
  APPEND VALUE #( sym = 'TW1' text = 'Durchschn.' ) TO gt_textlist.
  APPEND VALUE #( sym = 'TW2' text = 'Durchschnitt' ) TO gt_textlist.
  APPEND VALUE #( sym = 'TW3' text = 'Gesamtdurchschnitt' ) TO gt_textlist.
  APPEND VALUE #( sym = 'TW4' text = 'Gew.Durchschn.' ) TO gt_textlist.
  APPEND VALUE #( sym = 'TW5' text = 'Gew.Durchschnitt' ) TO gt_textlist.
  APPEND VALUE #( sym = 'TW6' text = 'Maximum' ) TO gt_textlist.
  APPEND VALUE #( sym = 'TW7' text = 'Minimum' ) TO gt_textlist.
  APPEND VALUE #( sym = 'TW8' text = 'Max.' ) TO gt_textlist.
  APPEND VALUE #( sym = 'TW9' text = 'Min.' ) TO gt_textlist.
  APPEND VALUE #( sym = 'TWS' text = 'Ges.Gew.Durchschn.' ) TO gt_textlist.
  APPEND VALUE #( sym = 'TWT' text = 'Gesamtewichtetedurchschnitt' ) TO gt_textlist.
  APPEND VALUE #( sym = 'TXA' text = 'Auswählbare Felder' ) TO gt_textlist.
  APPEND VALUE #( sym = 'TXB' text = 'Ausgewählte Felder' ) TO gt_textlist.
  APPEND VALUE #( sym = 'TXC' text = 'Feldname' ) TO gt_textlist.
  APPEND VALUE #( sym = 'TXD' text = 'Detail' ) TO gt_textlist.
  APPEND VALUE #( sym = 'TXF' text = 'Dateiname' ) TO gt_textlist.
  APPEND VALUE #( sym = 'TXG' text = 'Erstes Gruppierungsfeld' ) TO gt_textlist.
  APPEND VALUE #( sym = 'TXM' text = 'E-Mail-Adressen' ) TO gt_textlist.
  APPEND VALUE #( sym = 'TXR' text = 'Ges.' ) TO gt_textlist.
  APPEND VALUE #( sym = 'TXS' text = 'Gesamt' ) TO gt_textlist.
  APPEND VALUE #( sym = 'TXP' text = 'Zwischensumme' ) TO gt_textlist.
  APPEND VALUE #( sym = 'TXT' text = 'Gesamttotal' ) TO gt_textlist.
  APPEND VALUE #( sym = 'TXU' text = 'Benutzer' ) TO gt_textlist.
  APPEND VALUE #( sym = 'TXY' text = 'Aggregationseinstellungen' ) TO gt_textlist.
  APPEND VALUE #( sym = 'TXZ' text = 'Text Funktionen' ) TO gt_textlist.
  APPEND VALUE #( sym = 'TZ0' text = 'VERKAUFE' ) TO gt_textlist.
  APPEND VALUE #( sym = 'TZ1' text = 'DURCHSCHNITT' ) TO gt_textlist.
  APPEND VALUE #( sym = 'TZ2' text = 'GESAMTDURCHSCHNITT' ) TO gt_textlist.
  APPEND VALUE #( sym = 'TZ3' text = 'GEWDURCHSCHNITT' ) TO gt_textlist.
  APPEND VALUE #( sym = 'TZ4' text = 'GESAMTGEWICHTETEDURCHSCHNITT' ) TO gt_textlist.
  APPEND VALUE #( sym = 'TZC' text = 'TAGESKURS' ) TO gt_textlist.
  APPEND VALUE #( sym = 'TZM' text = 'MAX' ) TO gt_textlist.
  APPEND VALUE #( sym = 'TZL' text = 'MIN' ) TO gt_textlist.
  APPEND VALUE #( sym = 'TZP' text = 'PROZENTSATZ' ) TO gt_textlist.
  APPEND VALUE #( sym = 'TZS' text = 'GESAMT' ) TO gt_textlist.
  APPEND VALUE #( sym = 'TZT' text = 'GESAMTSUMME' ) TO gt_textlist.
  APPEND VALUE #( sym = 'Y01' text = 'Verkauf' ) TO gt_textlist.
  APPEND VALUE #( sym = 'Y02' text = 'Lieferung' ) TO gt_textlist.
  APPEND VALUE #( sym = 'Y03' text = 'Rechnung' ) TO gt_textlist.
  APPEND VALUE #( sym = 'Y04' text = 'Material' ) TO gt_textlist.
  APPEND VALUE #( sym = 'Y05' text = 'Partner' ) TO gt_textlist.
  APPEND VALUE #( sym = 'Y06' text = 'Menge' ) TO gt_textlist.
  APPEND VALUE #( sym = 'Y07' text = 'Preis' ) TO gt_textlist.
  APPEND VALUE #( sym = 'Y08' text = 'Betrag' ) TO gt_textlist.
  APPEND VALUE #( sym = 'Y08' text = 'Betrag' ) TO gt_textlist.
  APPEND VALUE #( sym = 'Y09' text = 'Andere' ) TO gt_textlist.
  APPEND VALUE #( sym = 'Z01' text = 'Verkaufs Analysis' ) TO gt_textlist.

ENDFORM.


FORM set_screen_de.

  %_s_abgru_%_app_%-text = 'Absagegrund'.
  %_s_auart_%_app_%-text = 'Verkaufsbelegart'.
  %_s_audat_%_app_%-text = 'Verkaufsdatum'.
  %_s_augbl_%_app_%-text = 'Ausgleichsbeleg'.
  %_s_belnr_%_app_%-text = 'Buchungsbeleg'.
  %_s_bldat_%_app_%-text = 'Warenausgangsdatum'.
  %_s_bwtar_%_app_%-text = 'Bewertungsart'.
  %_s_charg_%_app_%-text = 'Charge'.
  %_s_cntry_%_app_%-text = 'Bestimmungsland'.
  %_s_edatu_%_app_%-text = 'Lieferdatum'.
  %_s_erdat_%_app_%-text = 'Angelegt am'.
  %_s_ernam_%_app_%-text = 'Angelegt von'.
  %_s_fkdat_%_app_%-text = 'Rechnungdatum'.
  %_s_fstat_%_app_%-text = 'Status'.
  %_s_gbsta_%_app_%-text = 'Gesamtstatus'.
  %_s_inco1_%_app_%-text = 'Incoterms'.
  %_s_lfbel_%_app_%-text = 'Auslieferungsbeleg'.
  %_s_kdgrp_%_app_%-text = 'Kundengruppe'.
  %_s_kunnr_%_app_%-text = 'Auftraggeber'.
  %_s_kunre_%_app_%-text = 'Rechnungsempfänger'.
  %_s_kunrg_%_app_%-text = 'Regulierer'.
  %_s_kunwe_%_app_%-text = 'Warenempfänger'.
  %_s_parvw_%_app_%-text = 'Partnerrolle'.
  %_s_partn_%_app_%-text = '└ Partner'.
  %_s_lgort_%_app_%-text = 'Lagerort'.
  %_s_matkl_%_app_%-text = 'Warengruppe'.
  %_s_matnr_%_app_%-text = 'Material'.
  %_s_mblnr_%_app_%-text = 'Materialbeleg'.
  %_s_mtart_%_app_%-text = 'Materialart'.
  %_s_mvgr1_%_app_%-text = 'Materialgruppe 1'.
  %_s_mvgr2_%_app_%-text = 'Materialgruppe 2'.
  %_s_mvgr3_%_app_%-text = 'Materialgruppe 3'.
  %_s_mvgr4_%_app_%-text = 'Materialgruppe 4'.
  %_s_mvgr5_%_app_%-text = 'Materialgruppe 5'.
  %_s_posnr_%_app_%-text = 'Position'.
  %_s_regio_%_app_%-text = 'Region'.
  %_s_spart_%_app_%-text = 'Sparte'.
  %_s_vbeln_%_app_%-text = 'Verkaufsbeleg'.
  %_s_vgtyp_%_app_%-text = 'Vorgängerbelegtyp'.
  %_s_vkaus_%_app_%-text = 'Verwendung'.
  %_s_vkbur_%_app_%-text = 'Verkaufsbüro'.
  %_s_vkgrp_%_app_%-text = 'Verkäufergruppe'.
  %_s_vkorg_%_app_%-text = 'Verkaufsorganisation'.
  %_s_vrkms_%_app_%-text = 'Belegeinheit'.
  %_s_vstel_%_app_%-text = 'Versandstelle'.
  %_s_vtweg_%_app_%-text = 'Vertriebsweg'.
  %_s_waers_%_app_%-text = 'Belegwährung'.
  %_s_wbsta_%_app_%-text = 'Warenbewegungsstatus'.
  %_s_werks_%_app_%-text = 'Werk'.
  %_s_fkbel_%_app_%-text = 'Rechnungsbeleg'.
  %_s_zterm_%_app_%-text = 'Zahlungsbedingung'.

  %_s_abgru_%_app_%-to_text = 'bis'.
  %_s_auart_%_app_%-to_text = 'bis'.
  %_s_audat_%_app_%-to_text = 'bis'.
  %_s_augbl_%_app_%-to_text = 'bis'.
  %_s_belnr_%_app_%-to_text = 'bis'.
  %_s_bldat_%_app_%-to_text = 'bis'.
  %_s_bwtar_%_app_%-to_text = 'bis'.
  %_s_charg_%_app_%-to_text = 'bis'.
  %_s_cntry_%_app_%-to_text = 'bis'.
  %_s_edatu_%_app_%-to_text = 'bis'.
  %_s_erdat_%_app_%-to_text = 'bis'.
  %_s_ernam_%_app_%-to_text = 'bis'.
  %_s_fkdat_%_app_%-to_text = 'bis'.
  %_s_fstat_%_app_%-to_text = 'bis'.
  %_s_gbsta_%_app_%-to_text = 'bis'.
  %_s_inco1_%_app_%-to_text = 'bis'.
  %_s_lfbel_%_app_%-to_text = 'bis'.
  %_s_kdgrp_%_app_%-to_text = 'bis'.
  %_s_kunnr_%_app_%-to_text = 'bis'.
  %_s_kunre_%_app_%-to_text = 'bis'.
  %_s_kunrg_%_app_%-to_text = 'bis'.
  %_s_kunwe_%_app_%-to_text = 'bis'.
  %_s_partn_%_app_%-to_text = 'bis'.
  %_s_lgort_%_app_%-to_text = 'bis'.
  %_s_matkl_%_app_%-to_text = 'bis'.
  %_s_matnr_%_app_%-to_text = 'bis'.
  %_s_mblnr_%_app_%-to_text = 'bis'.
  %_s_mtart_%_app_%-to_text = 'bis'.
  %_s_mvgr1_%_app_%-to_text = 'bis'.
  %_s_mvgr2_%_app_%-to_text = 'bis'.
  %_s_mvgr3_%_app_%-to_text = 'bis'.
  %_s_mvgr4_%_app_%-to_text = 'bis'.
  %_s_mvgr5_%_app_%-to_text = 'bis'.
  %_s_posnr_%_app_%-to_text = 'bis'.
  %_s_regio_%_app_%-to_text = 'bis'.
  %_s_spart_%_app_%-to_text = 'bis'.
  %_s_vbeln_%_app_%-to_text = 'bis'.
  %_s_vgtyp_%_app_%-to_text = 'bis'.
  %_s_vkaus_%_app_%-to_text = 'bis'.
  %_s_vkbur_%_app_%-to_text = 'bis'.
  %_s_vkgrp_%_app_%-to_text = 'bis'.
  %_s_vkorg_%_app_%-to_text = 'bis'.
  %_s_vrkms_%_app_%-to_text = 'bis'.
  %_s_vstel_%_app_%-to_text = 'bis'.
  %_s_vtweg_%_app_%-to_text = 'bis'.
  %_s_waers_%_app_%-to_text = 'bis'.
  %_s_wbsta_%_app_%-to_text = 'bis'.
  %_s_werks_%_app_%-to_text = 'bis'.
  %_s_fkbel_%_app_%-to_text = 'bis'.
  %_s_zterm_%_app_%-to_text = 'bis'.

ENDFORM.



FORM submit_demo.
  DATA st_date TYPE erdat.
  DATA en_date TYPE erdat.
  DATA year_num TYPE c LENGTH 4.

  CASE gv_clicked_row.
    WHEN 1.
      go_main->clear_selection( ).
      APPEND VALUE #( sign = 'I' option = 'EQ' low = 'VKORG' ) TO s_fnams          .
      APPEND VALUE #( sign = 'I' option = 'EQ' low = 'VTWEG' ) TO s_fnams          .
      APPEND VALUE #( sign = 'I' option = 'EQ' low = 'SPART' ) TO s_fnams          .

      p_yval = '16'.
      p_excl = 'X'.
      p_wahr = 'USD'.
      p_cur1 = '03'.
      p_path = '${DESKTOP}\Sales_${DATE}'.
      p_wrks = 'X'.
      p_opxl = 'X'.

      CALL FUNCTION 'OIL_LAST_DAY_OF_PREVIOUS_MONTH'
        EXPORTING
          i_date_old = sy-datum
        IMPORTING
          e_date_new = st_date.

      CALL FUNCTION 'HR_JP_MONTH_BEGIN_END_DATE'
        EXPORTING
          iv_date             = st_date
        IMPORTING
          ev_month_begin_date = st_date
          ev_month_end_date   = en_date.

      APPEND VALUE #( sign = 'I' option = 'BT' low = st_date high = en_date ) TO s_fkdat.

    WHEN 2.
      go_main->clear_selection( ).
      APPEND VALUE #( sign = 'I' option = 'EQ' low = 'VKPER' ) TO s_fnams          .
      APPEND VALUE #( sign = 'I' option = 'EQ' low = 'MATKL' ) TO s_fnams          .

      p_excl = 'X'.
      p_addp = 'X'.
      p_path = '${DESKTOP}\MATKL_${PREYEAR}'.
      p_opxl = 'X'.

      year_num = sy-datum(4).
      st_date = year_num && |0101|.
      en_date = year_num && |1231|.

      APPEND VALUE #( sign = 'I' option = 'BT' low = st_date high = en_date ) TO s_audat.

    WHEN 3.
      go_main->clear_selection( ).
      APPEND VALUE #( sign = 'I' option = 'EQ' low = 'WE_CNTY' ) TO s_fnams          .
      APPEND VALUE #( sign = 'I' option = 'EQ' low = 'WE_REGI' ) TO s_fnams          .

      p_excl = 'X'.
      p_addp = 'X'.
      p_path = '${DESKTOP}\REGIONAL_FIRST_QUARTER'.
      p_opxl = 'X'.
      p_disp = '3'.
      p_zero = 'X'.
      p_yval = '16'.

      year_num = sy-datum(4) - 1 .
      st_date = year_num && |0101|.
      en_date = year_num && |0331|.

      LOOP AT s_aggrs ASSIGNING FIELD-SYMBOL(<fs_aggrs>) WHERE low EQ 'FK_AMNT'.
        <fs_aggrs>-high = 'M'.
      ENDLOOP.

      APPEND VALUE #( sign = 'I' option = 'BT' low = st_date high = en_date ) TO s_edatu.

  ENDCASE.

  IF gv_clicked_row IS NOT INITIAL.
    go_main->fill_groups( ).
    go_main->fill_aggrs( ).
    go_main->fill_choices( EXPORTING pv_only_fill = abap_true ).
  ENDIF.

ENDFORM.
