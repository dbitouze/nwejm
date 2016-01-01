%%
%% This is file `nwejm.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% nwejm.dtx  (with options: `class')
%% -------:| -----------------------------------------------------------------
%%   nwejm:| Class for the journal "North-Western European Journal of Mathematics"
%%  Author:| Denis Bitouze
%%  E-mail:| denis.bitouze@lmpa.univ-littoral.fr
%% License:| Released under the LaTeX Project Public License v1.3c or later
%%     See:| http://www.latex-project.org/lppl.txt
%% 
\RequirePackage{xparse}
\RequirePackage{l3keys2e}
\IfFileExists{l3sort.sty}{
  \RequirePackage{l3sort}
}{
}
\RequirePackage{etoolbox}
\NeedsTeXFormat{LaTeX2e}[1999/12/01]
\ProvidesExplClass
  {nwejm}
  {2015/09/30}
  {1.00}
  {
    Class for the journal "North-Western European Journal of Mathematics".
  }
\ExplSyntaxOn
\msg_new:nnnn{nwejm}{issue-number-needed}{Option~`#1'~needed!}
{Please~specify~`#1=<number>', ~otherwise~`<number>'~will~be~set~to
  ~`\int_use:N\c__nwejm_first_issue_number_int'.}%
\msg_new:nnnn{nwejmart}{unknown-choice}{Choice~`#3'~invalid!}
{Please~specify~#1=#2.}%
\msg_new:nnn{nwejmart}{unknown-tag}{There~ isn't~ any~ affiliation~ tagged~
  with~ `#1'.~ This~ one~ will~ be~ ignored.}%
\msg_new:nnn{nwejmart}{Unknown~language}{The~ option~ `#1'~ you~ passed~ isn't~
  a~ valid~ language~ name~ (only~ `english',~ `french',~ `ngerman',~ `german',~
  `dutch'~ are~ accepted).~ `english'~ will~ be~ used~ instead.}%
\msg_new:nnn{nwejmart}{No~keyword}{You~ haven't~ specify~ any~ keyword~ for~
  this~ article!}%
\msg_new:nnn{nwejmart}{No~MSC}{You~ haven't~ specify~ any~ Mathematical~
  Subject~ Classification~ (MSC)~ for~ this~ article!}%
\msg_new:nnn{nwejmart}{No~abstract}{You~ haven't~ specify~ any~ abstract~ for~
  this~ article!}%
\dim_const:Nn \c__nwejm_pagegrid_dim { 1mm}
\bool_new:N \g__nwejm_for_authors_bool
\bool_new:N \g__nwejm_cover_bool
\bool_new:N \g__nwejm_coverpage_bool
\bool_new:N \g__nwejm_inside_pages_bool
\keys_define:nn { nwejm }
{
  pagegrid .dim_gset:N = \g__nwejm_pagegrid_dim,
  pagegrid .default:n = {\c__nwejm_pagegrid_dim},
  forauthors .code:n = {%
    \bool_gset_true:N \g__nwejm_for_authors_bool%
    \bool_gset_true:N \g__nwejm_inside_pages_bool%
  },%
  forprinter .bool_gset:N = \g__nwejm_for_printer_bool,
  output .choice:,
  output / frontcover .code:n = {%
    \bool_gset_true:N \g__nwejm_for_printer_bool%
    \bool_gset_true:N \g__nwejm_cover_bool%
  },%
  output / insidepages .code:n = {%
    \bool_gset_true:N \g__nwejm_for_printer_bool%
    \bool_gset_true:N \g__nwejm_inside_pages_bool%
  },%
  output / backcover .code:n = {%
    \bool_gset_true:N \g__nwejm_for_printer_bool%
  },%
  output / web .code:n = {%
  },%
}%
\bool_gset_true:N \g__nwejm_no_inside_backcover_bool
\tl_new:N \g__nwejm_language_tl
\keys_define:nn { nwejm }
{
  10pt .code:n = {%
    \PassOptionsToClass{10pt}{book}
  },%
  11pt .code:n = {%
    \PassOptionsToClass{11pt}{book}
  },%
  12pt .code:n = {%
    \PassOptionsToClass{12pt}{book}
  },%
}%
\ProcessKeysOptions { nwejm }
\LoadClass { book }
\PassOptionsToPackage{export}{adjustbox}%
\PassOptionsToPackage{fleqn}{mathtools}%
\PassOptionsToPackage{french,ngerman,dutch,english}{cleveref}
\AtBeginDocument{
  \LoadDictionaryFor{french}{nwejm}
  \LoadDictionaryFor{english}{nwejm}
  \LoadDictionaryFor{dutch}{nwejm}
  \LoadDictionaryFor{german}{nwejm}
}
\PassOptionsToPackage{french,ngerman,dutch,english}{babel}
\PassOptionsToPackage{french,ngerman,dutch,english}{varioref}
\RequirePackage[l2tabu,orthodox]{nag}
\RequirePackage[group=false,subpreambles,sort]{standalone}%
\pdftex_if_engine:TF
  {
    \RequirePackage[T1]{fontenc}
    \RequirePackage[utf8]{inputenc}
  }{
    \RequirePackage{fontspec}
  }
\RequirePackage[pagestyles]{titlesec}%
\RequirePackage{graphicx}%
\RequirePackage{import}%
\bool_if:nT { \g__nwejm_for_authors_bool } {
  \RequirePackage{draftwatermark}[2006/06/30]%
}
\RequirePackage{adjustbox}%
\RequirePackage{zref-totpages}
\RequirePackage{zref-xr}%
\RequirePackage[multiple]{footmisc}%
\RequirePackage{xspace}%
\RequirePackage[autostyle]{csquotes}%
\RequirePackage[%
backend=biber,
defernumbers=true,
dashed=false,
firstinits,
uniquename=init,
style=authoryear,
backref
]{biblatex}%
\RequirePackage{array}
\RequirePackage{booktabs}
\RequirePackage{mathtools}
\RequirePackage{mathrsfs}
\RequirePackage{esvect}
\RequirePackage[easyscsl,noDcommand]{kpfonts}
\RequirePackage{geometry}
\RequirePackage{translations}%
\RequirePackage{fmtcount}%
\RequirePackage{varioref}
\RequirePackage{babel}%
\RequirePackage{tocvsec2}
\RequirePackage{etoc}%
\RequirePackage[babel=true]{microtype}%
\RequirePackage[useregional]{datetime2}%
\RequirePackage[inline]{enumitem}%
\RequirePackage{environ}
\RequirePackage[foreground]{pagegrid}%
\RequirePackage{amsthm}
\RequirePackage{thmtools}
\RequirePackage{datatool}%
\RequirePackage{placeins}%
\RequirePackage{hyperref}%
\AtBeginDocument{%
  \hypersetup{hidelinks,hypertexnames=false}%
}%
\RequirePackage[all]{hypcap}
\RequirePackage[numbered]{bookmark}%
\RequirePackage[nowarn]{glossaries}%
\RequirePackage{cleveref}%
\makeglossaries
\setglossarystyle{indexhypergroup}
\setacronymstyle{long-sc-short}
\glsdisablehyper
\int_new:N \g__nwejm_articles_int
\int_const:Nn \c__nwejm_first_issue_number_int { 1 }
\int_const:Nn \c__nwejm_first_issue_year_int   { 2016 }
\int_const:Nn \c__nwejm_first_issue_month_int  { 1 }
\int_const:Nn \c__nwejm_interval_in_months_int { 6 }
\tl_const:Nn \c__nwejm_editorinchief_string_tl {Editor~in~Chief}
\tl_const:Nn \c__nwejm_associate_editors_string_tl {Associate~Editors}
\tl_const:Nn \c__nwejm_managing_editor_string_tl {Managing~Editor}
\tl_const:Nn \c__nwejm_field_editor_string_tl {Field~Editor}
\tl_const:Nn \c__nwejm_editorial_secretariat_string_tl {Secretariat}
\tl_const:Nn \c__nwejm_phone_string_tl {Tel.}
\tl_const:Nn \c__nwejm_issn_string_tl {\textsc{issn}}
\tl_const:Nn \c__nwejm_isbn_string_tl {\textsc{isbn}}
\tl_const:Nn \c__nwejm_latexclass_string_tl {\LaTeX{}~class}
\tl_const:Nn \c__nwejm_printer_string_tl {Printer}
\tl_const:Nn \c__nwejm_configuration_file_string_tl {nwejm.cfg}
\tl_const:Nn \c__nwejm_frontcover_header_string_tl {
  \space\textendash\space\int_use:N\g__nwejm_issue_number_int%
}
\tl_const:Nn \c__nwejm_backmatter_directory_string_tl {backmatter}
\tl_const:Nn \c__nwejm_issue_backcover_text_file_string_tl {backcover}
\tl_const:Nn \c__nwejm_backcover_page_file_string_tl {\c__nwejm_backmatter_directory_string_tl/\c__nwejm_issue_backcover_text_file_string_tl}
\tl_const:Nn \c__nwejm_authors_instructions_file_extension_tl {ain}
\tl_const:Nn \c__nwejm_authors_instructions_file_tl {\c_job_name_tl.\c__nwejm_authors_instructions_file_extension_tl}
\tl_const:Nn \c__nwejm_authors_instructions_string_tl {Instructions~to~authors}
\tl_const:Nn \c__nwejm_date_received_tl {Received}
\tl_const:Nn \c__nwejm_date_accepted_tl {Accepted}
\tl_const:Nn \c__nwejm_date_online_tl {Online}
\tl_const:Nn \c__nwejm_dates_separator_tl {/}
\tl_const:Nn \c__nwejm_images_directory_string_tl {images}
\tl_const:Nn \c__nwejm_issue_images_path_string_tl {\c__nwejm_images_directory_string_tl}
\tl_const:Nn \c__nwejm_preliminary_version_string_tl {%
  This~document~is~a~draft~that~lets~you~check~the~integrity~of~original~text~and
  bibliography~of~your~article~to~appear~in~the~next~issue~of~the
  \c__nwejm_journal_title_string_tl.~The~current~layout~may~not~be~the~final~one.%
}
\tl_const:Nn \c__nwejm_msc_string_tl {\textsc{msc}}
\tl_const:Nn \c__nwejm_colon_tl {
  \ifcurrentbaselanguage{french}{\FBcolonspace}{}:
  % \ifundef{\Fcolonspace}{\FBcolonspace}{\Fcolonspace}:
}
\tl_const:Nn \c__nwejm_aside_string_tl {--}
\tl_const:Nn \c__nwejm_draftwatermark_string_tl {draft}
\tl_const:Nn \c__nwejm_issue_bib_file_suffix_string_tl {__nwejm}
\tl_const:Nn \c__nwejm_issue_bib_file_string_tl {\c_job_name_tl\c__nwejm_issue_bib_file_suffix_string_tl.bib}
\tl_const:Nn \c__nwejm_issue_bib_path_string_tl {\c__nwejm_issue_bib_file_string_tl}
\tl_const:Nn \c__nwejm_issue_bib_key_tl {\int_use:N \g__nwejm_issue_number_int}
\tl_const:Nn \c__nwejm_journal_short_title_string_tl {\textsc{nwejm}}
\tl_const:Nn \c__nwejm_journal_title_string_tl {
  North-Western~European~Journal~of~Mathematics%
}
\tl_const:Nn \c__nwejm_nwejm_class_name_tl {nwejm}
\tl_const:Nn \c__nwejm_nwejmarticle_class_name_tl {nwejmart}
\bool_new:N \g__nwejm_frontcover_bool
\bool_new:N \g__nwejm_inside_frontcover_bool
\bool_new:N \g__nwejm_inside_backcover_bool
\bool_new:N \g__nwejm_frontmatter_bool
\bool_new:N \g__nwejm_mainmatter_bool
\bool_new:N \g__nwejm_backmatter_bool
\bool_new:N \g__nwejm_backcover_bool
\bool_new:N \g__nwejm_date_specified_bool
\dim_const:Nn \c__nwejm_layoutheight_dim { 240mm}
\dim_const:Nn \c__nwejm_layoutwidth_dim  { 170mm}
\dim_const:Nn \c__nwejm_printer_layoutoffset_dim { 5mm}
\bool_if:NTF {\g__nwejm_for_printer_bool} {
  \dim_const:Nn \c__nwejm_potential_layoutoffset_dim { \c__nwejm_printer_layoutoffset_dim}
}{
  \dim_const:Nn \c__nwejm_potential_layoutoffset_dim {\c_zero_dim}
}
\int_const:Nn \c__nwejm_thresold_a_int {68}
\int_const:Nn \c__nwejm_thresold_b_int {80}
\int_const:Nn \c__nwejm_thresold_c_int {88}
\int_const:Nn \c__nwejm_thresold_d_int {96}
\int_const:Nn \c__nwejm_thresold_e_int {104}
\int_const:Nn \c__nwejm_thresold_f_int {120}
\dim_const:Nn \c__nwejm_bindingoffset_a_dim {3mm}
\dim_const:Nn \c__nwejm_bindingoffset_b_dim {3.5mm}
\dim_const:Nn \c__nwejm_bindingoffset_c_dim {3.9mm}
\dim_const:Nn \c__nwejm_bindingoffset_d_dim {4.1mm}
\dim_const:Nn \c__nwejm_bindingoffset_e_dim {4.5mm}
\dim_const:Nn \c__nwejm_bindingoffset_f_dim {5mm}
\zexternaldocument[self]{\jobname}%
\int_new:N \g__nwejm_total_pages_number_int%
\int_new:N \g__nwejm_total_inside_pages_number_int%
\int_gset:Nn \g__nwejm_total_pages_number_int { \zref@extractdefault{selfLastPage}{abspage}{0} }
\int_gset:Nn \g__nwejm_total_inside_pages_number_int { \g__nwejm_total_pages_number_int - 4 }
\int_compare:nNnTF {\g__nwejm_total_inside_pages_number_int}<{\c__nwejm_thresold_a_int}
{
  \dim_const:Nn \c__nwejm_printer_bindingoffset_dim { \c_zero_dim }
}{
  \int_compare:nNnTF {\g__nwejm_total_inside_pages_number_int}<{\c__nwejm_thresold_b_int}
  {
    \dim_const:Nn \c__nwejm_printer_bindingoffset_dim { \c__nwejm_bindingoffset_a_dim }
  }{
    \int_compare:nNnTF {\g__nwejm_total_inside_pages_number_int}<{\c__nwejm_thresold_c_int}
    {
      \dim_const:Nn \c__nwejm_printer_bindingoffset_dim { \c__nwejm_bindingoffset_b_dim }
    }{
      \int_compare:nNnTF {\g__nwejm_total_inside_pages_number_int}<{\c__nwejm_thresold_d_int}
      {
        \dim_const:Nn \c__nwejm_printer_bindingoffset_dim { \c__nwejm_bindingoffset_c_dim }
      }{
        \int_compare:nNnTF {\g__nwejm_total_inside_pages_number_int}<{\c__nwejm_thresold_e_int}
        {
          \dim_const:Nn \c__nwejm_printer_bindingoffset_dim { \c__nwejm_bindingoffset_d_dim }
        }{
          \int_compare:nNnTF {\g__nwejm_total_inside_pages_number_int}<{\c__nwejm_thresold_f_int}
          {
            \dim_const:Nn \c__nwejm_printer_bindingoffset_dim { \c__nwejm_bindingoffset_e_dim }
          }{
            \dim_const:Nn \c__nwejm_printer_bindingoffset_dim { \c__nwejm_bindingoffset_f_dim }
          }
        }
      }
    }
  }
}
\bool_if:NTF {\g__nwejm_cover_bool} {
  \dim_const:Nn \c__nwejm_potential_bindingoffset_dim { \c__nwejm_printer_bindingoffset_dim }
}{
  \dim_const:Nn \c__nwejm_potential_bindingoffset_dim {\c_zero_dim}
}
\dim_const:Nn \c__nwejm_paperheight_dim { \c__nwejm_layoutheight_dim+2\c__nwejm_potential_layoutoffset_dim}
\bool_if:NTF {\g__nwejm_cover_bool} {
  \dim_const:Nn \c__nwejm_paperwidth_dim  {
    \c__nwejm_layoutwidth_dim
    +
    \c__nwejm_potential_layoutoffset_dim
    +\c__nwejm_potential_bindingoffset_dim
  }
}{
  \dim_const:Nn \c__nwejm_paperwidth_dim  {
    \c__nwejm_layoutwidth_dim
    +
    2
    \c__nwejm_potential_layoutoffset_dim
    +\c__nwejm_potential_bindingoffset_dim
  }
}
\dim_const:Nn \c__nwejm_topmargin_dim   { 20mm}
\dim_const:Nn \c__nwejm_topmargin_frontcover_dim {
  \c__nwejm_topmargin_dim
  + 30mm
}
\dim_const:Nn \c__nwejm_topmargin_inside_cover_dim   {
  \c__nwejm_topmargin_dim
  % +10mm
}
\dim_const:Nn \c__nwejm_topmargin_front_matter_dim   {
  \c__nwejm_topmargin_inside_cover_dim
}
\dim_const:Nn \c__nwejm_headsep_dim     { 7.5mm}
\dim_const:Nn \c__nwejm_headsep_frontcover_dim {
  \c__nwejm_headsep_dim
  +31mm
  % -\c__nwejm_potential_layoutoffset_dim
}
\dim_const:Nn \c__nwejm_headsep_inside_frontcover_dim {
  \c__nwejm_headsep_dim
  +7mm
}
\dim_const:Nn \c__nwejm_headsep_front_matter_dim {
  \c__nwejm_headsep_inside_frontcover_dim
}
\dim_const:Nn \c__nwejm_headheight_dim  { 10mm }
\dim_const:Nn \c__nwejm_botmargin_dim   { 30mm}
\dim_const:Nn \c__nwejm_footskip_dim    { 10mm}
\dim_const:Nn \c__nwejm_innermargin_dim { 23mm }
\dim_const:Nn \c__nwejm_outermargin_dim { 30mm }
\dim_const:Nn \c__nwejm_inside_cover_box_width_dim { 150mm }%
\dim_const:Nn \c__nwejm_innermargin_inside_cover_dim {
  (\c__nwejm_layoutwidth_dim - \c__nwejm_inside_cover_box_width_dim)/2
  - \c__nwejm_potential_bindingoffset_dim
  % + \c__nwejm_adjustmargin_dim
}
\dim_const:Nn \c__nwejm_outermargin_inside_cover_dim {
  (\c__nwejm_layoutwidth_dim - \c__nwejm_inside_cover_box_width_dim)/2
  % - \c__nwejm_adjustmargin_dim
}
\dim_const:Nn \c__nwejm_innermargin_backcover_dim { 10mm }
\dim_const:Nn \c__nwejm_outermargin_backcover_dim { \c__nwejm_innermargin_backcover_dim }
\dim_const:Nn \c__nwejm_topmargin_backcover_dim { \c__nwejm_innermargin_backcover_dim }
\dim_const:Nn \c__nwejm_bottommargin_backcover_dim { \c__nwejm_innermargin_backcover_dim }
\dim_const:Nn \c__nwejm_front_matter_extra_innermargin_dim    { \c_zero_dim }
\dim_const:Nn \c__nwejm_front_matter_extra_outermargin_dim    { \c_zero_dim }
\dim_const:Nn \c__nwejm_inside_cover_offset_dim { \c_zero_dim }%
\geometry{%
  papersize={\c__nwejm_paperwidth_dim,\c__nwejm_paperheight_dim}
}
\bool_if:NTF {\g__nwejm_cover_bool} {
  \tl_const:Nn \c__nwejm_frontcover_geometry_tl {%
    ,layoutsize={\c__nwejm_layoutwidth_dim,\c__nwejm_layoutheight_dim}
    ,layoutvoffset=\c__nwejm_potential_layoutoffset_dim
    ,bindingoffset=\c__nwejm_potential_bindingoffset_dim
    ,top=\c__nwejm_topmargin_frontcover_dim
    ,headsep=\c__nwejm_headsep_frontcover_dim
    ,headheight=\c__nwejm_headheight_dim
    ,bottom=\c_zero_dim
    ,footskip=\c_zero_dim
    ,outer=\c_zero_dim
    ,inner=\c__nwejm_potential_layoutoffset_dim
    ,nomarginpar%
  }%
}{
  \tl_const:Nn \c__nwejm_frontcover_geometry_tl {%
    ,layoutsize={\c__nwejm_layoutwidth_dim,\c__nwejm_layoutheight_dim}
    ,layoutoffset=\c__nwejm_potential_layoutoffset_dim
    ,bindingoffset=\c__nwejm_potential_bindingoffset_dim
    ,top=\c__nwejm_topmargin_frontcover_dim
    ,headsep=\c__nwejm_headsep_frontcover_dim
    ,headheight=\c__nwejm_headheight_dim
    ,bottom=\c_zero_dim
    ,footskip=\c_zero_dim
    ,hmargin=\c__nwejm_potential_layoutoffset_dim
    ,nomarginpar%
  }%
}
\bool_if:NTF {\g__nwejm_cover_bool} {
  \tl_const:Nn \c__nwejm_inside_cover_geometry_tl {%
    ,layoutsize={\c__nwejm_layoutwidth_dim,\c__nwejm_layoutheight_dim}
    ,layoutvoffset=\c__nwejm_potential_layoutoffset_dim
    ,bindingoffset=\c__nwejm_potential_bindingoffset_dim
    ,top=\c__nwejm_topmargin_inside_cover_dim
    ,headheight=\c__nwejm_headheight_dim
    ,headsep=\c__nwejm_headsep_inside_frontcover_dim
    ,bottom=\c__nwejm_botmargin_dim
    ,footskip=\c__nwejm_footskip_dim
    ,inner=\c__nwejm_innermargin_inside_cover_dim-\c__nwejm_potential_layoutoffset_dim
    ,outer=\c__nwejm_outermargin_inside_cover_dim+\c__nwejm_potential_layoutoffset_dim
    ,nomarginpar%
  }%
}{
  \tl_const:Nn \c__nwejm_inside_cover_geometry_tl {%
    ,layoutsize={\c__nwejm_layoutwidth_dim,\c__nwejm_layoutheight_dim}
    ,layoutoffset=\c__nwejm_potential_layoutoffset_dim
    ,bindingoffset=\c__nwejm_potential_bindingoffset_dim
    ,top=\c__nwejm_topmargin_inside_cover_dim
    ,headheight=\c__nwejm_headheight_dim
    ,headsep=\c__nwejm_headsep_inside_frontcover_dim
    ,bottom=\c__nwejm_botmargin_dim
    ,footskip=\c__nwejm_footskip_dim
    % ,inner=1cm
    % ,outer=1cm
    ,inner=\c__nwejm_innermargin_inside_cover_dim
    ,outer=\c__nwejm_outermargin_inside_cover_dim
    ,nomarginpar%
  }%
}
\tl_const:Nn \c__nwejm_front_matter_geometry_tl {%
  ,layoutsize={\c__nwejm_layoutwidth_dim,\c__nwejm_layoutheight_dim}
  ,layoutoffset=\c__nwejm_potential_layoutoffset_dim
  % ,bindingoffset=\c__nwejm_potential_bindingoffset_dim
  ,top=\c__nwejm_topmargin_front_matter_dim%
  ,headheight=\c__nwejm_headheight_dim
  ,headsep=\c__nwejm_headsep_front_matter_dim
  ,bottom=\c__nwejm_botmargin_dim
  ,footskip=\c__nwejm_footskip_dim%
  ,inner=\c__nwejm_innermargin_dim+\c__nwejm_front_matter_extra_innermargin_dim%
  ,outer=\c__nwejm_outermargin_dim+\c__nwejm_front_matter_extra_outermargin_dim%
  ,nomarginpar%
}%
\tl_const:Nn \c__nwejm_backcover_geometry_tl {%
  ,layoutsize={\c__nwejm_layoutwidth_dim,\c__nwejm_layoutheight_dim}
  ,layoutoffset=\c__nwejm_potential_layoutoffset_dim
  % ,bindingoffset=\c__nwejm_potential_bindingoffset_dim
  ,top=\c__nwejm_topmargin_backcover_dim%
  % ,top=\c__nwejm_topmargin_dim-15mm%
  % ,headheight=\c__nwejm_headheight_dim
  % ,headsep=\c__nwejm_headsep_dim-18mm
  ,bottom=\c__nwejm_bottommargin_backcover_dim
  % ,footskip=\c__nwejm_footskip_dim
  ,inner=\c__nwejm_innermargin_backcover_dim
  ,outer=\c__nwejm_outermargin_backcover_dim
}
\tl_const:Nn \c__nwejm_main_geometry_tl {%
  ,layoutsize={\c__nwejm_layoutwidth_dim,\c__nwejm_layoutheight_dim}
  ,layoutoffset=\c__nwejm_potential_layoutoffset_dim
  ,textwidth=\c__nwejm_layoutwidth_dim*3/4
  ,textheight=\c__nwejm_layoutheight_dim*3/4
  % ,marginratio={4\string :6,5\string :7}
  ,inner=\c__nwejm_innermargin_dim
  ,headheight=\c__nwejm_headheight_dim
  ,footskip=\c__nwejm_footskip_dim
  %
  % ,layoutsize={\c__nwejm_layoutwidth_dim,\c__nwejm_layoutheight_dim}
  % ,layoutoffset=\c__nwejm_potential_layoutoffset_dim
  % % ,bindingoffset=\c__nwejm_potential_bindingoffset_dim
  % ,top=\c__nwejm_topmargin_dim%
  % ,headheight=\c__nwejm_headheight_dim
  % ,headsep=\c__nwejm_headsep_dim
  % ,bottom=\c__nwejm_botmargin_dim
  % ,footskip=\c__nwejm_footskip_dim
  % ,inner=\c__nwejm_innermargin_dim
  % ,outer=\c__nwejm_outermargin_dim
}%
\bool_if:NF {\g__nwejm_coverpage_bool} {
  \bool_if:NF {\g__nwejm_inside_pages_bool} {
    \preto\@enddocumenthook{
      \clearpage
      \pagenumbering{roman}%
      \addtocounter{page}{2}
      \ifoddpage%
      \hbox{}
      \else
      \fi
      \newpage
      \bool_gset_true:N \g__nwejm_backmatter_bool
      \g__nwejm_display_inside_backcover_tl
      \newpage
      \g__nwejm_display_backcover_tl
    }%
  }%
}%
\bool_if:NF {\g__nwejm_coverpage_bool} {
  \bool_if:nF { \g__nwejm_for_authors_bool } {
    \bool_if:nT { \g__nwejm_inside_pages_bool } {
      \AtEndDocument{%
        \prg_replicate:nn
        { \int_mod:nn { 4 - \int_mod:nn { \getpagerefnumber{LastPage} } { 4 } } { 4 } }
        { \thispagestyle{__nwejm_blank_pages_ps}\null\clearpage }
      }
    }
  }
}
\renewcommand\etocbeforetitlehook
{%
  \DeclareNameAlias{labelname}{firstinits-last}
  \bool_if:NF {\g__nwejm_for_authors_bool}{
    \g__nwejm_frontmatter_switch_tl
    \phantomsection
    \hypertarget{__nwejm_toc}{}
    \bookmark[dest=__nwejm_toc,level=chapter]{\contentsname}
  }
}%
\renewcommand\etocaftertochook
{%
  \bool_if:NF {\g__nwejm_for_authors_bool}{
    \normalsize%
    \clearpage%
    \bool_gset_false:N \g__nwejm_frontmatter_bool%
    \g__nwejm_mainmatter_switch_tl
  }
}%
\newpagestyle{__nwejm_frontcover_ps}[]{%
  \sethead
  {}%
  {%
    \adjustbox{stack=c}{
      {\Large
        \c__nwejm_frontcover_header_string_tl
      }\\[7mm]
      \adjustbox{scale=2.08}{
        % \l__nwejm_frontmatter_head_text_tl
      }%
    }%
  }%
  {}%
  %
  \setfoot%
  {}%
  {}%
  {}%
}%
\newpagestyle{__nwejm_inside_frontcover_ps}[]{%
  \sethead%
  {}%
  {}%
  {}%
  %
  \setfoot%
  {}%
  {}%
  {}%
}%
\newpagestyle{__nwejm_frontmatter_ps}[]{%
  \sethead%
  {}%
  {}%
  {}%
  %
  \setfoot%
  {}%
  {\thepage}%
  {}%
}%
\newpagestyle{__nwejm_blank_pages_ps}[]{%
  \sethead
  {}%
  {}%
  {}%
  %
  \setfoot%
  {}%
  {\thepage}%
  {}%
}%
\newpagestyle{__nwejm_inside_backcover_ps}[]{%
  \sethead%
  {}%
  {}%
  {}%
  %
  \setfoot%
  {}%
  {}%
  {}%
}%
\newpagestyle{__nwejm_backcover_ps}[]{%
  \sethead
  {}%
  {}%
  {}%
  %
  \setfoot%
  {}%
  {}%
  {}%
}%
\tl_new:N \l__nwejm_section_header_tl
\tl_set:Nn \l__nwejm_section_header_tl {
  \ifthesection{%
    \thesection.~%
  }{%
  }
  \sectiontitle
}%
\newpagestyle{__nwejm_mainmatter_ps}[]{%
  \sethead%
  [
  \slshape\g__nwejm_short_title_tl
  ]%
  [%
  ]%
  [
  \DeclareNameAlias{labelname}{firstinits-last}
  \AtNextCitekey{\defcounter{maxnames}{2}}\citeauthor{\g__nwejm_article_bib_key_tl}
  ]%
  {
  \slshape\l__nwejm_section_header_tl
  }%
  {%
  }%
  {
  }%
  %
  \setfoot%
  {}%
  {\thepage}%
  {}%
}
  \box_new:N \l__nwejm_journal_logo_box
  \box_new:N \l__nwejm_journal_name_box
\AfterEndPreamble{%
  \hbox_set:Nn \l__nwejm_journal_name_box
  {
    \bfseries%
    \adjustbox{stack=l}{%
      \c__nwejm_journal_title_string_tl
      \\\GetTranslation{Volumeabbreviated}\space\int_use:N \g__nwejm_issue_number_int
    }
  }
  \hbox_set:Nn \l__nwejm_journal_logo_box
  {
    \includegraphics[width=1cm]{ grandMoulinNB }
  }
  \hbox_set_to_wd:Nnn \l__nwejm_journal_logo_box { 1cm }
  {
    \box_move_down:nn
    {
      \box_ht:N \l__nwejm_journal_logo_box / 2
      -
      \box_ht:N \l__nwejm_journal_name_box / 2
    }
    {
      \box_use:N \l__nwejm_journal_logo_box
    }
  }
  \box_set_ht:Nn \l__nwejm_journal_logo_box { 0pt }
  \box_set_dp:Nn \l__nwejm_journal_logo_box { 0pt }
}
\newpagestyle{__nwejm_article_title_ps}[]{%
  % \widenhead{\c_zero_dim}{\c_zero_dim}
  \sethead%
  {
    \box_use:N \l__nwejm_journal_name_box
  }%
  {%
  }%
  {
    \box_use:N \l__nwejm_journal_logo_box
  }%
  %
  \setfoot%
  {}%
  {\thepage}%
  {}%
}
\AtBeginDocument{%
  \graphicspath{{\c__nwejm_issue_images_path_string_tl//}{../\c__nwejm_issue_images_path_string_tl//}}
  % \glsdisablehyper
}
\AtBeginDocument{%
}
\tl_new:N \l__nwejm_journal_publisher_tl
\tl_new:N \l__nwejm_journal_address_tl
\tl_new:N \l__nwejm_journal_phone_tl
\tl_new:N \l__nwejm_journal_email_tl
\tl_new:N \l__nwejm_journal_url_tl
\tl_new:N \l__nwejm_journal_issn_tl
\tl_new:N \l__nwejm_journal_isbn_tl
\keys_define:nn { nwejm/journalsetup }
{
  publisher .tl_set:N = \l__nwejm_journal_publisher_tl,
  address .tl_set:N = \l__nwejm_journal_address_tl,
  phone .tl_set:N = \l__nwejm_journal_phone_tl,
  email .tl_set:N = \l__nwejm_journal_email_tl,
  url .tl_set:N = \l__nwejm_journal_url_tl,
  issn .tl_set:N = \l__nwejm_journal_issn_tl,
  isbn .tl_set:N = \l__nwejm_journal_isbn_tl,
  publisher .value_required:,
  address .value_required:,
  phone .value_required:,
  email .value_required:,
  url .value_required:,
  issn .value_required:,
  isbn .value_required:,
}
\int_new:N \g__nwejm_issue_number_int
\int_new:N \g__nwejm_issue_month_int
\int_new:N \g__nwejm_issue_year_int
\tl_new:N \g__nwejm_frontcover_image_options_tl
\keys_define:nn { nwejm/issuesetup }
{
  number .int_gset:N = \g__nwejm_issue_number_int,
  volume .int_gset:N = \g__nwejm_issue_volume_int,
  volume .value_required:,
  volume .initial:n = 0,
}
\keys_define:nn { nwejm/dates }
{
  received   .code:n = {
    \tl_gset:Nn \g__nwejm_reception_date_tl {#1}
    \bool_gset_true:N \g__nwejm_date_specified_bool
  },
  accepted   .code:n = {
    \tl_gset:Nn \g__nwejm_acception_date_tl {#1}
    \bool_gset_true:N \g__nwejm_date_specified_bool
  },
  online   .code:n = {
    \tl_gset:Nn \g__nwejm_online_date_tl {#1}
    \bool_gset_true:N \g__nwejm_date_specified_bool
  },
  received .value_required:,
  accepted .value_required:,
  online   .value_required:,
}
\quark_new:N \q__nwejm
\int_new:N \l_author_int
\prop_new:N \g_authors_prop
\prop_new:N \l_affiliations_tagged_prop
\cs_generate_variant:Nn \prop_put_if_new:Nnn { NVn }
\cs_generate_variant:Nn \prop_gput_if_new:Nnn { Nxn }
\cs_generate_variant:Nn \prop_put_if_new:Nnn { NnV }
\cs_new:Npn \__nwejm_prop_count:nn #1#2 { + 1 }
\cs_new:Npn \__nwejm_prop_count:N #1
{ \int_eval:n { 0 \prop_map_function:NN #1 \__nwejm_prop_count:nn } }
\NewDocumentCommand \__nwejm_author_affiliation:ww { o u\q__nwejm }
{
  \stepcounter{footnote}
  \prop_put_if_new:NVn \l_tmpa_prop {\the\c@footnote} {#2}
  \IfValueT{#1}{%
    \prop_put_if_new:NnV \l_affiliations_tagged_prop {#1} {\the\c@footnote}
  }
}
\keys_define:nn { nwejm / authors }
{
  email .tl_gset:N = \g__nwejm_people_email_tl,
  affiliation .code:n = {%
    \__nwejm_author_affiliation:ww #1 \q__nwejm
  },
  affiliationtagged .code:n = {%
    \prop_get:NnNTF \l_affiliations_tagged_prop {#1} \l_tmpa_tl
    {%
      \prop_put_if_new:NVn \l_tmpa_prop {\l_tmpa_tl} {}
    }{
      \msg_error:nnn{__nwejm}{unknown-tag}{#1}
    }
  },
  affiliation .value_required:,
  affiliationtagged .value_required:,
}
\tl_new:N \l_nwejm_newtheorem_style_tl
\keys_define:nn { nwejm/newtheorem }
{
  title / french .tl_set:N = \l__nwejm_newtheorem_french_title_tl,
  title / english .tl_set:N = \l__nwejm_newtheorem_english_title_tl,
  title / german .tl_set:N = \l__nwejm_newtheorem_german_title_tl,
  title / dutch .tl_set:N = \l__nwejm_newtheorem_dutch_title_tl,
  title / french .value_required:,
  title / english .value_required:,
  title / german .value_required:,
  title / dutch .value_required:,
  %
  style .choice:,
  style / theorem .code:n = {\tl_set:Nn \l__nwejm_newtheorem_style_tl {theorem}},
  style / definition .code:n = {\tl_set:Nn \l__nwejm_newtheorem_style_tl {definition}},
  style / proof .code:n = {\tl_set:Nn \l__nwejm_newtheorem_style_tl {proof}},
  style / unknown .code:n =
  \msg_error:nnxxx { nwejm } { unknown-choice }
  { style } % Name of choice key
  { theorem~or~definition~or~proof } % Valid choices
  { \exp_not:n {#1} } % Invalid choice given
}
\tl_new:N \g__nwejm_nwejm_short_string_tl
\tl_new:N \g__nwejm_nwejm_string_tl
\tl_gset:Nn \g__nwejm_nwejm_short_string_tl {
  \cs_if_exist:cTF {texorpdfstring}
  {
    \texorpdfstring{\emph{\c__nwejm_journal_short_title_string_tl}}{\c__nwejm_journal_short_title_string_tl}
  }{%
    \emph{\c__nwejm_journal_short_title_string_tl}
  }%
}
\tl_gset:Nn \g__nwejm_nwejm_string_tl {
  \cs_if_exist:cTF {texorpdfstring}
  {
    \texorpdfstring{\emph{\c__nwejm_journal_title_string_tl}}{\c__nwejm_journal_title_string_tl}
  }{%
    \emph{\c__nwejm_journal_title_string_tl}
  }%
}
\tl_new:N \l__nwejm_pdftitle_string_tl
\tl_new:N \l__nwejm_pdfauthor_string_tl
\tl_set:Nn \l__nwejm_pdftile_string_tl {
  \c__nwejm_journal_title_string_tl\space--\space{}N°\int_use:N\g__nwejm_issue_number_int
}
\tl_set:Nn \l__nwejm_pdfauthor_string_tl {
  \g__nwejm_nwejm_string_tl
}
\cs_new_protected:Nn \__nwejm_email:n
  {
    \href{mailto:#1}{\nolinkurl{#1}}%
  }
\tl_new:N \l__nwejm_crossref_tl
\cs_new_protected:Nn \__nwejm_populate_bib_file:nn
{
  \int_if_exist:cF {g__nwejm_#2_int}
  {
    \int_new:c {g__nwejm_#2_int}
  }
  \int_incr:c {g__nwejm_#2_int}
  \tl_if_in:nnTF { #2 } { author } {
    \tl_set:Nn \l__nwejm_crossref_tl {%
      \c__nwejm_issue_bib_key_tl
      -art-
      \int_use:N \g__nwejm_articles_int
    }
  } {
    \tl_set:Nn \l__nwejm_crossref_tl {\c__nwejm_issue_bib_key_tl}
  }
  \tl_set:Nn \l__nwejm_people_first_last_name_tl {#1}
  % \tl_show:N \g__nwejm_article_bib_key_tl
  % \int_show:N \g__nwejm_articles_int
  \iow_now:Nx \g__nwejm_bib_out_iow {%
    @article{
      \c__nwejm_issue_bib_key_tl -#2- \int_use:c {g__nwejm_#2_int},
      \iow_newline:
      author={\exp_not:V\l__nwejm_people_first_last_name_tl},
      \iow_newline:
      options={skipbib},
      \iow_newline:
      crossref  = {\l__nwejm_crossref_tl}
      \iow_newline:
    }
    \iow_newline:
  }%
}
\DTLnewdb{people}
\cs_new_protected:Nn \__nwejm_people:nnnnn
{
  \DTLnewrow{people}%
  \DTLnewdbentry{people}{first-last-name}{#1}%
  \DTLnewdbentry{people}{affiliation}{#2}%
  \DTLnewdbentry{people}{country}{#3}%
  \DTLnewdbentry{people}{email}{#4}%
  \DTLnewdbentry{people}{role}{#5}%
  \__nwejm_populate_bib_file:nn {#1}{#5}
}
\cs_generate_variant:Nn \__nwejm_people:nnnnn { nVnVx }
\cs_new_protected:Nn \__nwejm_display_people_by_role:n
{
  \DTLforeach*[\DTLiseq{\l__nwejm_people_role_tl}{#1}]{people}{%
    \l__nwejm_firstlastname_tl=first-last-name%
    ,\l__nwejm_people_affiliation_tl=affiliation%
    ,\l__nwejm_people_country_tl=country%
    ,\l__nwejm_people_email_tl=email%
    ,\l__nwejm_people_role_tl=role%
  }{%
    \tl_if_in:NnTF \l__nwejm_people_role_tl { editor } {
    \item[
      \__nwejm_citeauthor_no_firstinits:n {\c__nwejm_issue_bib_key_tl -#1- \exp_not:V\DTLcurrentindex}%
      ]
      \l__nwejm_people_affiliation_tl%
        \space%
        (\l__nwejm_people_country_tl)%
      % ,\space%
      % \__nwejm_email:n {\l__nwejm_people_email_tl}
      \DTLiflastrow{%
      }{%
        % \medskip%
      }
    }{
      \tl_if_in:NnTF \l__nwejm_people_role_tl { author } {
        \footnotesize%
        \noindent%
        \begin{description}[leftmargin=1em,style=nextline]
        \item[%
          \__nwejm_citeauthor_no_firstinits:n {\c__nwejm_issue_bib_key_tl -#1- \exp_not:V\DTLcurrentindex}%
          ]
          \tl_if_empty:NF \l__nwejm_people_affiliation_tl
          {%
            \mbox{}%
            \par%
            \vspace{-2ex}%
            \l__nwejm_people_affiliation_tl%
          }
          \tl_if_empty:NF \l__nwejm_people_email_tl
          {%
            \par%
            \__nwejm_email:n {\l__nwejm_people_email_tl}
          }
        \end{description}
        \DTLiflastrow{%
        }{
          \DTLpar%
          \medskip%
        }
      }{
        \__nwejm_citeauthor_no_firstinits:n {\c__nwejm_issue_bib_key_tl -#1-
          \exp_not:V\DTLcurrentindex}%
        \tl_if_empty:NF \l__nwejm_people_email_tl
        {
          \space(\__nwejm_email:n {\l__nwejm_people_email_tl})
        }
      }
    }
  }
}
\tl_new:N \g__nwejm_display_frontcover_tl%
\tl_gset:Nn \g__nwejm_display_frontcover_tl {%
  \bool_gset_true:N \g__nwejm_frontcover_bool
  \pagestyle{__nwejm_frontcover_ps}%
  \exp_after:wN\newgeometry\exp_after:wN{\c__nwejm_frontcover_geometry_tl}%
  \noindent%
  \bool_if:NTF {\g__nwejm_cover_bool} {
    \hspace*{-\c__nwejm_potential_layoutoffset_dim}
  }{
    \hspace*{-2\c__nwejm_potential_layoutoffset_dim}
  }
  \vfill%
  \noindent%
  \hspace*{10mm}%
  \hspace*{-\c__nwejm_potential_layoutoffset_dim}
  % \includegraphics[height=22.5mm]{\c__nwejm_smf_logo_file_string_tl}%
  \vfill%
  \clearpage%
  \bool_gset_false:N \g__nwejm_frontcover_bool
}
\tl_new:N \g__nwejm_display_inside_frontcover_tl%
\tl_gset:Nn \g__nwejm_display_inside_frontcover_tl {%
  \bool_gset_true:N \g__nwejm_inside_frontcover_bool%
  \pagestyle{__nwejm_inside_frontcover_ps}%
  \exp_after:wN\newgeometry\exp_after:wN{\c__nwejm_inside_cover_geometry_tl}%
  \footnotesize%
    \begin{multicols*}{2}
      \setlength{\columnsep}{1mm}
      \begin{description}[leftmargin=2em]
      \item[\textsc{\c__nwejm_editorinchief_string_tl}] \
        \begin{description}[leftmargin=1em]
          \__nwejm_display_people_by_role:n {editorinchief}
        \end{description}
        \bigskip
        \par
      \item[\textsc{\c__nwejm_associate_editors_string_tl}] \
        \begin{description}[leftmargin=1em]
          \__nwejm_display_people_by_role:n {editor}
        \end{description}
        \bigskip
        \par
      \item[\textsc{\c__nwejm_field_editor_string_tl}] \
        \begin{description}[leftmargin=1em]
          \__nwejm_display_people_by_role:n {fieldseditor}
        \end{description}
        \bigskip
        \par
      \item[\textsc{\c__nwejm_managing_editor_string_tl}] \
        \begin{description}[leftmargin=1em]
          \__nwejm_display_people_by_role:n {managingeditor}
        \end{description}
      \end{description}
    \end{multicols*}
  \clearpage%
  \bool_gset_false:N \g__nwejm_inside_frontcover_bool
  \pagestyle{__nwejm_frontmatter_ps}%
  \exp_after:wN\newgeometry\exp_after:wN{\c__nwejm_main_geometry_tl}%
}
\tl_new:N \g__nwejm_display_inside_backcover_tl%
\tl_gset:Nn \g__nwejm_display_inside_backcover_tl {%
  \bool_gset_true:N \g__nwejm_inside_backcover_bool%
  \pagestyle{__nwejm_inside_backcover_ps}%
  \exp_after:wN\newgeometry\exp_after:wN{\c__nwejm_inside_cover_geometry_tl}%
  % \file_if_exist:nT { \c__nwejm_authors_instructions_file_tl } {%
    \bool_if:NTF {\g__nwejm_no_inside_backcover_bool} {
      \hbox{}
    }{%
      \small%
        \file_if_exist:nT { \c__nwejm_authors_instructions_file_tl } {%
          % \begin{multicols}{2}
          %   \setlength{\columnsep}{1mm}
          \file_input:n {\c__nwejm_authors_instructions_file_tl}
          % \end{multicols}
          % \setlength{\columnseprule}{1pt}
        }
      \begin{description}[leftmargin=1em]
      \item[\c__nwejm_editorial_secretariat_string_tl{}~:] \ \par%
        % \l__nwejm_journal_publisher_tl%
        % \par%
        % \space\textendash{}\space%
        \__nwejm_display_people_by_role:n { secretary }\par
        \l__nwejm_journal_address_tl\par%
        \c__nwejm_phone_string_tl{}~:~\l__nwejm_journal_phone_tl{}\par%
        \__nwejm_email:n {\l__nwejm_journal_email_tl}
        \newline%
        % \space\textendash{}\space
        \url{\l__nwejm_journal_url_tl}
      \item[\c__nwejm_issn_string_tl{}~:] \l__nwejm_journal_issn_tl
        \tl_if_empty:NF \l__nwejm_journal_isbn_tl
        {%
        \item[\c__nwejm_isbn_string_tl{}~:] \l__nwejm_journal_isbn_tl
        }
        \bool_if:NT {\g__nwejm_no_inside_backcover_bool} {
        \item[\c__nwejm_latexclass_string_tl{}~:]
          \__nwejm_display_people_by_role:n { classdesigner }
        \item[\c__nwejm_printer_string_tl{}~:] \g__nwejm_printer_text_tl
        }
      \end{description}
      \bool_if:NT {\g__nwejm_no_inside_backcover_bool} {
        \g__nwejm_font_designer_text_tl
      }
    }
  % }{%
  %   \hbox{}
  % }
  \bool_gset_false:N \g__nwejm_inside_backcover_bool
}
\tl_new:N \g__nwejm_display_backcover_tl%
\tl_gset:Nn \g__nwejm_display_backcover_tl {%
  \bool_gset_true:N \g__nwejm_backcover_bool
  \pagestyle{__nwejm_backcover_ps}%
  \exp_after:wN\newgeometry\exp_after:wN{\c__nwejm_backcover_geometry_tl}%
  \file_if_exist:nTF { \c__nwejm_backcover_page_file_string_tl } {%
    \file_input:n {\c__nwejm_backcover_page_file_string_tl}
  }{%
    \hbox{}
  }
}
\cs_new_protected:Nn \__nwejm_date:nn
{
  \tl_if_exist:NT {#2}
  {
    \tl_if_empty:NF {#2}
    {
      \tl_if_eq:NNF {\c__nwejm_date_received_tl} {#1} { \c__nwejm_dates_separator_tl }
      \exp_args:No \GetTranslation{#1}
      \c__nwejm_colon_tl\space
      \DTMdate{#2}%
    }
  }
}
\tl_new:N \g__nwejm_display_dates_tl%
\tl_gset:Nn \g__nwejm_display_dates_tl {%
  \footnotesize%
  \__nwejm_date:nn {\c__nwejm_date_received_tl}{\g__nwejm_reception_date_tl}
  \__nwejm_date:nn {\c__nwejm_date_accepted_tl}{\g__nwejm_acception_date_tl}
  \__nwejm_date:nn {\c__nwejm_date_online_tl}  {\g__nwejm_online_date_tl}
  \tl_gclear:N \g__nwejm_reception_date_tl
  \tl_gclear:N \g__nwejm_acception_date_tl
  \tl_gclear:N \g__nwejm_online_date_tl
}
\seq_new:N \l__nwejm_keywords_seq
\tl_new:N \l__nwejm_keywords_tl
\NewDocumentCommand \keywords { m } {
  \seq_clear:N \l__nwejm_keywords_seq
  \tl_clear:N \l__nwejm_keywords_tl
  \seq_set_from_clist:Nn \l_tmpa_seq {#1}
  \seq_set_map:NNn \l__nwejm_keywords_seq \l_tmpa_seq {
    \exp_not:n {
      % \textbf { ##1 } % It is possible to format each of the keywords
      ##1
    }
  }
  \tl_set:Nn \l__nwejm_keywords_tl { \seq_use:Nn \l__nwejm_keywords_seq {,~} }
}
\seq_new:N \l__nwejm_msc_seq
\tl_new:N \l__nwejm_msc_tl
\NewDocumentCommand \msc { m } {
  \seq_clear:N \l__nwejm_msc_seq
  \tl_clear:N \l__nwejm_msc_tl
  %
  % does what the name suggests, set a sequence from the clist
  \seq_set_from_clist:Nn \l_tmpa_seq {#1}
  % applies final arg to each element of second seq and stores result in first seq
  \seq_set_map:NNn \l__nwejm_msc_seq \l_tmpa_seq {
    % \exp_not:n {
      % \textbf { ##1 } % It is possible to format each of the msc
      ##1
    % }
  }
  %
  % \seq_use puts the items from the seq back in the input with ",~" as a separator
  \tl_set:Nn \l__nwejm_msc_tl {\seq_use:Nn \l__nwejm_msc_seq {,~}}
%%<class-article>    \hypersetup{pdfmsc=\l_@@_msc_tl}
}
%%   \enquote{Rédacteur(s) en chef}.
\NewDocumentCommand \editorinchief {mmmm}
{
  \__nwejm_people:nnnnn {#1}{#2}{#3}{#4}{editorinchief}
}
\NewDocumentCommand \editor {mmmm}
{
  \__nwejm_people:nnnnn {#1}{#2}{#3}{#4}{editor}
}
\NewDocumentCommand \fieldseditor {mmmm}
{
  \__nwejm_people:nnnnn {#1}{#2}{#3}{#4}{fieldseditor}
}
\NewDocumentCommand \managingeditor {mmmm}
{
  \__nwejm_people:nnnnn {#1}{#2}{#3}{#4}{managingeditor}
}
\NewDocumentCommand \classdesigner {mmmm}
{
  \__nwejm_people:nnnnn {#1}{#2}{#3}{#4}{classdesigner}
}
\NewDocumentCommand \computerengineer {mmmm}
{
  \__nwejm_people:nnnnn {#1}{#2}{#3}{#4}{computerengineer}
}
\NewDocumentCommand \classmaintainer {mmmm}
{
  \__nwejm_people:nnnnn {#1}{#2}{#3}{#4}{classmaintainer}
}
\NewDocumentCommand \fontdesigner {mmmm}
{
  \__nwejm_people:nnnnn {#1}{#2}{#3}{#4}{fontdesigner}
}
\NewDocumentCommand \printingservice {mmmm}
{
  \__nwejm_people:nnnnn {#1}{#2}{#3}{#4}{printingservice}
}
\NewDocumentCommand \computerassistance {mmmm}
{
  \__nwejm_people:nnnnn {#1}{#2}{#3}{#4}{computerassistance}
}
\NewDocumentCommand \secretary {mmmm}
{
  \__nwejm_people:nnnnn {#1}{#2}{#3}{#4}{secretary}
}
\NewDocumentCommand \issuesetup { m } {
  \keys_set:nn { nwejm/issuesetup } {#1}
\hypersetup{pdftitle=\l__nwejm_pdftitle_string_tl}
\hypersetup{pdfauthor=\l__nwejm_pdfauthor_string_tl}
  \int_compare:nNnT {\g__nwejm_issue_number_int}<{1}
  {
    \int_gset:Nn \g__nwejm_issue_number_int { \c__nwejm_first_issue_number_int }
    \msg_warning:nnn{nwejm}{issue-number-needed}{number}
  }
  \int_compare:nNnT {\g__nwejm_issue_month_int * \g__nwejm_issue_year_int}<{1}
  {
    \int_new:N \g__nwejm_issue_age_in_months_int%
    \int_gset:Nn \g__nwejm_issue_age_in_months_int
    {
      \c__nwejm_first_issue_month_int
      + \c__nwejm_interval_in_months_int
      * ( \int_use:N \g__nwejm_issue_number_int - \c__nwejm_first_issue_number_int )
    }
  }
  \int_compare:nNnT {\g__nwejm_issue_month_int}<{1}
  {
    \int_gset:Nn \g__nwejm_issue_month_int
    {
      \int_mod:nn { \g__nwejm_issue_age_in_months_int } { 12 }
    }
  }
  \int_compare:nNnT {\g__nwejm_issue_year_int}<{1}
  {
    \int_new:N \g__nwejm_issue_age_in_years_int%
    \int_gset:Nn \g__nwejm_issue_age_in_years_int
    {%
      \int_div_truncate:nn { \g__nwejm_issue_age_in_months_int } { 12 }
    }%
    \int_gset:Nn \g__nwejm_issue_year_int
    {
      \g__nwejm_issue_age_in_years_int + \c__nwejm_first_issue_year_int
    }
  }%
}
\NewDocumentCommand \journalsetup { m } {
  \keys_set:nn { nwejm/journalsetup } { #1 }
}
\addto\extrasfrench{%
  \def\reftextfaceafter {page~\reftextvario{ci-contre}{suivante}}%
  \def\reftextfacebefore{page~\reftextvario{ci-contre}%
    {pr\’ec\’edente}}%
  \def\reftextafter
  {page~suivante}%
  \def\reftextbefore
  {page~pr\’ec\’edente}%
  \def\reftextcurrent
  {de~la~pr\’esente~page}%
  \def\reftextfaraway#1{page~\pageref{#1}}%
  \def\reftextpagerange#1#2{pages~\pageref{#1}--\pageref{#2}}%
  \def\reftextlabelrange#1#2{\ref{#1}~\‘a~\ref{#2}}%
}
\addto\extrasngerman{%
  \def\reftextfaceafter {auf~der~n\"achsten~Seite}%
  \def\reftextfacebefore{auf~der~vorherigen~Seite}%
  \let\reftextafter     \reftextfaceafter
  \let\reftextbefore    \reftextfacebefore
  \def\reftextcurrent   {auf~dieser~Seite}%
  \def\reftextfaraway#1{auf~Seite~\pageref{#1}}%
  \def\reftextpagerange#1#2{auf~den~Seiten~\pageref{#1}--\pageref{#2}}%
  \def\reftextlabelrange#1#2{\ref{#1}~bis~\ref{#2}}%
}
\addto\extrasdutch{%
  \def\refpagename{pagina}%
  \def\reftextfaceafter {op~de~\reftextvario{rechter~\refpagename}%
    {\refpagename\ hiernaast}}%
  \def\reftextfacebefore{op~de~\reftextvario{linker~\refpagename}%
    {\refpagename\ hiernaast}}%
  \def\reftextafter     {op~de~\reftextvario{volgende~\refpagename}%
    {\refpagename\ hierna}}%
  \def\reftextbefore    {op~de~\reftextvario{vorige~\refpagename}%
    {\refpagename\ hiervoor}}%
  \def\reftextcurrent   {op~deze~\refpagename}%
  \def\reftextfaraway#1{op~\refpagename\space\pageref{#1}}
}
\addto\extrasenglish{%
  \def\reftextfaceafter {on~the~\reftextvario{facing}{next}~page}%
  \def\reftextfacebefore{on~the~\reftextvario{facing}{preceding}~page}%
  \def\reftextafter     {on~the~\reftextvario{following}{next}~page}%
  \def\reftextbefore    {on~the~\reftextvario{preceding}{previous}~page}%
  \def\reftextcurrent   {on~\reftextvario{this}{the~current}~page}%
  \def\reftextfaraway#1{on~page~\pageref{#1}}%
  \def\reftextpagerange#1#2{on~pages~\pageref{#1}--\pageref{#2}}%
  \def\reftextlabelrange#1#2{\ref{#1}~to~\ref{#2}}%
}
\NewDocumentCommand \dates { m } {
  \keys_set:nn { nwejm/dates } { #1 }
}
\NewDocumentCommand \inputarticle { O{english} m } {%
  \newrefsection
  \selectlanguage{#1}
  \inputfrom{./}{#2}
  \setcounter{footnote}{0}
  \setcounter{section}{0}
  \setcounter{figure}{0}
  \setcounter{table}{0}
  \setcounter{equation}{0}
  \setcounter{Theorem}{0}
  \setcounter{Corollary}{0}
  \setcounter{Conjecture}{0}
  \setcounter{Proposition}{0}
  \setcounter{Lemma}{0}
  \setcounter{Axiom}{0}
  \setcounter{Definition}{0}
  \setcounter{Remark}{0}
  \setcounter{Example}{0}
  \setcounter{Notation}{0}
  \glsresetall
}
\AtBeginDocument{%
\tl_new:N \g__nwejm_bib_issue_date_tl
\tl_gset:Nn
\g__nwejm_bib_issue_date_tl {
  \int_use:N \g__nwejm_issue_year_int -
  \int_compare:nNnT {\g__nwejm_issue_month_int}<{10}
  {
    0
  }
  \int_use:N \g__nwejm_issue_month_int
}
  \iow_now:Nx \g__nwejm_bib_out_iow {%
    @periodical{\c__nwejm_issue_bib_key_tl,\iow_newline:
      issuetitle   = {\exp_not:f\c__nwejm_journal_title_string_tl},\iow_newline:
      date         = {\g__nwejm_bib_issue_date_tl},\iow_newline:
      number       = \int_use:N \g__nwejm_issue_number_int,\iow_newline:
      % issn         = {\l__nwejm_journal_issn_tl},\iow_newline:
      options      = {skipbib}\iow_newline:
    }
    \iow_newline:
  }%
}
\tl_new:N \g__nwejm_title_tl
\RenewDocumentCommand \title { o m } {
  \cleardoublepage
  \int_gincr:N \g__nwejm_articles_int
  \tl_gclear:N \g__nwejm_short_title_tl
  \tl_gclear:N \g__nwejm_short_subtitle_tl
  %
  \IfNoValueF {#1}
  {
    \tl_gset:Nn \g__nwejm_short_title_tl {#1}
  }
  \tl_gset:Nn \g__nwejm_title_tl {#2}
  \tl_if_empty:NT \g__nwejm_short_title_tl {%
    \tl_gset_eq:NN \g__nwejm_short_title_tl \g__nwejm_title_tl
  }
}
\tl_new:N \g__nwejm_subtitle_tl
\NewDocumentCommand \subtitle { o m } {
  \IfNoValueF {#1}
  {
    \keys_set:nn { nwejm/subtitle } { #1 }
  }
  \tl_gset:Nn \g__nwejm_subtitle_tl {#2}
  \tl_if_empty:NT \g__nwejm_short_subtitle_tl {%
    \tl_gset_eq:NN \g__nwejm_short_subtitle_tl \g__nwejm_subtitle_tl
  }
}
\RenewDocumentCommand \author { O{} m } {
  \cleardoublepage
  \int_incr:N \l_author_int
  \prop_gput_if_new:Nxn \g_authors_prop {author_\int_use:c {l_author_int}} {#2}
  \IfNoValueF {#1}
  {
    \keys_set:nn { nwejm/authors } { #1 }
  }
  \prop_set_eq:cN {l_author_ \int_use:c {l_author_int} _affiliations_prop} \l_tmpa_prop
  \prop_clear:N \l_tmpa_prop
  \__nwejm_populate_bib_file:nn {#2}{author-art-\int_use:N \g__nwejm_articles_int}
  \tl_if_empty:NTF \l__nwejm_people_first_last_names_tl {%
    \tl_put_right:Nn
    \l__nwejm_people_first_last_names_tl
    {#2}
  }{
    \tl_put_right:Nn
    \l__nwejm_people_first_last_names_tl
    {~and~#2}
  }
}
\iow_new:N \g__nwejm_bib_out_iow
\ior_new:N \g__nwejm_bib_out_ior
\tl_new:N \g__nwejm_bib_out_tl
\file_if_exist:nTF { \c__nwejm_issue_bib_path_string_tl }
{
  \ior_open:Nn \g__nwejm_bib_out_ior { \c__nwejm_issue_bib_path_string_tl }
  \ior_str_map_inline:Nn \g__nwejm_bib_out_ior
  { \tl_gput_right:Nn \g__nwejm_bib_out_tl {#1 \par } }
  \ior_close:N \g__nwejm_bib_out_ior
}{
  \typeout{no file! rerun}
}
\iow_open:Nn \g__nwejm_bib_out_iow { \c__nwejm_issue_bib_path_string_tl }
\tl_new:N \g__nwejm_abstract_body_tl
\NewDocumentEnvironment{abstract}{}
  {\CollectAbstract}
  {\endCollectAbstract}
\NewEnviron{CollectAbstract}
  {
    \tl_gset_eq:NN \g__nwejm_abstract_body_tl \BODY
  }
\tl_new:N \g__nwejm_frontmatter_switch_tl%
\tl_gset:Nn \g__nwejm_frontmatter_switch_tl {
  \bool_gset_true:N  \g__nwejm_frontmatter_bool
  \frontmatter
  \pagestyle{__nwejm_frontmatter_ps}%
  \exp_after:wN\newgeometry\exp_after:wN{\c__nwejm_main_geometry_tl}%
}
\tl_new:N \g__nwejm_mainmatter_switch_tl%
\tl_gset:Nn \g__nwejm_mainmatter_switch_tl {
  \bool_gset_false:N \g__nwejm_frontmatter_bool
  \bool_gset_true:N \g__nwejm_mainmatter_bool
  \mainmatter
  % \SetParskip{\c__nwejm_mainmatter_parskip_skip}
  \pagestyle{__nwejm_mainmatter_ps}%
  \exp_after:wN\newgeometry\exp_after:wN{\c__nwejm_main_geometry_tl}%
}
\tl_new:N \g__nwejm_article_acknowledgments_tl%
\cs_new_protected:Nn \__nwejm_article_acknowledgments:n
{
  \tl_gset:Nn \g__nwejm_article_acknowledgments_tl { #1 }
}
\NewDocumentCommand \acknowledgments { m } {
  \__nwejm_article_acknowledgments:n {#1}
}
\tl_new:N \g__nwejm_article_bib_key_tl%
\tl_new:N \l__nwejm_people_first_last_names_tl
\tl_new:N \g__nwejm_authors_first_last_names_tl%
\tl_new:N \g__nwejm_citeauthor_no_firstinits%
\tl_new:N \g__nwejm_citeauthor_tl%
\int_new:N \g__nwejm_author_s_number_current_article_int%
\cs_new_protected:Nn \__nwejm_citeauthor_no_firstinits:n {%
  \tl_gset:Nn \g__nwejm_citeauthor_tl {%
    \DeclareNameAlias{labelname}{default}%
    \group_begin:
    \togglefalse{blx@firstinits}%
    \citeauthor{#1}
    \group_end:
  }%
  \cs_if_exist:cTF {texorpdfstring}
  {
    \texorpdfstring{\g__nwejm_citeauthor_tl}{}
  }{%
    \g__nwejm_citeauthor_tl
  }%
}
\cs_set_eq:NN \__nwejm_orig_multinamedelim \multinamedelim
\cs_set_eq:NN \__nwejm_orig_finalnamedelim \finalnamedelim
\cs_new_protected:Nn \__nwejm_maketitle_citeauthor:n
{
  \restorecommand\mkbibnamelast
  \def\multinamedelim  {\hskip 1em \@plus.17fil}%
  \cs_set_eq:NN \finalnamedelim \multinamedelim
  \AtNextCitekey{\defcounter{maxnames}{100}}
  \group_begin:
  \DeclareNameAlias{labelname}{default}%
  \togglefalse{blx@firstinits}%
  \citeauthor{#1}
  \group_end:
  \cs_set_eq:NN \multinamedelim \__nwejm_orig_multinamedelim
  \cs_set_eq:NN \finalnamedelim \__nwejm_orig_finalnamedelim
  \protected\def\mkbibnamelast#1{%
    \textsc{\textnohyphenation{#1}}}%
}
\cs_new_protected:Nn \__nwejm_display_author:n
{
  \seq_clear:N \l_tmpa_seq
  \prop_get:NnN \g_authors_prop {author_#1} \l_tmpa_tl
  \prop_map_inline:cn {l_author_ #1 _affiliations_prop} {
    \seq_put_right:Nx \l_tmpa_seq { ##1 }
  }
  \seq_sort:Nn \l_tmpa_seq
  {
    \int_compare:nNnTF { ##1 } > { ##2 }
    { \sort_reversed: }
    { \sort_ordered: }
  }
  \mbox{%
    \__nwejm_citeauthor_no_firstinits:n {\c__nwejm_issue_bib_key_tl -author-art- \int_use:N \g__nwejm_articles_int-#1}
  }
  \seq_map_inline:Nn \l_tmpa_seq {
    \prop_get:cnN {l_author_ #1 _affiliations_prop} {##1} \l_tmpb_tl
    \footnotemark[##1]
    \tl_if_empty:NF \l_tmpb_tl
    {
      \footnotetext[##1]{\l_tmpb_tl}
    }
  }
  \hskip 1em plus .17fil
}
\tl_new:N \l__nwejm_bullet_and_rule_tl
\tl_new:N \l__nwejm_authors_box_tl
\tl_new:N \l__nwejm_abstract_box_tl
\tl_new:N \l__nwejm_bullet_and_rule_odd_tl
\tl_new:N \l__nwejm_bullet_and_rule_even_tl
\tl_new:N \l__nwejm_title_box_tl
\tl_new:N \g__nwejm_title_for_toc_tl
\RenewDocumentCommand \maketitle { } {
      \FloatBarrier%
\tl_gset:Nn \g__nwejm_article_bib_key_tl {%
  \c__nwejm_issue_bib_key_tl
  -art-
  \int_use:N \g__nwejm_articles_int
}
\tl_if_empty:NF \g__nwejm_title_tl {%
  \iow_now:Nx \g__nwejm_bib_out_iow {%
    @article{
      \g__nwejm_article_bib_key_tl,
      \iow_newline:
      title={\exp_not:V\g__nwejm_title_tl},
      \iow_newline:
      \tl_if_empty:NF \g__nwejm_subtitle_tl {%
        subtitle={\exp_not:V\g__nwejm_subtitle_tl},
        \iow_newline:
      }
      \tl_if_eq:NNF { \g__nwejm_short_title_tl } { \g__nwejm_title_tl } {%
        shorttitle={\exp_not:V\g__nwejm_short_title_tl},
        \iow_newline:
      }%
      \tl_if_empty:NF \l__nwejm_people_first_last_names_tl
      {
        author={\exp_not:V\l__nwejm_people_first_last_names_tl},
        \iow_newline:
      }
      options={skipbib},
      \iow_newline:
      crossref  = {\c__nwejm_issue_bib_key_tl}
    }
    \iow_newline:
  }%
  % \tl_clear:N \l__nwejm_people_first_last_names_tl
}%
\tl_set:Nn \l__nwejm_authors_box_tl
{%
  \bool_if:nTF { \tl_if_empty_p:N \l__nwejm_people_first_last_names_tl }
  {
    \mbox{}
  }
  {
    \int_set:Nn \l_tmpa_int { \__nwejm_prop_count:N \g_authors_prop}
    \normalsize%
    \int_step_inline:nnnn {1}{1}{\l_tmpa_int} {
      \__nwejm_display_author:n {##1}
    }
    \prop_gclear:N \g_authors_prop
  }
}
\int_zero:N \l_author_int
\prop_clear:N \l_affiliations_tagged_prop
\tl_set:Nn \l__nwejm_dates_box_tl
{%
  \g__nwejm_display_dates_tl
}
\tl_set:Nn \l__nwejm_keywords_box_tl
{%
  \noindent\textbf{\GetTranslation{Keywords}\c__nwejm_colon_tl}~\l__nwejm_keywords_tl.
}
\tl_set:Nn \l__nwejm_msc_box_tl
{%
  \noindent\textbf{\c__nwejm_msc_string_tl}\c__nwejm_colon_tl\space\l__nwejm_msc_tl.
}
\tl_set:Nn \l__nwejm_abstract_box_tl
{%
  \mbox{}
  \par%
  \vskip .5em%
  \tl_if_empty:NTF \g__nwejm_abstract_body_tl
  {%
    \msg_warning:nn{nwejmart}{No~abstract}
  }%
  {%
    \small
    \begin{center}%
      {\bfseries \abstractname\vspace{-.5em}\vspace{\z@}}%
    \end{center}%
    \begin{quotation}
      \g__nwejm_abstract_body_tl
    \end{quotation}
  }
}%
\tl_set:Nn \g__nwejm_title_for_toc_tl
{
  \tl_if_empty:NTF \g__nwejm_short_title_tl {%
    \g__nwejm_title_tl%
  }{
    \g__nwejm_short_title_tl%
  }
  \bool_if:nF { \tl_if_empty_p:N \g__nwejm_short_subtitle_tl }
  {
    \space\textendash{}\space\g__nwejm_short_subtitle_tl
  }
  \bool_if:nF { \tl_if_empty_p:N \l__nwejm_people_first_last_names_tl }
  {
    \textsl{
      \cs_if_exist:cTF {texorpdfstring}
      {
        \texorpdfstring{%
          \space\textendash{}\space\citeauthor{\g__nwejm_article_bib_key_tl}
        }{}
      }{%
        \space\textendash{}\space\citeauthor{\g__nwejm_article_bib_key_tl}
      }%
    }
  }
}
  \setsecnumdepth{none}

  \chapter[\g__nwejm_title_for_toc_tl]{%
    \LARGE%
    \g__nwejm_title_tl
    \tl_if_empty:NF \g__nwejm_subtitle_tl {%
      \\%
      \g__nwejm_subtitle_tl
    }\\[2ex]%
    \l__nwejm_authors_box_tl%
    \bool_if:NT {\g__nwejm_date_specified_bool}
    {
      \\[2ex]
      \l__nwejm_dates_box_tl
    }
    \\[-4ex]
  }
  \bool_gset_false:N \g__nwejm_date_specified_bool
  \bookmarksetup{depth=subsection}
  \setsecnumdepth{subsection}
  \thispagestyle{__nwejm_article_title_ps}%
\l__nwejm_abstract_box_tl%
\normalsize
\tl_if_empty:NTF \l__nwejm_keywords_tl {
  \msg_warning:nn{nwejmart}{No~keyword}
}{
  \l__nwejm_keywords_box_tl
  \par%
  \vskip .5em%
}
\tl_if_empty:NTF \l__nwejm_msc_tl {
  \msg_warning:nn{nwejmart}{No~MSC}
}{
  \l__nwejm_msc_box_tl
  \par%
  \vskip .5em%
}
\tl_gclear:N \g__nwejm_title_tl
\tl_gclear:N \g__nwejm_subtitle_tl
\tl_gclear:N \g__nwejm_title_for_toc_tl
\tl_gclear:N \g__nwejm_abstract_body_tl
  \tl_gclear:N \g__nwejm_people_affiliation_tl
  \tl_gclear:N \g__nwejm_people_email_tl
  \tl_clear:N \l__nwejm_people_first_last_names_tl%
}
\AtEndPreamble{\file_input:n {\c__nwejm_configuration_file_string_tl}}
\DeclarePlainStyle{«~}{~»}{`}{'}
\setcounter{topnumber}{3}
\renewcommand{\topfraction}{0.8}
\addtolength{\skip\footins}{.25\baselineskip}
\setlength{\columnsep}{7mm}%
\renewcommand{\thesection}{\arabic{section}}%
\@ifpackageloaded{siunitx}{%
  \addto\extrasenglish{\sisetup{locale = UK}}
  \addto\extrasfrench{\sisetup{locale = FR}}
  \addto\extrasgerman{\sisetup{locale = DE}}
  \addto\extrasdutch{%
    \sisetup{%
      exponent-product      = \ensuremath { \times } ,
      inter-unit-product    = \,                     ,
      output-decimal-marker = { , }
    }%
  }
}
\cs_set_eq:NN \__nwejm_section \section
\cs_set_eq:NN \__nwejm_subsection \subsection
\AfterPreamble{%
  \RenewDocumentCommand \section { s m } {%
    \IfBooleanTF {#1}
    {
      \setsecnumdepth{none}%
    }
    {
      \resetsecnumdepth*%
    }
    \__nwejm_section {#2}
  }
  \RenewDocumentCommand \subsection { s m } {%
    \IfBooleanT {#1}
    {
      \setsecnumdepth{none}%
    }
    \__nwejm_subsection {#2}
  }
}
\int_new:N \l__nwejm_abs_int
\cs_new_protected:Nn \__nwejm_ordinalnum_suffix:n
{
  \int_set:Nn \l__nwejm_abs_int {\int_abs:n {#1}}
  \ifcurrentbaselanguage{english}{
    \int_use:N \l__nwejm_abs_int
    \int_set:Nn \l_tmpa_int {\int_mod:nn {\l__nwejm_abs_int} {\c_one_hundred}}
    \int_case:nnF
    { \l_tmpa_int }
    {
      { \c_eleven }   { \fmtord{th} }
      { \c_twelve }   { \fmtord{th} }
      { \c_thirteen } { \fmtord{th} }
    }{
      \int_set:Nn \l_tmpb_int {\int_mod:nn {\l__nwejm_abs_int} {\c_ten}}
      \int_case:nnF
      { \l_tmpb_int }
      {
        { \c_zero }   { \fmtord{th} }
        { \c_one }   { \fmtord{st} }
        { \c_two }   { \fmtord{nd} }
        { \c_three } { \fmtord{rd} }
      }{
        \fmtord{th}
      }
    }
  }{
    \ifcurrentbaselanguage{dutch}{
      \int_use:N \l__nwejm_abs_int
      e
    }{
      \textsc{\int_to_roman:n {\int_abs:n {#1}}}
      \ifcurrentbaselanguage{french}{
        \int_compare:nNnTF { \l__nwejm_abs_int } = { 1 }{\fmtord{er}}{\fmtord{e}}
      }{
        \ifcurrentbaselanguage{german}{
          .
        }{
        }
      }
    }
  }
}
\cs_new_protected:Nn \__nwejm_century_suffix:n
{
  \space{}
  \GetTranslation{century}%
  \int_compare:nNnT { #1 } < { 0 }{
    \space
    \GetTranslation{before-christ}
  }{
  }
}
\NewDocumentCommand \century { s m } {%
  \__nwejm_ordinalnum_suffix:n {#2}%
  \IfBooleanTF {#1}
  {
    \int_compare:nNnT { #2 } < { 0 }{
      \__nwejm_century_suffix:n {#2}%
    }
  }{
    \__nwejm_century_suffix:n {#2}%
  }
  \int_compare:nNnT { #2 } < { 0 }{
    \ifcurrentbaselanguage{english}{%
    }{
      \@ifnextchar.%
      {
      }{
        .\xspace
      }%
    }
  }
}
\NewDocumentCommand \aside { s m } {%
  \IfBooleanTF {#1}
  {
    \c__nwejm_aside_string_tl{}~#2
  }
  {
    \c__nwejm_aside_string_tl{}~#2~\c__nwejm_aside_string_tl
  }
}
\RenewDocumentCommand \vec { m } {
  \vv{#1}
}
\cs_new_protected:Nn \__nwejm_new_theorem:nnnnnn
{
  \AtBeginDocument{%
    \IfTranslation{English}{#2}{%
    }{%
      \DeclareTranslation{English}{#2}{\MakeUppercase #3}%
    }
    \IfTranslation{French}{#2}{%
    }{%
      \DeclareTranslation{French}{#2}{\MakeUppercase #4}%
    }
    \IfTranslation{German}{#2}{%
    }{%
      \DeclareTranslation{German}{#2}{\MakeUppercase #5}%
    }
    \IfTranslation{Dutch}{#2}{%
    }{%
      \DeclareTranslation{Dutch}{#2}{\MakeUppercase #6}%
    }
  }
  %
  \declaretheorem[%
  #1,%
  name=\protect\GetTranslation{#2}
  ]{#2}
  \declaretheorem[%
  #1,%
  name=\protect\GetTranslation{#2},
  numbered=no
  ]{#2*}
}
\cs_generate_variant:Nn \__nwejm_new_theorem:nnnnnn { nnVVVV }
\declaretheoremstyle[spaceabove=3pt,notefont=\bfseries,bodyfont=\itshape]{theorem}
\declaretheoremstyle[spaceabove=3pt,notefont=\bfseries,bodyfont=\normalfont]{definition}
\declaretheoremstyle[spaceabove=3pt,bodyfont=\normalfont,qed=\ensuremath{\qedsymbol},headfont=\normalfont\itshape,numbered=no]{proof}
\RenewDocumentCommand \newtheorem { O{} m }
{
  \tl_clear:N \l__nwejm_newtheorem_style_tl
  \tl_clear:N \l__nwejm_newtheorem_french_title_tl
  \tl_clear:N \l__nwejm_newtheorem_english_title_tl
  \tl_clear:N \l__nwejm_newtheorem_german_title_tl
  \tl_clear:N \l__nwejm_newtheorem_dutch_title_tl
  %
  \tl_set:Nn \l__nwejm_newtheorem_english_title_tl {
    #2
  }
  \tl_set:Nf \l__nwejm_newtheorem_french_title_tl {
    \l__nwejm_newtheorem_english_title_tl
  }
  \tl_set:Nf \l__nwejm_newtheorem_german_title_tl {
    \l__nwejm_newtheorem_english_title_tl
  }
  \tl_set:Nf \l__nwejm_newtheorem_dutch_title_tl {
    \l__nwejm_newtheorem_english_title_tl
  }
  \tl_set:Nn \l__nwejm_newtheorem_style_tl {
    theorem
  }
  \IfNoValueF {#1}
  {
    \keys_set:nn { nwejm / newtheorem } { #1 }
  }
  %
  \__nwejm_new_theorem:nnVVVV
  {style=\l__nwejm_newtheorem_style_tl}
  {#2}
  {\l__nwejm_newtheorem_english_title_tl}
  {\l__nwejm_newtheorem_french_title_tl}
  {\l__nwejm_newtheorem_german_title_tl}
  {\l__nwejm_newtheorem_dutch_title_tl}
}
\newtheorem{Theorem}
\newtheorem{Corollary}
\newtheorem{Conjecture}
\newtheorem{Proposition}
\newtheorem{Lemma}
\newtheorem{Axiom}
\newtheorem[style=definition]{Definition}
\newtheorem[style=definition]{Remark}
\newtheorem[style=definition]{Example}
\newtheorem[style=definition]{Notation}
\let\proof\relax
\let\endproof\relax
\newtheorem[style=proof]{Proof}
\cs_new_protected:Nn \__nwejm_clone_theorem:nn
{
  \NewDocumentEnvironment{#1}{}
  {
    \begin{#2}
    }{
    \end{#2}
  }
  \NewDocumentEnvironment{#1*}{}
  {
    \begin{#2*}
    }{
    \end{#2*}
  }
}
\__nwejm_clone_theorem:nn {theorem}{Theorem}
\__nwejm_clone_theorem:nn {corollary}{Corollary}
\__nwejm_clone_theorem:nn {conjecture}{Conjecture}
\__nwejm_clone_theorem:nn {proposition}{Proposition}
\__nwejm_clone_theorem:nn {lemma}{Lemma}
\__nwejm_clone_theorem:nn {axiom}{Axiom}
\__nwejm_clone_theorem:nn {definition}{Definition}
\__nwejm_clone_theorem:nn {remark}{Remark}
\__nwejm_clone_theorem:nn {example}{Example}
\__nwejm_clone_theorem:nn {notation}{Notation}
\__nwejm_clone_theorem:nn {proof}{Proof}
\crefname{Theorem}{\GetTranslation{theorem}}{\GetTranslation{theorems}}
\crefname{Corollary}{\GetTranslation{corollary}}{\GetTranslation{corollaries}}
\crefname{Conjecture}{\GetTranslation{conjecture}}{\GetTranslation{conjectures}}
\crefname{Proposition}{\GetTranslation{proposition}}{\GetTranslation{propositions}}
\crefname{Axiom}{\GetTranslation{axiom}}{\GetTranslation{axioms}}
\crefname{Definition}{\GetTranslation{definition}}{\GetTranslation{definitions}}
\crefname{Example}{\GetTranslation{example}}{\GetTranslation{examples}}
\crefname{Notation}{\GetTranslation{notation}}{\GetTranslation{notations}}
\crefname{Proof}{\GetTranslation{proof}}{\GetTranslation{proofs}}
\crefname{Remark}{\GetTranslation{remark}}{\GetTranslation{remarks}}
\crefname{Lemma}{\GetTranslation{lemma}}{\GetTranslation{lemmas}}
\newlist{assertions}{enumerate}{1}
\setlist[assertions]{%
  label=\normalfont(\textsf{\tl_head:f
    {\GetTranslation{Assertion}}}$\c_math_subscript_token\mathsf{\arabic*}$),
  ref=(\textsf{\tl_head:f
    {\GetTranslation{Assertion}}}$_\mathsf{\arabic*}$)
}
\DeclareMathOperator{\cotan}{cotan}
\DeclareMathOperator{\Arccos}{Arccos}
\DeclareMathOperator{\Arcsin}{Arcsin}
\DeclareMathOperator{\Arctan}{Arctan}
\DeclareMathOperator{\arccosh}{arccosh}
\DeclareMathOperator{\arcsinh}{arcsinh}
\DeclareMathOperator{\arctanh}{arctanh}
\DeclareMathOperator{\Argch}{Argch}
\DeclareMathOperator{\Argsh}{Argsh}
\DeclareMathOperator{\Argth}{Argth}
\cs_set_eq:NN \__nwejm_orig_arccos \arccos
\cs_set_eq:NN \__nwejm_orig_arcsin \arcsin
\cs_set_eq:NN \__nwejm_orig_arctan \arctan
\cs_set_eq:NN \__nwejm_orig_arccosh \arccosh
\cs_set_eq:NN \__nwejm_orig_arcsinh \arcsinh
\cs_set_eq:NN \__nwejm_orig_arctanh \arctanh
\RenewDocumentCommand \arccos {} {
  \ifcurrentbaselanguage{french}{\Arccos}{\__nwejm_orig_arccos}%
}
\RenewDocumentCommand \arcsin {} {
  \ifcurrentbaselanguage {french}{\Arcsin}{\__nwejm_orig_arcsin}%
}
\RenewDocumentCommand \arctan {} {
  \ifcurrentbaselanguage {french}{\Arctan}{\__nwejm_orig_arctan}%
}
\RenewDocumentCommand \arccosh {} {
  \ifcurrentbaselanguage{french}{\Argch}{\__nwejm_orig_arccosh}%
}
\RenewDocumentCommand \arcsinh {} {
  \ifcurrentbaselanguage {french}{\Argsh}{\__nwejm_orig_arcsinh}%
}
\RenewDocumentCommand \arctanh {} {
  \ifcurrentbaselanguage {french}{\Argth}{\__nwejm_orig_arctanh}%
}
\DeclareMathOperator{\ch}{ch}
\DeclareMathOperator{\sh}{sh}
\cs_set_eq:NN \__nwejm_orig_tanh \tanh
\RenewDocumentCommand \tanh {} {
  \ifcurrentbaselanguage {french}{\operatorname{th}}{\__nwejm_orig_tanh}%
}
\DeclareMathOperator{\Id}{Id}
\cs_set_eq:NN \__nwejm_orig_log \log
\cs_set_eq:NN \__nwejm_orig_lg \lg
\RenewDocumentCommand \log { s } {
    \IfBooleanTF {#1}
  {
    \__nwejm_orig_log
  }
  {
    \ln
  }
}
\RenewDocumentCommand \lg { s } {
    \IfBooleanTF {#1}
  {
    \__nwejm_orig_lg
  }
  {
    \ln
  }
}
\cs_set_eq:NN \__nwejm_orig_leq \leq
\cs_set_eq:NN \__nwejm_orig_geq \geq
\RenewDocumentCommand \le {} {%
  \ifcurrentbaselanguage {french}{\leqslant}{\__nwejm_orig_leq}%
}
\RenewDocumentCommand \leq {} {%
  \ifcurrentbaselanguage {french}{\leqslant}{\__nwejm_orig_leq}%
}
\RenewDocumentCommand \ge {} {%
  \ifcurrentbaselanguage {french}{\geqslant}{\__nwejm_orig_geq}%
}
\RenewDocumentCommand \geq {} {%
  \ifcurrentbaselanguage {french}{\geqslant}{\__nwejm_orig_geq}%
}
\NewDocumentCommand \N {} {\mathbb{N}}
\NewDocumentCommand \Z {} {\mathbb{Z}}
\NewDocumentCommand \D {} {\mathbb{D}}
\NewDocumentCommand \Q {} {\mathbb{Q}}
\NewDocumentCommand \R {} {\mathbb{R}}
\NewDocumentCommand \C {} {\mathbb{C}}
\NewDocumentCommand \K {} {\mathbb{K}}
\cs_set_eq:NN \emptyset \varnothing
\tl_new:N \l__nwejm_given_tl
\tl_set:Nn \l__nwejm_given_tl {
  \nonscript\:\delimsize\slash
  \allowbreak
  \nonscript\:
  \mathopen{}
}%
\DeclarePairedDelimiterX\__nwejm_set[1]\{\}{%
  #1
}
\NewDocumentCommand \set { m O{} } {
  \tl_if_empty:nTF {#2} {%
    \__nwejm_set*{#1}
  }{
    \__nwejm_set*{#1\l__nwejm_given_tl #2}
  }
}
\@ifpackageloaded{pgfplots}{%
  \ifcurrentbaselanguage{french}{%
    \pgfplotsset{%
      /pgf/number~format/.cd,
      use~comma,
      1000~sep={\,},
      min~exponent~for~1000~sep=4
    }%
  }{
  }
}
\AtEndPreamble{%
  \defbibheading{__nwejm_subbibliography}[\refname]{%
    \section*{#1}
  }%
  \SetCiteCommand{\autocite}%
}%
\int_new:N \l__nwejm_section_int
\cs_set_eq:NN \__nwejm_printbibliography \printbibliography
\RenewDocumentCommand \printbibliography { O{} } {
  \FloatBarrier%
  \tl_if_empty:NF {\g__nwejm_article_acknowledgments_tl}
  {
    \section*{\GetTranslation{Acknowledgments}}
    \g__nwejm_article_acknowledgments_tl
    \tl_gclear:N \g__nwejm_article_acknowledgments_tl
  }
  \int_set:Nn \l__nwejm_section_int {\thesection}
  \setcounter{section}{-1}
  \__nwejm_printbibliography[heading=__nwejm_subbibliography,resetnumbers,#1]
  \setcounter{section}{\int_use:N \l__nwejm_section_int}
}
\exp_after:wN\addbibresource\exp_after:wN{\c__nwejm_issue_bib_path_string_tl}
\DeclareNameFormat{firstinits-last}{%
  \usebibmacro{name:first-last}{#1}{#4}{#5}{#7}%
  \usebibmacro{name:andothers}%
}
\renewcommand*\bibnamedelimc{\addnbspace}
\renewcommand*\bibnamedelimd{\addnbspace}
\renewbibmacro{in:}{%
  \ifentrytype{article}{}{\printtext{\bibstring{in}\intitlepunct}}
}
\renewbibmacro*{journal}{%
  \iffieldundef{shortjournal}%
  {%
    \iffieldundef{journaltitle}
    {}
    {%
      \printtext[journaltitle]%
      {%
        \printfield[titlecase]{journaltitle}%
        \setunit{\subtitlepunct}%
        \printfield[titlecase]{journalsubtitle}%
      }%
    }%
  }%
  {\printtext[journaltitle]{\printfield[titlecase]{shortjournal}}}%
}
\renewbibmacro*{volume+number+eid}{%
  \printfield{volume}%
  \setunit*{\addnbthinspace}%
  \printfield{number}%
  \setunit{\addcomma\space}%
  \printfield{eid}
}
\DeclareFieldFormat[article]{volume}{\mkbibbold{#1}}
\DeclareFieldFormat[book]{volume}{\mkbibbold{#1}}
\DeclareFieldFormat[article]{number}{\mkbibparens{#1}}
\DeclareLabeldate{%
  \field{date}
  \field{eventdate}
  \field{origdate}
  \field{urldate}
  \field{pubstate}
  \literal{nodate}
}
\renewrobustcmd{\blx@mkbibfootnote}[2]{%
  \iftoggle{blx@footnote}
  {\blx@warning{Nested notes}%
    \addspace\mkbibparens{#2}}
  {\unspace
    \ifnum\blx@notetype=\tw@
    \expandafter\@firstoftwo
    \else
    \expandafter\@secondoftwo
    \fi
    {\csuse{blx@theendnote#1}{\protecting{\blxmkbibnote{end}{#2}}}}
    {%
      \patchcmd\@makefnmark%
      {\normalfont}%
      {\normalfont\bfseries}%
      {}{}%
      \csuse{footnote#1}{\protecting{\blxmkbibnote{foot}{#2}}}
    }
  }
}
\newbibmacro*{__nwejm_cite}{%
  \iffieldundef{shorthand}{%
    \ifthenelse{%
      \ifnameundef{labelname}%
    }{%
      \usebibmacro{cite:label}%
      \setunit{\addcomma\space}%
    }{%
      \printnames{labelname}%
      \ifthenelse{%
        \iffieldundef{labelyear}%
      }{%
      }{%
        \setunit{\addcomma\space}%
        \usebibmacro{cite:labelyear+extrayear}%
        \ifthenelse{%
          \iffieldundef{labeltitle}%
        }{%
        }{%
          \setunit{\addcomma\space}%
          \usebibmacro{cite:title}%
        }
      }
    }%
  }{%
    \usebibmacro{cite:shorthand}%
  }%
}
\newbibmacro*{cite:title}{%
  \printtext[bibhyperref]{%
    \printfield[citetitle]{labeltitle}}}
\DeclareCiteCommand{\__nwejm_foot_cite}[\mkbibfootnote]
{\usebibmacro{prenote}}
{\usebibmacro{citeindex}%
  \usebibmacro{__nwejm_cite}}
{%
  \setlength{\parindent}{\footnotemargin}
  \multicitedelim\newline\indent
}
{\usebibmacro{postnote}}
\DeclareMultiCiteCommand{\__nwejm_foot_cites}[\mkbibfootnote]{\__nwejm_foot_cite}
{\addsemicolon\space}
\DeclareAutoCiteCommand{__nwejm_foot_cite}{\__nwejm_foot_cite}{\__nwejm_foot_cites}
\ExecuteBibliographyOptions{autocite=__nwejm_foot_cite}
\ifkp@easyscsl
\DeclareRobustCommand{\itshape}{\not@math@alphabet\itshape\mathit%
  \ifthenelse{\equal{\f@shape}{\scdefault}}{\fontshape{scsl}}{%
    \fontshape\itdefault}\selectfont}
\fi
\DeclareMathAlphabet\mathfrak{U}{euf}{m}{n}
\SetMathAlphabet\mathfrak{bold}{U}{euf}{b}{n}
\@ifpackageloaded{draftwatermark}{%
  \SetWatermarkColor{gray!10}%
  \SetWatermarkFontSize{30mm}%
  \SetWatermarkText{\MakeUppercase{\c__nwejm_draftwatermark_string_tl}}%
}{%
}
\pdftex_if_engine:T
  {
    \renewcommand{\ttdefault}{lmtt}
  }
\tl_new:N \g__nwejm_font_designer_text_tl%
\cs_new_protected:Nn \__nwejm_font_designer_text:n
{
  \tl_gset:Nn \g__nwejm_font_designer_text_tl { #1 }
}
\NewDocumentCommand \fontdesignertext {m}
{
  \__nwejm_font_designer_text:n {#1}%
}
\tl_new:N \g__nwejm_printer_text_tl%
\cs_new_protected:Nn \__nwejm_printer_text:n
{
  \tl_gset:Nn \g__nwejm_printer_text_tl { #1 }
}
\NewDocumentCommand \printertext {m}
{
  \__nwejm_printer_text:n {#1}%
}
\NewDocumentCommand \nwejm { s } {
  \IfBooleanTF {#1}
  {
    \g__nwejm_nwejm_string_tl
  }
  {
    \g__nwejm_nwejm_short_string_tl
  }
  \xspace
}
\AtBeginDocument{%
  \dim_if_exist:NTF \g__nwejm_pagegrid_dim {%
    \pagegridsetup{%
      enable,%
      step=\g__nwejm_pagegrid_dim%
    }
  }{%
    \pagegridsetup{%
      disable%
    }
  }
  \bool_if:NTF {\g__nwejm_for_authors_bool} {
    \thispagestyle{empty}
    \includegraphics{gzt-logo}
    \hfill
    \includegraphics[height=22.5mm]{\c__nwejm_smf_logo_file_string_tl}%
    \par
    \vfill
    \begin{adjustbox}{valign=c,minipage=\linewidth}
      \Large%
      \c__nwejm_preliminary_version_string_tl%
    \end{adjustbox}
    \vfill
    \newpage
  }{
    \bool_if:NF {\g__nwejm_inside_pages_bool} {
      \g__nwejm_display_frontcover_tl
      \g__nwejm_display_inside_frontcover_tl
    }
    \tableofcontents
  }
}
\AfterEndPreamble{%
  \titleformat{\chapter}[block]
  {\normalfont\centering}{}{0pt}{}
  \titlespacing*{\chapter}{0pt}{0pt}{0pt}
}
\ExplSyntaxOff
%% 
%% Copyright (C) 2015, 2016 by Denis Bitouze <denis.bitouze@lmpa.univ-littoral.fr>
%% 
%% This work may be distributed and/or modified under the
%% conditions of the LaTeX Project Public License (LPPL), either
%% version 1.3c of this license or (at your option) any later
%% version.  The latest version of this license is in the file:
%% 
%% http://www.latex-project.org/lppl.txt
%% 
%% This work is "maintained" (as per LPPL maintenance status) by
%% Denis Bitouze.
%% 
%% This work consists of the file nwejm.dtx and a Makefile.
%% Running "make" generates the derived files README, nwejm.pdf and nwejm.cls.
%% Running "make inst" installs the files in the user's TeX tree.
%% Running "make install" installs the files in the local TeX tree.
%% 
%%
%% End of file `nwejm.cls'.
