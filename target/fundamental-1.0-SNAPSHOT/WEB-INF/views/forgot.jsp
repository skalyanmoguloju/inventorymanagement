<%--
  Created by IntelliJ IDEA.
  User: sai
  Date: 2/17/16
  Time: 4:53 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta name="robots" content="noarchive" />
    <title>Forgot your password?</title>
    <link rel="shortcut icon" href="https://launchpad-asset3.37signals.com/favicon.ico?1455655021" />

    <meta name="csrf-param" content="authenticity_token"/>
    <meta name="csrf-token" content="p6DokiMevvy&#47;6q3yvVyl3Ag5zAozrkGX1YqQc31JOko="/>
    <style type="text/css">
        body.authorization {
            margin: 0;
            padding: 0;
            font-family: helvetica, arial, sans-serif;
            color: #222;
            background: #eee;
        }

        body.authorization div#container, body.authorization div#main {
            width: 640px;
        }

        body.authorization div#container {
            margin: 30px auto;
        }

        body.authorization div.panel {
            text-align: left;
            padding: 7px 28px 28px 28px;
            margin: 0;
            background: #fff url("https://launchpad-asset2.37signals.com/images/bkd_modal_stripes.gif?1455655026") repeat-x scroll top right;
        }

        body.authorization h1 {
            font-size: 16px;
            padding: 0;
            margin: 0 0 20px 0;
            line-height: 1.3em;
            color: #c00;
            height: 25px;
            padding-top: 6px;
            background: url("https://launchpad-asset2.37signals.com/images/basecamp_auth_logo.png?1455655026") no-repeat scroll center right;
        }

        body.authorization h2 {
            font-size: 16px;
            padding: 0;
            margin: 0 0 20px 0;
            line-height: 1.3em;
        }

        body.authorization h3 {
            font-size: 14px;
            padding: 0;
            margin: 0;
            line-height: 1.3em;
        }

        body.authorization h4 {
            margin: 10px 0 0 0;
            padding: 0;
        }

        body.authorization h5 {
            margin: 0;
            padding: 0;
            font-weight: normal;
            color: #666;
            font-size: 12px;
        }

        body.authorization p {
            margin: 0;
        }

        body.authorization p.submit {
            text-align: center;
        }

        body.authorization p.submit small {
            display: block;
            margin-top: 7px;
            font-size: 11px;
        }

        body.authorization a.admin {
            color: red;
        }

        body.authorization a.admin:hover, body.authorization a.admin:visited:hover {
            color: white;
            background: red;
            text-decoration: none;
        }

        /*-------------------------------------------------
        AUTHORIZATION SCREEN
        -------------------------------------------------*/

        body.authorization #app_wrapper {
            margin: 20px auto;
            background-color: #fafafa;
            padding: 10px 20px;
            -webkit-border-radius: 8px;
            -moz-border-radius: 8px;
            border-radius: 8px;
            border: 1px solid #e5e5e5;
        }

        body.authorization #app_wrapper table {
            width: 100%;
        }

        body.authorization #app_wrapper td {
            text-align: center;
            white-space: nowrap;
            padding: 10px 0;
            width: 33%;
            font-size: 14px;
        }

        body.authorization #app_wrapper td.arrows { width: 128px; }
        body.authorization #app_wrapper td.arrows span { display: none; }
        body.authorization #app_wrapper td.arrows image { width: 128px; height: 54px; }

        body.authorization #app_wrapper img { vertical-align: middle; height: 55px; }

        body.authorization #app_wrapper dl { text-align: left; }
        body.authorization #app_wrapper dt+dt { padding-top: 7px; }
        body.authorization #app_wrapper dt img { height: 32px; }

        body.authorization dt h4 {
            display: inline;
        }

        body.authorization #footer {
            margin-top: 30px;
            border-top: 1px solid #e0e0e0;
            padding-top: 10px;
        }

        body.authorization #footer p {
            font-size: 12px;
            line-height: 1.4em;
            color: #666;
        }

        body.authorization #footer strong {
            color: #333;
        }

        body.authorization #footer a {
            color: #333;
        }

        body.authorization #footer a:hover, body.authorization #footer a:visited:hover {
            color: #fff;
            text-decoration: none;
            background-color: #333;
        }

        /*-------------------------------------------------
        CSS BUTTONS
        -------------------------------------------------*/

        body.authorization button {
            display: block;
            cursor: pointer;
            margin: 0;
            padding: 3px 6px;
            color: #ffffff;
            font-family: helvetica, arial, sans-serif;
            font-weight: bold;
            font-size: 18px;
            line-height: 24px;
            border: none;
            border-top: 1px solid #b3dda1;
            border-left: 1px solid #88ca84;
            text-shadow: 0 0px 2px rgba(0,0,0,0.67);
            letter-spacing: -0.05em;
            -webkit-border-radius: 4px;
            -moz-border-radius: 4px;
            border-radius: 4px;
            background-color: #68bb4e;
            background-image: -webkit-gradient(linear, left top, left bottom, from(#7ac25a), to(#2fa42c));
        }

        body.authorization span.button {
            margin-top: 12px;
            background-color: #68bb4e;
            display: inline-block;
            -webkit-border-radius: 4px;
            -moz-border-radius: 4px;
            border-radius: 4px;
            border: 1px solid #2e8f28;
        }


        /*-------------------------------------------------
        Responsive CSS
        -------------------------------------------------*/

        /* iPhone */
        @media only screen and (max-device-width: 480px) {
            body.authorization div#container, body.authorization div#main { width: auto; }
            body.authorization div#container { margin: 15px; }
            body.authorization h1 { background-image: url("https://launchpad-asset3.37signals.com/images/basecamp_auto_logo_sml.png?1455655026"); padding-right: 30px; height: 40px; }
            body.authorization div.panel { padding: 7px 15px 28px 15px; background: #fff url("https://launchpad-asset1.37signals.com/images/bkd_modal_stripes_tall.gif?1455655026") repeat-x scroll top right; }
            body.authorization #app_wrapper { margin: 15px 0 5px 0; }
            body.authorization td { display: block; width: 100% !important; text-align: center; }
            body.authorization td.arrows img { display: none; }
            body.authorization td.arrows span { display: block !important; font-size: 14px; }
            body.authorization td > dl { width: 175px; margin: 0 auto; }
            body.authorization h2 { font-size: 14px; line-height: normal; margin-bottom: 0px; }
            body.authorization h5 { font-size: 10px; line-height: 1.1em; }
            img { max-width: 100%; }
        }

        /* iPad, landscape mode */
        @media only screen and (min-device-width: 481px) and (max-device-width: 1024px) and (orientation:landscape) {
            body.authorization div#container { margin-top: 120px; }
        }

        /* iPad, portrait mode */
        @media only screen and (min-device-width: 481px) and (max-device-width: 1024px) and (orientation:portrait) {
            body.authorization div#container { margin-top: 200px; }
        }


        /* on retina, use image that's scaled by 2 */
        @media (min--moz-device-pixel-ratio: 1.3),
        (-o-min-device-pixel-ratio: 2.6/2),
        (-webkit-min-device-pixel-ratio: 1.3),
        (min-device-pixel-ratio: 1.3),
        (min-resolution: 1.3dppx) {
            body.authorization h1 { background-image: url("https://launchpad-asset2.37signals.com/images/basecamp_auth_logo@2x.png?1455655026"); background-size: 109px 25px; }

            body.authorization div.panel { background-image: url("https://launchpad-asset1.37signals.com/images/bkd_modal_stripes@2x.gif?1455655026"); background-size: 39px 43px; }

            @media only screen and (max-device-width: 480px) {
                body.authorization div.panel { background-image: url("https://launchpad-asset1.37signals.com/images/bkd_modal_stripes_tall.gif?1455655026"); background-size: 80px 60px; }
            }
        }

        html > body.basecamp_only {
            background: #f5efe6;
            height: 100%;
        }

        html > body.basecamp_only div#header h2 a {
            width: 138px;
            padding: 41px 0 0;
            height: 0;
            text-indent: -999em;
            background: url("https://launchpad-asset2.37signals.com/images/bc_logo.png?1455655026") no-repeat left top;
        }

        html > body.basecamp_only div#header h2 a:hover {background-position: left -41px}

        html > body.basecamp_only div#other_products {background: #eae6df}

        html > body.basecamp_only div.page_header h2,
        html > body.basecamp_only div#header ul.nav a,
        html > body.basecamp_only div#other_products div,
        html > body.basecamp_only div#other_products div a,
        html > body.basecamp_only div#other_products div em,
        html > body.basecamp_only.users div.product div.header,
        html > body.basecamp_only.edit_identity div#affected_accounts {
            color: #7D7A75;
        }

        html > body.basecamp_only div.panel,
        html > body.basecamp_only.users div.product > div.liner {
            -webkit-box-shadow: 0 0 6px rgba(0,0,0,0.3);
            -moz-box-shadow: 0 0 6px rgba(0,0,0,0.3);
            box-shadow: 0 0 6px rgba(0,0,0,0.3);
            -webkit-border-radius: 3px;
            -moz-border-radius: 3px;
            border-radius: 3px;
        }

        html > body.basecamp_only.users div.product div.header {
            -webkit-border-top-left-radius: 3px;
            -webkit-border-top-right-radius: 3px;
            -moz-border-radius-topleft: 3px;
            -moz-border-radius-topright: 3px;
            border-top-left-radius: 3px;
            border-top-right-radius: 3px;
        }

        html > body.basecamp_only.users div.accounts {
            -webkit-border-bottom-right-radius: 3px;
            -webkit-border-bottom-left-radius: 3px;
            -moz-border-radius-bottomright: 3px;
            -moz-border-radius-bottomleft: 3px;
            border-bottom-right-radius: 3px;
            border-bottom-left-radius: 3px;
        }

        /* on retina, use image that's scaled by 2 */
        @media (min--moz-device-pixel-ratio: 1.3),
        (-o-min-device-pixel-ratio: 2.6/2),
        (-webkit-min-device-pixel-ratio: 1.3),
        (min-device-pixel-ratio: 1.3),
        (min-resolution: 1.3dppx) {
            html > body.basecamp_only div#header h2 a { background-image: url("https://launchpad-asset2.37signals.com/images/bc_logo@2x.png?1455655026"); background-size: 138px 82px;}
        }

        /*-------------------------------------------------
        LOCALIZABLE (NON-IMAGE) BUTTONS
        -------------------------------------------------*/

        div.button {
            /* Ensure the keyboard focus outline can still be seen */
            overflow: hidden;
            margin-left: -1px;
            margin-top: -1px;
            padding: 1px;
        }

        div.button a,
        div.button a:hover {
            background: url("https://launchpad-asset3.37signals.com/images/buttons/button_left.gif") 0 0 no-repeat !important;
            /* !important to overrule background: none on a:hover. Otherwise the default hover color bleeds through */
            display: block;
            float: left;
            font-family: 'Lucida Grande', 'Lucida Sans', 'Lucida Sans Unicode', 'Verdana', sans-serif;
            font-size: 13px;
            font-weight: bold;
            height: 32px;
            margin-right: 0.4em;
            padding: 0 0 0 16px !important;
            text-decoration: none !important;
            text-shadow: 0 0 1px #ffffff;
            text-wrap: none;
        }

        div.button a span {
            background: url("https://launchpad-asset1.37signals.com/images/buttons/button_right.gif") 100% 0 no-repeat;
            color: #000000;
            display: block;
            padding: 0px 12px 3px 0;
            line-height: 29px;
        }

        div.button a:active {
            background-position: 0 -32px !important;
        }

        div.button a:active span {
            background-position: 100% -32px !important;
        }

        /* A disabled button */
        div.button a.disabled {
            background-image: url("https://launchpad-asset2.37signals.com/images/buttons/add_button_left_disabled.gif");
        }

        div.button a.disabled span {
            color: #555555;
        }

        body.edit_identity {
            font-family: lucida grande, arial, sans-serif;
        }

        body.edit_identity .col p {
            margin: 0;
        }

        body.edit_identity .col a {
            color: #05c;
            padding: 1px;
        }

        body.edit_identity .col a:hover {
            color: #fff;
            background: #05c;
            text-decoration: none;
        }

        body.edit_identity a.admin {
            color: red;
        }

        body.edit_identity a.admin:hover {
            color: white;
            background: red;
        }

        body.edit_identity .container {
            width: 850px;
        }

        body.edit_identity .Left,
        body.edit_identity table.layout td.left {
            width: 60%;
        }

        body.edit_identity .Right,
        body.edit_identity table.layout td.right {
            width: 40%;
            font-family: helvetica, arial, sans-serif;
        }

        body.edit_identity div.link_back {
            text-align: left;
            font-size: 14px;
            margin: 0 0 14px 0;
        }

        body.edit_identity div.link_back a {
            text-decoration: none;
        }

        body.edit_identity div.link_back a span.underlined {
            text-decoration: underline;
        }

        body.edit_identity div.link_back a:hover span.underlined {
            text-decoration: none;
        }

        body.edit_identity a.identity_link {
            font-size: 12px;
            float: right;
            color: #555;
        }

        body.edit_identity div.page_header h1 {
            font-size: 14px;
            margin: 0;
        }

        body.edit_identity label {
            font-weight: normal;
            color: #222;
            font-size: 12px;
            white-space: nowrap;
        }

        body.edit_identity tr.confirm_password label,
        body.edit_identity tr.current_password label {
            white-space: normal;
        }

        body.edit_identity input {
            color: #000;
            font-weight: bold;
            font-size: 14px;
            padding: 3px;
            width: 300px;
        }

        body.edit_identity span.text {
            color: #000;
            font-weight: bold;
            font-size: 14px;
            padding: 5px 0;
            margin: 2px 5px 0 0;
            display: inline-block;
        }

        body.edit_identity table {
            padding: 0;
            margin: 0;
            border: none;
        }

        body.edit_identity table tr {
            padding: 0;
        }

        body.edit_identity table p.hint {
            font-size: 11px;
            color: #999;
        }

        body.edit_identity table p.hint.emphasized { color: red; }

        body.edit_identity table p.hint a {
            color: #888;
        }

        body.edit_identity table p.hint a:hover {
            color: #fff;
            background: #666;
        }

        body.edit_identity table tr.submit td input {
            width: auto;
            font-size: 14px;
            padding: 0;
        }

        body.edit_identity table tr.submit td {
            padding-top: 6px;
        }

        body.edit_identity table tr.submit td input:disabled {
            color:#999;
        }

        body.edit_identity table td,
        body.edit_identity table th {
            padding: 0;
            color: #999;
            font-size: 11px;
            vertical-align: middle;
        }

        body.edit_identity table td {
            padding-left: 10px;
        }

        body.edit_identity table tr th {
            vertical-align: top;
            padding-top: 10px;
            min-width: 96px;
            text-align: left;
        }

        body.edit_identity table tr.username_password td input {
            width: 240px;
        }

        body.edit_identity table tr.confirm_password th {
            padding-top: 0;
        }

        body.edit_identity table tr.avatar th {
            padding: 0 0 18px 0;
            text-align: right;
        }

        body.edit_identity table tr.avatar td {
            vertical-align: top;
            padding-top: 6px;
        }

        body.edit_identity table tr.with_tip td p {
            font-size: 11px;
        }

        body.edit_identity tr.avatar th img {
            background: #fff;
            padding: 1px;
            border: 1px solid #ddd;
            height: 55px;
            width: 55px;
        }

        body.edit_identity tr.avatar td input {
            font-size: 12px;
            font-weight: normal;
            width: auto;
        }

        body.edit_identity tr.avatar td a {
            font-size: 11px;
        }

        body.edit_identity tr.avatar td p {
            margin: 0;
        }

        body.edit_identity table td strong {
            color: #666;
        }

        body.edit_identity div.errors {
            border: 2px solid red;
            margin: 0 0 20px 0;
            padding: 10px;
            font-size: 13px;
        }

        body.edit_identity div.errors h2 {
            font-size: 16px;
            margin: 0 0 10px 0;
        }

        body.edit_identity div.errors ul {
            padding: 0 0 0 20px;
        }

        body.edit_identity div.errors li {
            list-style-type: square;
            color: #333;
        }

        body.edit_identity input.dummy[data-dummy=true] {
            color: #888;
        }

        body.edit_identity tr.verification_method div.validated_field {
            margin-bottom: 0;
        }

        body.edit_identity tr.verification_method td,
        body.edit_identity tr.verification_method th {
            border-top: 1px solid #ddd;
        }

        body.edit_identity tr.verification_method th { text-align: center; }

        body.edit_identity tr.verification_method th label {
            display: inline-block;
            padding: 3px 8px;
            margin: -3px 0 0;
            color: white;
            background: #33a02c;
            -webkit-border-radius: 3px;
            -moz-border-radius: 3px;
            border-radius: 3px;
        }

        body.edit_identity tr.verification_method th a {
            color: #666;
        }

        body.edit_identity tr.submit td {
            padding-bottom: 15px;
        }

        body.edit_identity th.security h2 {
            margin: 0;
            font-size: 14px;
            font-weight: bold;
            color: black;
        }

        body.edit_identity th.security p {
            font-weight: normal;
            font-size: 12px;
            margin: 0.5em 0 1em;
            color: #666;
        }

        /* =====================================
        AFFECTED ACCOUNTS
        =======================================*/

        body.edit_identity #affected_accounts {
            margin-top: 12px;
        }

        #affected_accounts {
            color: #333;
            font-size: 14px;
        }

        #affected_accounts dl,
        #affected_accounts dt,
        #affected_accounts dd {
            padding: 0;
            float: none;
            text-align: left;
            font-weight: normal;
            font-size: 14px;
            width: auto;
        }

        #affected_accounts dl {
            margin: 0 0 0 44px;
        }

        #affected_accounts dd {
            margin: 0 0 5px;
            color: #666;
        }

        #affected_accounts dt {
            font-size: 14px;
            font-weight: normal;
            color: #333;
            border: none;
            background: none;
            padding: 0;
            margin: 20px 0 5px;
        }

        #affected_accounts dt strong {
            border-bottom: 1px solid #ccc;
            display: block;
            padding: 0 0 4px;
        }

        #affected_accounts dt img {
            margin: 0 0 -26px -44px;
            vertical-align: middle;
        }


        /*-------------------------------------------------
        IDENTITY VALIDATION
        -------------------------------------------------*/

        body.identity_validation div.validated_field {
            margin: -5px -10px 10px -10px;
            /*padding: 5px 0 5px 10px;*/
            display: inline-block;
        }

        body.identity_validation table div.validated_field {
            margin: -5px -10px 10px -10px;
            padding: 7px 0 5px 8px;
            display: block;
        }

        body.identity_validation table div.validated_field.locale {
            margin: 0 -10px;
        }

        body.edit_identity table tr.username_password td div.validated_field {
            width: 280px;
            padding-right: 10px;
        }

        body.identity_validation div.validated_field p,
        body.identity_validation div.validated_field h2,
        body.identity_validation div.validated_field p.hint,
        body.identity_validation div.validated_field p.field {
            margin: 0;
        }

        body.identity_validation div.validated_field p.field {
            padding: 0 40px 0 0;
            display: inline-block;
        }

        body.identity_validation div.validated_field p.hint,
        body.identity_validation div.validated_field p.error {
            margin-top: 5px;
            font-size: 11px;
            line-height: 1.1em;
            background: none;
        }

        body.identity_validation div.validated_field p.error {
            display: none;
            color: #f00;
        }

        body.identity_validation div.validated_field.invalid p.error {
            display: block;
        }

        body.identity_validation div.validated_field.invalid label,
        body.identity_validation div.validated_field.invalid h2 {
            color: #f00;
        }

        body.identity_validation div.validated_field.invalid {
            background: #fedfe7;
            border-radius: 6px;
            -webkit-border-radius: 6px;
            -moz-border-radius: 6px;
        }

        body.identity_validation div.validated_field.invalid p.field {
            background: url("https://launchpad-asset1.37signals.com/images/icon_fail.png?1455655026") no-repeat right center;
        }

        body.identity_validation table div.validated_field.valid,
        body.identity_validation table div.validated_field.invalid {
            background-position: right 12px;
        }

        body.identity_validation div.validated_field.invalid p.hint {
            display: none;
        }

        body.identity_validation div.username_suggestions {
            margin: 10px 0 5px 0;
        }

        body.identity_validation div.username_suggestions ul {
            padding-top: 5px;
        }

        body.identity_validation div.username_suggestions li {
            padding-top: 4px;
            font-family: monaco, monspace, courier, sans-serif;
        }

        body.simple_form div.time_zone {
            margin: 0 0 15px 0;
        }

        body.identity_validation div.time_zone {
            margin: 15px 0 0 0;
        }

        body.identity_validation div.time_zone p,
        body.simple_form div.time_zone p {
            text-align: left;
            color: #666;
            font-size: 14px;
        }

        body.identity_validation div.time_zone select,
        body.simple_form div.time_zone select {
            margin-top: 5px;
            width: 100%;
            font-size: larger;
        }

        /* IE */

        *:first-child+html body.identity_validation div.validated_field,
        *:first-child+html body.identity_validation table div.validated_field,
        *:first-child+html body.identity_validation div.validated_field p.field {
            display: inline;
        }


        *:first-child+html body.identity_validation div.validated_field,
        *:first-child+html body.identity_validation table div.validated_field {
            margin-top: -3px;
            padding-right: 0;
        }

        *:first-child+html body.identifications div.pick {
            zoom: 1;
        }

        html {background: #f5efe6;}

        body {
            font-family: helvetica, arial, sans-serif !important;
            margin: 0;
            padding: 0 30px;
        }

        body.users,
        body.edit_settings {
            background-color: #f5efe6;
        }

        body.users div#launchbar {
            position: absolute;
            width: 100%;
            display: none;
        }

        body.users.launching div#launchbar {
            display: block;
        }

        div.thanks_for_assembling {
            background: url("https://launchpad-asset1.37signals.com/images/thank_you_flash_arrow.png?1455655026") 68px bottom no-repeat; width: 730px; padding-bottom: 20px; margin-bottom: 12px; margin-top: -30px;
        }

        div.thanks_for_assembling > div.liner {
            background: #fffe99; padding: 20px 20px 8px 20px; border-radius: 6px;
        }

        div.thanks_for_assembling p {
            margin: 0 0 12px 0; font-size: 14px;
        }

        div.thanks_for_assembling p strong {
            font-size: 18px;
            font-weight: normal;
        }

        div.thanks_for_assembling p.learn_more,
        div.thanks_for_assembling p.learn_more a {
            color: #33a02c;
        }

        div#header {
            font-size: 12px;
            text-align: right;
            height: 40px;
            padding: 15px 30px;
            margin: 0 -30px;
        }

        /* Move header out from under the traffic light buttons */
        html[data-bridge-configuration~=desktop-app-mac] div#header {
            padding-left: 70px;
        }

        div#header h1 {
            text-align: left;
            margin: 0;
            padding: 0;
            width: 127px;
            float: left;
            vertical-align: middle;
            text-indent: -9999px;
            display: none;
        }

        div#header h2 {
            text-align: left;
            margin: 0;
            padding: 0;
            line-height: 29px;
            font-size: 20px;
            float: left;
            font-weight: normal;
            color: #9c6;
        }

        div#header h2 a {
            color: #33a02c;
            text-decoration: none;
        }

        body.users div#header h2 a,
        body.edit_identity div#header h2 a,
        body.edit_settings div#header h2 a {
            display: block;
            height: 34px;
            margin-top: -5px;
            padding-top: 4px;
            background: url("https://launchpad-asset2.37signals.com/images/identity_sprites.png?1455655026") no-repeat -390px 0px;
            padding-left: 142px;
        }

        div#header ul.nav {
            display: block;
            float: right;
            margin: 0;
            padding: 0;
            color: #000;
            line-height: 30px;
        }

        div#header ul.nav li {
            display: inline;
            margin: 0 0 0 10px;
            list-style: none;
        }

        div#header a {
            color: #555;
            text-decoration: underline;
        }

        div#header li.selected a {
            color: #33a02c;
        }

        div#container {
            margin: 0 auto;
            width: 510px;
            text-align: center;
        }

        div#main {
            width: 500px;
        }

        div.page_header {
            padding-top: 6px;
        }

        div.page_header h2 {
            font-size: 16px;
            font-weight: bold;
            color: #888;
            margin: 0 -25px 15px;
            padding: 0 25px 14px;
            border-bottom: 1px solid #ddd;
        }

        div.panel {
            margin: 10px 0 25px;
            background: #fff;
            padding: 15px 25px 25px;
            -webkit-border-radius: 10px;
            -moz-border-radius: 10px;
            border-radius: 10px;
            border: 1px solid #aaa;
            -moz-box-shadow: 0 1px 3px 0 rgba(0,0,0,0.25); /* firefox 3.5+ */
            -webkit-box-shadow: 0 1px 3px 0 rgba(0,0,0,0.25); /* webkit */
            box-shadow: 0 1px 3px 0 rgba(0,0,0,0.25);
            -ms-filter: "progid:DXImageTransform.Microsoft.Shadow(Strength=3, Direction=135, Color='#999999')"; /* IE 8+ */
            filter: progid:DXImageTransform.Microsoft.Shadow(Strength=3, Direction=135, Color='#999999'); /* IE < = 7 */
        }

        body:first-of-type div.panel {border: none;}

        div.panel.suite {
            margin: 0 10px 30px;
            padding: 15px 25px;
        }

        div.suite div.suite_identifier {
            float: left;
            width: 258px;
        }

        div.suite p.links {
            margin: 0;
            font-size: 11px;
        }

        div.suite p.links a {
            text-decoration: none;
            color: #999;
        }

        div.suite p.links a + a {
            margin-left: 1em;
        }

        div.suite div.suite_identifier h1 {
            margin-top: 12px;
            font-size: 24px;
        }

        div.suite div.suite_identifier h1 span.label {
            font-weight: normal;
            color: #33a02c;
        }


        div.loading {
            display: none;
            margin: 10px auto;
            width: 179px;
            height: 21px;
            overflow: hidden;
        }

        div.suite_account div.loading {
            margin: 10px -23px;
        }

        body.login div.loading {background: url("https://launchpad-asset3.37signals.com/images/login_sprites.png?1455655026") no-repeat 0px -850px;}
        body.users div.loading {background: url("https://launchpad-asset2.37signals.com/images/identity_sprites.png?1455655026") no-repeat 0px -850px;}

        .clearfix:after {
            content: ".";
            display: block;
            height: 0;
            clear: both;
            visibility: hidden;
        }

        .clearfix {display: inline-block;}
        .clearfix {display: block;}

        /*-------------------------------------------------
        RSVP
        -------------------------------------------------*/

        body.rsvp div#container {
            text-align: left;
        }
        body.rsvp label {
            font-size: 13px !important;
        }

        body.edit_identity input[type="text"] {
            font-family: helvetica, arial, sans-serif !important;
            font-size:13px !important;
        }

        body.rsvp div#main p {
            font-size: 14px;
            color: #666;
        }

        /*-------------------------------------------------
        Edit Identity
        -------------------------------------------------*/

        body.edit_identity div#container {
            text-align: left;
            width: 850px;
        }

        body.edit_identity div#main {
            float: left;
        }

        body.edit_identity div#sidebar {
            float: right;
            width: 340px;
        }

        body.edit_identity div#affected_accounts {
            padding: 10px 20px;
            color: #666;
        }

        body.edit_identity div#affected_accounts span.product {
            color: #000;
        }

        body.edit_identity input {
            font-family: helvetica, arial, sans-serif !important;
        }

        body.edit_identity label {
            font-size: 13px !important;
        }

        body.edit_identity th.security h2 {
            font-size: 16px !important;
            font-weight: bold !important;
            color: #888 !important;
        }

        body.edit_identity tr.avatar th img {
            border: none !important;
            padding: 0 !important;
            -webkit-border-radius: 100px;
            -moz-border-radius: 100px;
            border-radius: 100px;
        }

        /*-------------------------------------------------
        Link Identity  Settings
        -------------------------------------------------*/
        body.identity div#main,
        body.link_identity div#main {
            margin: 0px auto;
            float: none;
        }

        body.identity div#main p,
        body.link_identity div#main p {
            font-size: 14px;
            color: #666;
        }

        body.link_identity div#main div.alert p {
            color: #C00;
            font-weight: bold;
        }

        body.link_identity a {
            color: #33a02c;
        }

        body.link_identity div.extras {
            text-align: left;
            margin: 10px auto;
            width: 300px;
            text-align: center;
            color: #000;
        }

        body.link_identity div.extras ul {
            margin: 0;
            padding: 0;
        }

        body.link_identity div.extras ul li {
            list-style: none;
            font-size: 12px;
            margin-bottom: 3px;
        }

        body.edit_identity a.identity_link {
            font-size: 12px;
            float: right;
            color: #555;
        }

        /*-------------------------------------------------
        Edit Launchpad Settings
        -------------------------------------------------*/

        body.edit_settings div#main {
            text-align: left;
        }

        body.edit_settings span.go_back {
            float: right;
            font-size: 12px;
            color: #333;
        }

        body.edit_settings span.go_back a {
            color: #333;
            text-decoration: underline;
            padding: 1px 4px;
        }

        body.edit_settings span.go_back a:hover {
            color: #fff;
            background: #333;
            text-decoration: none;
        }

        body.edit_settings div.panel h3 {
            margin: 5px 0 0;
            color: #666;
        }

        body.edit_settings div.panel h3 img {
            vertical-align: middle;
        }

        body.edit_settings div.panel p {
            font-size: 14px;
            line-height: 20px;
            margin: 0 0 10px;
        }

        body.edit_settings div.panel ul {
            margin: 0 0 44px 44px;
            padding: 0;
            border-top: 1px solid #666;
        }

        body.edit_settings div.panel li {
            list-style: none;
            padding: 0;
            margin: 0;
            border-bottom: 1px solid #ddd;
            font-size: 14px;
            color: #000;
            display: block;
            zoom: 1;
        }

        body.edit_settings div.panel li div {
            padding: 10px 8px;
        }

        body.edit_settings div.panel li div.edit {
            background: #f5efe6;
            color: #333;
        }

        body.edit_settings div.panel li a {
            color: #000;
            text-decoration: underline;
        }

        body.edit_settings div.panel li label {
            margin-left: 10px;
            color: #000;
        }

        body.edit_settings div.panel li span {
            float: right;
            color: #000;
            font-size: 11px;
            margin: 0 0 0 10px;
            vertical-align: middle;
        }

        body.edit_settings div.panel li div.edit p {
            font-size: 13px;
            line-height: 14px;
            margin-bottom: 8px;
        }

        body.edit_settings div.panel li div.edit em {
            display: block;
            color: #666;
            font-size: 11px;
            margin-top: 3px;
        }

        body.edit_settings div.panel li div.edit span {
            padding-top: 2px;
        }

        body.edit_settings div.panel li div.edit input.name {
            font-size: 14px;
            padding: 1px;
            width: 200px;
        }

        body.edit_settings div.panel li div.edit a {
            color: #c00;
            padding: 1px;
        }

        body.edit_settings div.panel li div.edit a:hover {
            color: #fff;
            background: #c00;
            text-decoration: none;
        }

        /* ----------------------------------
        Reordering
        -----------------------------------*/

        html, body.users, body.login {
            height: 100%;
            padding: 0;
        }

        body.users div.container,
        body.login div.container {
            height: auto;
            min-height: 100%;
            position: relative;
            padding: 0 30px;
        }

        body.users div.container {padding: 0;}
        body.users div#header {margin: 0; padding-bottom: 10px;}

        body.users div.products {
            margin: 30px auto 0;
            padding: 0 0 65px;
        }

        body.users div.product {
            width: 228px;
            padding: 0 10px;
            float: left;
        }

        body.users div.suite div.product {
            width: 144px;
        }

        body.users div.product > div.liner {
            border-radius: 8px;
            -moz-border-radius: 8px;
            -webkit-border-radius: 8px;
            -moz-box-shadow: 0 1px 3px 0 rgba(0,0,0,0.25); /* firefox 3.5+ */
            -webkit-box-shadow: 0 1px 3px 0 rgba(0,0,0,0.25); /* webkit */
            box-shadow: 0 1px 3px 0 rgba(0,0,0,0.25);
            border: 1px solid #ccc;
        }

        body:first-of-type.users div.product > div.liner {border: none; }

        body.users div.product div.header {
            color: #888;
            margin: 0;
            background: #fff;
            height: 40px;
            cursor: pointer;
            text-align: center;
            -webkit-border-top-left-radius: 8px;
            -webkit-border-top-right-radius: 8px;
            -moz-border-radius-topleft: 8px;
            -moz-border-radius-topright: 8px;
            border-top-left-radius: 8px;
            border-top-right-radius: 8px;
        }

        body.users div.product div.header div.liner {
            display: block;
            margin-right: 8px;
            height: 69px;
        }

        body.users div.product div.footer div.liner {
            margin-right: 8px;
            height: 8px;
            font-size: 4px;
        }

        body.users a img {
            border: 0;
        }

        body.users div.accounts {
            padding: 0 0 8px;
            margin-bottom: 30px;
            background: #fff;
            text-align: center;
            zoom: 1;
            -webkit-border-bottom-right-radius: 8px;
            -webkit-border-bottom-left-radius: 8px;
            -moz-border-radius-bottomright: 8px;
            -moz-border-radius-bottomleft: 8px;
            border-bottom-right-radius: 8px;
            border-bottom-left-radius: 8px;
        }

        body.users div.account {
            text-align: center;
            position: relative;
            zoom: 1;
        }

        *:first-child+html body.users.launching div.container {
            display: none;
        }

        body.users > div.rocket div.account span.logo,
        body.users div.product div.account span.logo {
            margin: 0 auto 3px;
            width: 98px;
            height: 0;
            background: url("https://launchpad-asset2.37signals.com/images/identity_sprites.png?1455655026") no-repeat left top;
            display: block;
            padding: 70px 0 0;
            overflow: hidden;
            text-decoration: none;
            border: none;
            background-color: none;
            position: relative;
        }

        span.new_label {
            position: absolute;
            top: 5px;
            right: 5px;
            background: #efefef;
            padding: 3px 7px;
            color: #477B96;
            font-size: 10px;
            line-height: 12px;
            text-transform: uppercase;
            /*-webkit-box-shadow: 0 1px 5px rgba(0,0,0,0.3);
              -moz-box-shadow: 0 1px 5px rgba(0,0,0,0.3);
                   box-shadow: 0 1px 5px rgba(0,0,0,0.3);*/
            -webkit-border-radius: 12px;
            -moz-border-radius: 12px;
            border-radius: 12px;
        }

        span.new_label--bc3 {
            background: #ee8953;
            color: #fff;
        }

        body.users div.account span.logo.backpack { background-position: -97px top !important;}
        body.users div.account span.logo.highrise { background-position: -194px top !important;}
        body.users div.account span.logo.campfire { background-position: -291px top !important;}
        body.users div.account.bc3 span.logo.bc3 { background-position: -655px top !important;}
        body.users div.account.bcx span.logo.bcx { background-position: -1346px top !important;}

        body.users div.account.bcx span.logo.bcx.personal { background-position: -992px top !important;}
        body.users div.account.bcx span.logo.bcx.personal span.new_label { display: none !important;}

        body.users > div.rocket div.account div.name,
        body.users div.product div.name {
            margin: 0 0 5px 0;
            font-size: 18px;
            font-weight: bold;
            padding: 10px 0 0;
            text-align: center;
        }

        body.users > div.rocket div.account div.name,
        body.users div.product div.account div.name {
            margin: -5px 5px 0;
            font-size: 15px;
            font-weight: bold;
            color: #333;
            padding: 0 0 10px;
        }

        body.users > div.rocket div.account div.name span.tagline,
        body.users div.product div.account div.name span.tagline {
            display: block;
            margin-top: 3px;
            font-weight: normal;
            font-size: 12px;
            color: #888;
        }

        body.users div.account a {
            display: block;
            text-decoration: none;
            color: #333;
            border-top: 1px solid #ddd;
            padding: 10px 0 0;
            zoom: 1;
        }

        body.users div.suite_account a {border-top-color: transparent;}
        body.users > div.rocket div.account a,
        body.users div.account > a  {cursor: default;}
        body.users div.account > a * {cursor: pointer;}

        body.users div.product.reordering > div.liner {
            box-shadow: 0px 0px 25px rgba(00,00,00,0.5);
            -moz-box-shadow: 0px 0px 25px rgba(00,00,00,0.5);
            -webkit-box-shadow: 0px 0px 25px rgba(00,00,00,0.5);
        }

        body.users div.product div.account.reordering {
            background: rgba(255, 255, 255, 0.5);
        }

        body.users div.product div.account.reordering a {
            box-shadow: 0px 0px 20px #666;
            -moz-box-shadow: 0px 0px 20px #666;
            -webkit-box-shadow: 0px 0px 20px #666;
            border-bottom: 1px solid #ddd;
        }

        body.users div.product > div.liner {
            margin-bottom: 30px;
        }

        body.users div.product > div.liner div.accounts {
            margin-bottom: 0;
        }

        body.users > div.rocket div.account.busy {
            text-align: center;
            padding: 1px 0 0;
        }

        body.users > div.rocket div.account.busy a {border-top: none;}
        body.users > div.rocket div.account.busy div.loading {display: block;}

        body.users .blank {
            text-align: center;
            background: #fff;
            padding: 30px !important;
        }

        div#other_products {
            position: absolute;
            bottom: 0;
            left: 0;
            background: #e5e5e5;
            text-align: center;
            width: 100%;
            margin: 0;
            padding: 0;
        }

        div#other_products div {
            display: block;
            padding: 10px 30px;
            margin: 0 auto;
            font-size: 12px;
            line-height: 15px;
            color: #ccc;
        }

        div#other_products div em {
            font-style: normal;
            font-weight: bold;
            color: #444;
        }

        div#other_products div sup {
            font-size: 8px;
        }

        div#other_products div a {
            text-decoration: none;
            color: #444;
        }

        div#other_products div li a {
            padding: 2px 5px;
        }

        div#other_products div a strong {
            text-decoration: underline;
        }

        div#other_products div a:hover {
            text-decoration: underline;
        }

        div#other_products li a:hover {
            text-decoration: none;
            color: #000;
            background: #fff;
        }

        div#other_products div a:hover strong {
            color: #33a02c;
        }

        div#other_products ul,
        div#other_products li {
            display: inline;
            list-style: none;
            margin: 0;
            padding: 0;
        }

        div#other_products li {
            white-space: nowrap;
        }

        /* ----------------------------------
        Deep Links
        -----------------------------------*/

        body.users div.product div.menu_container div.menu_target {
            display: none;
            position: absolute;
            top: 10px;
            right: 40px;
            padding: 10px;
            color: #999;
            cursor: pointer;
        }

        body.users div.suite div.product div.menu_container div.menu_target {
            right: -1px;
        }

        body.users div.product div.menu_container div.menu_target div.arrow {
            height: 18px;
            width: 18px;
            background: transparent url("https://launchpad-asset2.37signals.com/images/identity_sprites.png?1455655026") no-repeat -414px -52px;
        }

        body.users div.product div.menu_container:hover div.menu_target,
        body.users div.product div.menu_container.active_menu div.menu_target {
            display: block;
        }

        body.users div.product div.menu_container div.menu_target:hover div.arrow {
            background: transparent url("https://launchpad-asset2.37signals.com/images/identity_sprites.png?1455655026") no-repeat -390px -52px;
        }

        body.users div.product div.menu_container.active_menu div.menu_target,
        body.users div.product div.menu_container.reordering div.menu_target {
            display: none;
        }

        body.users div.product div.menu_container div.menu_content {
            display: none;
            position: absolute;
            top: 0;
            left: 0;
            z-index: 1;
        }

        body.users div.product div.menu_container div.menu_content div.menu_inner {
            position: relative;
            top: 20px;
            left: 160px;
            padding: 10px;
            background-color: #000;
            font-size: 12px;
            line-height: 1;
            -moz-border-radius: 8px;
            -webkit-border-radius: 8px;
            box-shadow: 0px 0px 5px rgba(00,00,00,0.5);
            -moz-box-shadow: 0px 0px 5px rgba(00,00,00,0.5);
            -webkit-box-shadow: 0px 0px 5px rgba(00,00,00,0.5);
            -webkit-user-select: none;
            -moz-user-select: none;
        }

        body.users div.suite div.product div.menu_container div.menu_content div.menu_inner {
            left: 117px;
        }

        body.users div.product div.menu_container div.menu_content div.menu_item {
            list-style: none;
            text-align: left;
            margin: 0;
            padding: 5px 5px 5px 0;
            border-bottom: 1px solid #333;
            line-height: 1;
            white-space: nowrap;
            min-width: 100px;
        }

        body.users div.product div.menu_container div.menu_content div.menu_item a {
            border: none;
            color: #fff;
            padding: 0;
        }

        body.users div.product div.menu_container div.menu_content div.menu_item:hover a,
        body.users div.product div.menu_container div.menu_content div.menu_item a.hover {
            color: #abe1ed;
        }

        body.users div.product div.menu_container div.menu_content div.menu_item.jump {
            color: #999;
            text-align: left;
            font-weight: normal;
            background-color: #000;
            font-size: 12px;
            line-height: 1;
            padding-bottom: 10px;
            border-top: 0;
            border-bottom: 1px solid #333;
            white-space: nowrap;
        }

        body.users div.product div.menu_container.active_menu div.menu_content {
            display: block;
        }

        body.users.launching div.account div.menu_target,
        body.users.launching div.account div.menu_content {
            display: none;
        }

        body.users div.active_menu,
        body.users div.has_active_menu {
            z-index: 1000 !important;
        }

        /*-------------------------------------------------
        Responsive CSS
        -------------------------------------------------*/

        /* iPhone */
        @media only screen and (max-device-width: 480px) {
            /* general */
            html, body.users { height: auto; }

            /* launchpad itself */
            body.users div#header { height: auto; }
            body.users div#header_logo { overflow: hidden; text-align: center; }
            body.users div#header h2 { float: none; display: inline-block; }
            body.users div#header ul.nav { text-align: center; float: none; line-height: normal; margin: 10px 0 0 0; }
            body.users div#header ul.nav li { margin: 0 5px 0 0; }
            body.users div#header ul.nav li strong { display: block; }
            body.users div.product { float: none; margin: 0 auto 15px auto; }
            body.users div.products { width: auto !important; margin: 0; }
            body.users div#other_products div { display: none; }
        }

        /* on retina, use image that's scaled by 2 */
        @media (min--moz-device-pixel-ratio: 1.3),
        (-o-min-device-pixel-ratio: 2.6/2),
        (-webkit-min-device-pixel-ratio: 1.3),
        (min-device-pixel-ratio: 1.3),
        (min-resolution: 1.3dppx) {
            body.login div.loading,
            body.verifications_setup div.loading {background-image: url("https://launchpad-asset1.37signals.com/images/login_sprites@2x.png?1455655026"); background-size: 1432px 1547px; }

            body.users div.loading,
            body.users div#header h2 a,
            body.edit_identity div#header h2 a,
            body.edit_settings div#header h2 a,
            body.users div.product div.account span.logo,
            body.users > div.rocket div.account span.logo,
            body.users div.product div.menu_container div.menu_target div.arrow,
            body.users div.product div.menu_container div.menu_target:hover div.arrow { background-image: url("https://launchpad-asset0.37signals.com/images/identity_sprites@2x.png?1455655026"); background-size: 1432px 200px; }
        }

        /*-------------------------------------------------
        LAUNCHBAR
        -------------------------------------------------*/

        div#launchbar {
            font-family: 'Lucida Grande', Verdana, Arial, Helvetica, sans-serif;
            font-size: 12px;
            background: #000;
            position: relative;
            text-align: left;
            z-index: 9999;
        }

        div#launchbar div.message {
            padding: 5px 30px;
            color: #999;
        }

        div#launchbar ul {
            margin: 0;
            padding: 0;
        }

        div#launchbar li {
            list-style-type: none;
            line-height: normal;
            padding: 0;
        }

        div#launchbar ul.menus {
            padding: 0 25px;
        }

        div#launchbar li.menu {
            float: left;
            position: relative;
            margin-right: 4px;
        }

        div#launchbar li.menu a {
            position: relative;
            display: block;
            padding: 5px 7px 6px 4px;
            font-size: 11px;
            color: #999;
            border-right: 1px solid #222;
            text-decoration: none;
        }

        div#launchbar li.menu a:hover {
            background: #000;
        }

        div#launchbar li.menu a.on {
            color: #ddd;
        }

        div#launchbar li.menu a.on:hover {
            color: #ddd;
        }

        div#launchbar li.menu a.account:hover {
            color: #fff;
        }

        div#launchbar li.menu a.current_account:hover {
            color: #999;
        }

        /* Promo ads in open bar */

        div#launchbar li.menu a.dimmed,
        div#launchbar li.menu a.dimmed:hover {
            color: #555;
        }

        div#launchbar li.menu div.items {
            display: none;
            position: absolute;
            z-index: 5;
            left: -5px;
            width: 210px;
        }

        div#launchbar li.hover div.items {
            display: block;
        }

        div#launchbar li.menu ul.items {
            margin-left: 1px;
            padding: 0 0 3px;
            background: #000;
            border-bottom-left-radius: 6px;
            -webkit-border-bottom-left-radius: 6px;
            -moz-border-radius-bottomleft: 6px;
            border-bottom-right-radius: 6px;
            -webkit-border-bottom-right-radius: 6px;
            -moz-border-radius-bottomright: 6px;
            box-shadow: 2px 2px 5px rgba(0, 0, 0, 0.4);
            -webkit-box-shadow: 2px 2px 5px rgba(0, 0, 0, 0.4);
            -moz-box-shadow: 2px 2px 5px rgba(0, 0, 0, 0.4);
        }

        div#launchbar li.item {
            background: none;
        }

        div#launchbar li.item a {
            padding: 5px 0 5px 10px;
            border-right: 0;
            background-color: #000;
        }

        div#launchbar li.item a:hover {
            background-color: #222;
        }

        /* IE */

        div#launchbar li.menu div.items {
            _background: none;
        }

        div#launchbar li.menu ul.items {
            _filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(src='/images/signal_id/launchbar_bg.png',sizingMethod='scale');
        }

        *:first-child+html div#launchbar li.menu ul.items {
            padding: 0 3px 3px 0;
            background: none;
            background: url("https://launchpad-asset2.37signals.com/images/signal_id/launchbar_bg.png?1453132771") repeat;
        }

        *:first-child+html div#launchbar li.item {
            background: #000;
        }

        *:first-child+html div#launchbar ul.items li.last {
            padding-bottom: 5px;
        }

        div#launchbar ul.menus,
        div#launchbar li.menu div.items,
        div#launchbar li.menu ul.items,
        div#launchbar li.item,
        div#launchbar li.item a {
            zoom: 100%;
        }

        body.with_launchbar div#launchbar {
            _position: absolute;
            _top: 0;
            _left: 0;
        }

        body.with_launchbar div#Header {
            _margin-bottom: 20px;
            _top: 20px;
        }

        /*-------------------------------------------------
        Password reset
        -------------------------------------------------*/

        body.verifications_setup div.container.password_reset { width: 400px; }
        body.verifications_setup div.container.password_reset div.innercol { text-align: left; }

        body.verifications_setup div.password_reset  div.password_form input {
            margin: 5px 0;
            width: 100%;
            *width: auto;
        }

        div.password_form div.field {
            font-size: 15px;
            margin: 15px 0;
        }

        div.password_form span.suggestion {
            color: grey;
            font-size: 13px;
            display: block;
        }

        div.password_form span.error_message { display: none; }

        div.password_form div.field.error span.error_message { display: block; }
        div.password_form div.field.error span.suggestion { display: none; }
        div.password_form div.field.error input { border-color: #c00; }

        div.password_form div.field.error input:focus {
            -webkit-box-shadow: 0 0 5px #c00;
            -moz-box-shadow: 0 0 5px #c00;
            box-shadow: 0 0 5px #c00;
        }

        div.password_reset #affected_accounts {
            border-top: 1px solid #ddd;
            margin-top: 25px;
            padding-top: 10px;
        }

        div.password_reset #affected_accounts dt img {
            margin: 0 0 -26px -44px;
            vertical-align: middle;
        }

        div.password_reset #affected_accounts dl {
            margin: 0 0 0 44px;
        }

        div.password_reset #affected_accounts dd {
            margin: 0 0 5px;
            color: #666;
        }

        div.password_reset #affected_accounts dt strong {
            border-bottom: 1px solid #ddd;
            display: block;
            padding: 0 0 4px;
        }

        div.password_reset #affected_accounts dt {
            font-size: 14px;
            font-weight: normal;
            color: #333;
            border: none;
            background: none;
            padding: 0;
            margin: 20px 0 5px;
        }

        .reorder_region {
            position: relative;
        }

        .reorder_container {
            position: relative;
        }

        /*-------------------------------------------------
        RSVP to Invitation Settings
        -------------------------------------------------*/
        body.rsvp div.panel {
            margin-top:25px;
        }

        body.simple_form div.pick {
            margin: 0 auto;
            width: 350px;
            text-align: center;
        }

        body.simple_form div.validated_field {
            margin: 0;
            padding: 4px 0;
            display: block;
        }

        body.simple_form div.validated_field.invalid {
            padding: 5px;
            margin: 0 -5px 3px -5px;
            text-align: left;
        }

        body.simple_form div.validated_field.invalid p.error {padding: 0 5px 5px 5px;}
        body.simple_form div.validated_field.invalid div.username_suggestions {padding: 0 5px;}

        body.simple_form div.pick div.validated_field h2 {font-size: 12px;}

        body.simple_form div.submit {margin-top: 20px;}
        body.simple_form.claim div.submit {margin: 0;}
        body.simple_form.claim div.submit p {margin: 0 0 10px;}
        body.simple_form.claim div.validated_field input {margin: 10px 0 5px;}

        body.simple_form.claim div.validated_field p {margin: 0;}

        body.identifications div.pick p.hint a {color: #999;}

        body.simple_form.claim div#main p.hint {
            text-align: left;
            font-size: 11px;
            margin-bottom: 20px;
        }

        body.simple_form.claim p.skip {
            font-size: 12px;
            text-align: center;
        }

        body.simple_form.claim p.skip a {color: #777;}
        body.simple_form.claim p.skip a:hover {color: #fff; background-color: #777;}

        body.simple_form div.pick input[type=text],
        body.simple_form div.pick input[type=password] {
            -webkit-appearance: none;
            line-height: 1.0em;
            border: 1px solid #d9d9d9;
            background-color: white;
            padding: 8px 10px;
            -webkit-border-radius: 4px;
            -moz-border-radius: 4px;
            border-radius: 4px;
            font-weight: normal;
            font-size: 18px;
            width: 328px;
        }

        body.simple_form div.pick td input[type=text],
        body.simple_form div.pick td input[type=password] {
            width: 150px;
        }

        body.simple_form div.pick td {vertical-align: top;}
        body.simple_form div.pick td.first_name {padding-right: 3px;}
        body.simple_form div.pick td.last_name {padding-left: 3px;}

        body.simple_form span.overlay_wrapper {
            position: relative;
            top: 0;
            left: 0;
            background: white;
        }

        body.simple_form span.overlay_wrapper input {
            position: relative;
            background: none;
            top: 0;
            z-index: 10;
        }

        body.simple_form span.overlay_wrapper label.overlabel {
            position: absolute;
            top: -1px;
            left: 12px;
            z-index: 100;
            color: #a9a9a9 !important;
            font-size: 18px;
        }

        *:first-child+html body.simple_form span.overlay_wrapper label.overlabel {
            top: 6px;
            left: 5px;
        }

        body.simple_form span.overlay_wrapper label.focus {
            color: #a9a9a9;
        }

        #rsvp_avatar_upload {
            position: relative;
            margin-bottom: 20px;
        }

        #rsvp_avatar_upload img.callout {
            position: absolute;
            top: 24px;
            left: 0;
        }


        #rsvp_avatar_upload div.frame_wrapper {
            position: relative;
            width: 204px;
            margin: 0 auto;
        }

        #rsvp_avatar_upload p.hint {
            text-align: center;
            font-size: 11px;
            margin: 6px 0 0 0;
            color: #666;
        }

        #rsvp_avatar_upload div.frame {
            border: 1px solid #e5e5e5;
            padding: 10px 10px 30px 10px;
            -moz-box-shadow: 0px 0px 3px rgba(0,0,0,0.1);
            -webkit-box-shadow: 0px 0px 3px rgba(0,0,0,0.1);
            box-shadow: 0px 0px 3px rgba(0,0,0,0.1);
            font-size: 11px;
        }

        #rsvp_avatar_upload div.frame div.photo {
            height: 180px;
            width: 180px;
            border: 1px solid #d9d9d9;
            display: block;
            background: #e9eef0 url("https://launchpad-asset1.37signals.com/images/rsvp_avatar_blank.png?1455655026") no-repeat scroll center center;
            text-align: center;
        }

        #rsvp_avatar_upload div.photo img {
            width: 180px;
            height: 180px;
            width: auto;
            display: block;
            vertical-align: center;
            text-align: center;
        }

        #rsvp_avatar_upload div.file_input_button {
            cursor: pointer;
            display: block;
            overflow: hidden;
            position: absolute;
            top: 85px;
            width: 180px;
        }

        #rsvp_avatar_upload div.file_input_button button {
            margin: 0 auto;
            height: 34px;
            width: 139px;
            -webkit-appearance: none;
            display: block;
            text-indent: -9000px;
            border: none;
            background: url("https://launchpad-asset3.37signals.com/images/rsvp_button_upload_photo.png?1455655026") no-repeat scroll top left;
        }

        #rsvp_avatar_upload div.file_input_button input[type=file] {
            cursor: pointer;
            height: 100%;
            position: absolute;
            right: 0;
            top: 0;
            filter: alpha(opacity=0.01);
            -moz-opacity: 0.01;
            opacity: 0.01;
            font-size: 100px;
        }

        #rsvp_avatar_upload div.remove_photo a {
            padding: 0;
        }

        #rsvp_avatar_upload div.remove_photo {
            display: none;
            position: absolute;
            bottom: 6px;
            text-align: center;
            width: 182px;
            height: 21px;
            line-height: 19px;
        }

        #rsvp_avatar_upload div.remove_photo > a {
            color: red;
        }

        #rsvp_avatar_upload div.remove_photo > a:hover {
            background-color: red;
            color: white;
            text-decoration: none;
        }

        #rsvp_avatar_upload div.progress {
            position: absolute;
            display: none;
            bottom: 13px;
            height: 5px;
            width: 182px;
            background: url("https://launchpad-asset2.37signals.com/images/dots-white.gif?1455655026") no-repeat scroll center center;
        }

        #rsvp_avatar_upload.busy div.file_input_button { display: none; }
        #rsvp_avatar_upload.busy div.progress { display: block; }
        #rsvp_avatar_upload.busy div.frame div.photo { filter: alpha(opacity=0.5); -moz-opacity: 0.5; opacity: 0.5; }

        #rsvp_avatar_upload.complete div.file_input_button { display: none; }
        #rsvp_avatar_upload.complete div.remove_photo { display: block; }
        #rsvp_avatar_upload.complete div.frame div.photo { background: #fff; }

        body.identity_validation table div.validated_field.locale {
            margin: 0 -10px;
        }

        body.edit_identity table tr.username_password td div.validated_field {
            width: 280px;
            padding-right: 10px;
        }

        body.identity_validation div.validated_field p,
        body.identity_validation div.validated_field h2,
        body.identity_validation div.validated_field p.hint,
        body.identity_validation div.validated_field p.field {
            margin: 0;
        }

        body.identity_validation div.validated_field p.field {
            padding: 0 40px 0 0;
            display: inline-block;
        }

        body.identity_validation div#main p.hint,
        body.identity_validation div#main p.error {
            margin-top: 5px;
            font-size: 11px;
            line-height: 1.1em;
            background: none;
        }

        body.identity_validation div.validated_field p.error {
            display: none;
            color: #f00 !important;
        }
        body.identity_validation div.validated_field.invalid p.error {
            display: block;
        }

        body.identity_validation div.validated_field.invalid label,
        body.identity_validation div.validated_field.invalid h2 {
            color: #f00;
        }

        body.identity_validation div.validated_field.invalid {
            background: #fedfe7;
            border-radius: 6px;
            -webkit-border-radius: 6px;
            -moz-border-radius: 6px;
        }

        body.identity_validation div.validated_field.invalid p.field {
            background: url("https://launchpad-asset1.37signals.com/images/icon_fail.png?1455655026") no-repeat right center;
        }

        body.identity_validation table div.validated_field.valid,
        body.identity_validation table div.validated_field.invalid {
            background-position: right 12px;
        }

        body.identity_validation div.validated_field.invalid p.hint {
            display: none;
        }

        body.identity_validation div.username_suggestions {
            margin: 10px 0 5px 0;
        }

        body.identity_validation div.username_suggestions ul {
            padding-top: 5px;
        }

        body.identity_validation div.username_suggestions li {
            padding-top: 4px;
            font-family: monaco, monspace, courier, sans-serif;
        }

        body.identifications.claim div.error {
            margin-bottom: 14px;
        }

        body.identifications.claim div.error h2 {
            font-size: 14px;
            color: #d00;
            margin: 0 0 4px 0;
            text-align:center;
        }

        body.identifications.claim div.error p {
            font-size: 11px;
            margin: 0;
            color: #666;
        }

        .segmented_input {
            display: inline-block;
            position: relative;
            *display: inline; /* IE 7 */
            zoom: 1;
        }

        .segmented_input label {
            display: inline-block;
        }

        .segmented_input input {
            font-size: 36px;
            text-align: center;
            margin-right: 5px;
        }

        .segmented_input input:not([name]) {
            width: 1em;
        }

        .segmented_input input.segmented_input_field {
            pointer-events: none;
            opacity: 1;
            color: #000;
            background: #fff;
            -webkit-text-fill-color: #000;
        }

        .segmented_input input.segmented_input_dummy {
            position: absolute;
            *top: 1px; /* IE 7 */
        }

        /*-------------------------------------------------
        LOGIN
        -------------------------------------------------*/

        body.login {
            padding: 0;
            text-align: center;
            border: none;
            background: #f5efe6;
        }

        body.login div#header {
            text-align: right;
            height: 40px;
            border: none;
            padding: 0;
            margin: 0;
        }

        body.login div#header h1 {
            text-align: left;
            margin: 10px 30px 0 0;
            padding: 0;
            text-indent: -9999px;
            width: 116px;
            float: right;
        }

        body.login div#header h1 a {
            display: block;
            height: 28px;
            background: url("https://launchpad-asset3.37signals.com/images/login_sprites.png?1455655026") no-repeat -500px -784px;
        }

        body.login div#login_content {
            margin: 130px auto 20px auto;
            text-align: center;
            width: 100%;
            max-width: 988px;
        }

        body.login div#login_content_inner {
            text-align: center;
            width: 100%;
            max-width: 988px;
            padding-bottom: 20px;
        }

        body.login.bcx div#login_content_inner,
        body.login.basecamp div#login_content_inner,
        body.login.highrise div#login_content_inner,
        body.login.backpack div#login_content_inner,
        body.login.campfire div#login_content_inner {
            background: none !important;
        }

        body.login.bcx div#login_content,
        body.login.basecamp div#login_content {
            background: url("https://launchpad-asset3.37signals.com/images/login_BC.png?1455655026") no-repeat 180px 42px;
        }

        body.login.highrise div#login_content {
            background: url("https://launchpad-asset1.37signals.com/images/login_HR.png?1455655026") no-repeat 180px 42px;
        }

        body.login.backpack div#login_content {
            background: url("https://launchpad-asset3.37signals.com/images/login_BP.png?1455655026") no-repeat 180px 42px;
        }

        body.login.campfire div#login_content {
            background: url("https://launchpad-asset2.37signals.com/images/login_CF.png?1455655026") no-repeat 180px 42px;
        }

        body.login.bc3 div#login_content {
            background: url("https://launchpad-asset3.37signals.com/images/login_BC3.png?1455655026") no-repeat center 30px;
            background-size: 100px 80px;
            margin-top: 0;
            padding-top: 130px;
        }

        body.login.backpack div#other_products { display: none; }

        body.login.bcx div#login_content.wide,
        body.login.basecamp div#login_content.wide,
        body.login.campfire div#login_content.wide,
        body.login.highrise div#login_content.wide,
        body.login.backpack div#login_content.wide {
            background-position: 60px 42px;
        }

        body.login div.dialog_contents {
            padding: 6px 0;
        }

        body.login div#signin_button input {
            width: 222px;
            height: 47px;
        }

        body.login div.login_dialog {
            width: 222px;
            margin: 0 auto;
            background: #fff;
            padding: 10px 30px 30px;
            -webkit-border-radius: 6px;
            -moz-border-radius: 6px;
            border-radius: 6px;
            -moz-box-shadow: 0 1px 3px 0 rgba(0,0,0,0.25); /* firefox 3.5+ */
            -webkit-box-shadow: 0 1px 3px 0 rgba(0,0,0,0.25); /* webkit */
            box-shadow: 0 1px 3px 0 rgba(0,0,0,0.25);
            -ms-filter: "progid:DXImageTransform.Microsoft.Shadow(Strength=3, Direction=135, Color='#999999')"; /* IE 8+ */
            filter: progid:DXImageTransform.Microsoft.Shadow(Strength=3, Direction=135, Color='#999999'); /* IE < = 7 */
        }

        /* balloon */
        body.login.bc3 div.login_dialog { position: relative; }
        body.login.bc3 div.login_dialog:before {
            top: -32px;
            left: 50%;
            border: solid rgba(255, 255, 255, 0);
            border-bottom-color: #fff;
            z-index: 0;
            border-width: 17px;
            margin-left: -17px;
            content: ' ';
            height: 0;
            width: 0;
            position: absolute;
            pointer-events: none;
        }

        body:first-of-type.login div.login_dialog {border: none;}

        *:first-child+html body.login div.login_dialog {
            padding: 25px 39px 25px;
        }

        body.login div#login_content.wide div.login_dialog {
            width: 435px;
            padding: 10px 29px 25px;
        }

        body.login div.login_dialog h1 {
            font-size: 16px;
            font-weight: normal;
            line-height: 19px;
            margin: 13px 0 15px;
        }

        body.login div.login_dialog h1 strong {
            display: block;
            white-space: nowrap;
            overflow: hidden;
            text-overflow: ellipsis;
        }

        body.login div.login_dialog div.flash-explanation {
            background-color: #fffae5;
            margin: 0 -30px;
            padding: 12px 30px 10px;
            border-top: 1px solid #ecc542;
            border-bottom: 1px solid #ecc542;
        }

        body.login div.login_dialog div.flash-explanation h1 {
            font-size: 14px;
            line-height: 1.3;
            margin: 0;
        }

        body.login div.login_dialog div#remember_container {
            font-size: 13px;
            color: #333;
            text-align: left;
            margin: 0 0 15px;
        }

        body.login div.login_dialog div#user_name_login input {
            width: 200px;
            border: 1px solid rgba(0,0,0,0.25);
            padding: 10px;
            background-color: #fff;
            font-size: 17px;
            font-family: inherit;
            font-weight: inherit;
            -webkit-border-radius: 4px;
            -moz-border-radius: 4px;
            border-radius: 4px;
            outline: none;
            -webkit-appearance: none;
            -moz-appearance: none;
            z-index: 0;
            -webkit-transition: box-shadow 0.15s ease-in-out;
            -moz-transition: box-shadow 0.15s ease-in-out;
            -ms-transition: box-shadow 0.15s ease-in-out;
            transition: box-shadow 0.15s ease-in-out;
        }

        body.login div.login_dialog div#user_name_login input:focus {
            border-color: #a4d2ff;
            -webkit-box-shadow: 0 0 6px #8db4e4;
            -moz-box-shadow: 0 0 6px #8db4e4;
            box-shadow: 0 0 6px #8db4e4;
        }

        body.login div.login_dialog p {
            margin: 0 0 10px;
        }

        body.login div.login_dialog div#user_name_login a {
            color: #999;
        }

        body.login div.login_dialog p.explanation {
            margin: 10px -5px 15px -5px;
            font-size: 15px;
            line-height: 1.3;
        }

        body.login div.login_dialog span.overlay_wrapper {
            display: block;
            position: relative;
            top: 0;
            left: 0;
            background: white;
        }

        body.login div.login_dialog span.overlay_wrapper input {
            position: relative;
            background: none;
            top: 0;
            z-index: 10;
        }

        body.login div.login_dialog span.overlay_wrapper label.overlabel {
            position: absolute;
            top: 0.65em;
            left: 11px;
            z-index: 1;
            color: #999 !important;
            font-size: 17px;
        }

        *:first-child+html body.login div.login_dialog span.overlay_wrapper label.overlabel {
            top: 6px;
            left: 5px;
        }

        body.login div.login_dialog span.overlay_wrapper label.focus {
            color: #ccc !important;
        }

        body.login div#login_loading {
            display: none;
            margin: 5px 10px;
        }

        body.login div#login_loading div.loading {
            display: block;
        }

        body.login div.extras {
            text-align: left;
            margin: 10px auto;
            text-align: center;
            color: #000;
        }

        body.login div.extras ul {
            margin: 0;
            padding: 0;
        }

        body.login div.extras ul li {
            list-style: none;
            font-size: 15px;
            margin-bottom: 3px;
        }

        *:first-child+html body.login div.extras ul li {
            margin-bottom: 0;
        }

        body.login div.extras a {
            color: #1b6ac9;
        }

        span.hint,
        span.hint a {
            font-size: 10px;
            color: #999;
            display: block;
            text-align: left;
            display: none;
        }

        /*-------------------------------------------------
        AMNESIA
        -------------------------------------------------*/

        body.login div.wide div.login_dialog {
            text-align: left;
        }

        body.login div.wide div.login_dialog h2 {
            font-size: 16px;
            font-weight: bold;
            margin: 15px 0 3px;
        }

        body.login div.wide div.login_dialog h3 {
            font-size: 14px;
            font-weight: bold;
            margin: 0 0 5px;
        }

        body.login div.wide div.login_dialog #username,
        body.login div.wide div.login_dialog #email_address {
            margin: 0 0 5px;
            width: 300px;
            border: 1px solid rgba(0,0,0,0.25);
            padding: 10px;
            background-color: #fff;
            font-size: 17px;
            font-family: inherit;
            font-weight: inherit;
            -webkit-border-radius: 4px;
            -moz-border-radius: 4px;
            border-radius: px;
            outline: none;
            -webkit-appearance: none;
            -moz-appearance: none;
            z-index: 0;
            -webkit-transition: box-shadow 0.15s ease-in-out;
            -moz-transition: box-shadow 0.15s ease-in-out;
            -ms-transition: box-shadow 0.15s ease-in-out;
            transition: box-shadow 0.15s ease-in-out;
        }

        body.login div.wide div.login_dialog #username:focus ,
        body.login div.wide div.login_dialog #email_address:focus {
            border-color: #a4d2ff;
            -webkit-box-shadow: 0 0 6px #8db4e4;
            -moz-box-shadow: 0 0 6px #8db4e4;
            box-shadow: 0 0 6px #8db4e4;
        }

        body.login div.wide div.login_dialog p {
            margin: 0 0 15px;
            font-size: 14px;
            line-height: 18px;
        }

        body.login div.login_dialog div.note {
            padding-top: 5px;
            border-top: 2px solid #33a02c;
            font-size: 12px;
            line-height: 15px;
            margin: 10px 0 0;
            color: #666;
        }

        body.login div.login_dialog div.note p {
            margin-bottom: 0;
            color: #333;
        }

        body.login div.login_dialog div.note h3 {
            font-size: 12px;
            line-height: 15px;
            margin: 3px 0;
        }

        body.login div.wide div.login_dialog input.button {
            font-size: inherit;
            margin: 5px 0 10px;
        }

        div.note ul {
            margin: 0;
            padding: 0 0 0 1.5em;
        }

        div.note ul li {
            list-style: square;
            font-size: 12px;
            margin: 3px 0;
        }

        div.note a {
            color: #1b6ac9;
        }

        /*-------------------------------------------------
        ERRORS
        -------------------------------------------------*/

        body.login div#login_content.wide_error div.login_dialog {
            width: 615px;
            padding: 20px 30px 30px;
        }

        body.login div#login_content.wide.wide_error div.login_dialog {width: 655px;}

        body.login div#login_content.wide_error div.form {
            float: right;
            padding-left: 30px;
            border-left: 1px solid #eee;
        }

        body.login div#login_content.wide.wide_error div.form {width: 320px;}

        body.login div.alert {
            text-align: left;
            font-size: 12px;
            line-height: 1.4em;
            float: left;
            width: 362px;
            color: #222;
        }

        body.login div#login_content.wide.wide_error div.alert {width: 285px;}

        body.login div.alert a {color: #1b6ac9;}

        body.login div#login_content div.alert h2 {
            font-weight: bold;
            color: #c00;
            font-size: 17px;
            line-height: 22px;
            margin: 12px 0 0;
        }

        body.login div#login_content div.mobile h2 {
            display: none;
        }

        body.login div#login_content div.alert h3 {
            font-size: 14px;
            margin: 15px 0 3px;
            color: #000;
        }

        body.login div#login_content div.alert p {
            font-size: 12px;
            line-height: 1.4em;
            color: #222;
        }

        body.login.bcx div#login_content.wide_error,
        body.login.basecamp div#login_content.wide_error,
        body.login.campfire div#login_content.wide_error,
        body.login.highrise div#login_content.wide_error,
        body.login.backpack div#login_content.wide_error {
            background-position: 0px 42px;
        }

        body.edit_identity div.notice,
        body.login div.notice {
            text-align: center;
            padding: 15px 15px 15px;
            font-size: 13px;
            line-height: 1.4em;
            background: #ffc;
            color: #000;
            position: absolute;
            width: 448px;
            left: 50%;
            top: 40px;
            margin-left: -241px;
            -webkit-border-radius: 8px;
            -moz-border-radius: 8px;
            border-radius: 8px;
            border: 2px solid #fc9;
        }

        body.login div.notice h2 {
            font-weight: bold;
            color: #c00;
            font-size: 16px;
            margin: 0;
        }

        body.login div.username {
            display: none;
        }

        /* User/Pass state */

        body.login div#login_content[data-state=username] div.dialog_contents {
            padding-top: 0;
        }

        /* Loading state */

        body.login div#login_content[data-state=loading] div.login_dialog div#remember_container,
        body.login div#login_content[data-state=loading] div#user_name_login,
        body.login div#login_content[data-state=loading] ul#extras_user_login,
        body.login div#login_content[data-state=loading] div#signin_button,
        body.login div#login_content[data-state=loading] div.flash {
            display: none;
        }

        body.login div#login_content[data-state=loading] div#login_loading {
            display: block;
        }

        body.login div#login_content[data-state=loading] div.dialog_contents {
            padding-top: 60px;
        }

        body.login.bc3 div#login_content[data-state=loading] div.dialog_contents { padding-top: 0; }
        body.login.bc3 div#login_content[data-state=loading] div.login_dialog:before { border-bottom-color: #fff; }

        body.login div#login_content[data-state=loading] div.loading {
            display: block;
        }

        /*-------------------------------------------------
        Clearfix
        -------------------------------------------------*/

        .clearfix:after {
            content: ".";
            display: block;
            height: 0;
            clear: both;
            visibility: hidden;
        }

        .clearfix {display: inline-block;}
        .clearfix {display: block;}

        /*-------------------------------------------------
        Responsive CSS
        -------------------------------------------------*/

        /* iPhone */
        @media only screen and (max-device-width: 480px) {
            /* general */
            html, body.login {height: auto; min-height: 120%;}

            /* handle standard login screen */
            body.login div#signin_button {margin-top: 15px;}

            body.login { height: auto; background-position: left -1050px !important;}
            body.login div#header, body.login div#remember_container { display: none; }
            body.login div.container { padding: 10px 20px 0;}
            body.login div.login_dialog { padding: 10px 10px 25px 10px; }
            body.login div.login_dialog {width: auto;}
            body.login div.login_dialog div#user_name_login input { width: 85%; }
            body.login div#login_content, body.login div#login_content_inner { margin: 10px auto 0; background: none; }
            body.login div#other_products div {padding: 12px 0;}
            body.login div#other_products div li {white-space: normal; font-size: 12px;}
            body.login div#other_products {position: static; bottom: auto; left: auto; background: none; text-shadow: 0 1px 1px #fff; border-top: 1px dashed #ccc;}
            body.login div.extras ul li + li {margin-top: 7px;}
            body.login div.extras ul li {font-size: 14px; list-style: square outside; margin-left: 15px;}
            body.login div.extras { width: auto; padding: 0 15px; text-shadow: 0 1px 1px #fff; text-align: left;}

            /* wide dialogs */
            body.login div#login_content.wide div.login_dialog { width: auto !important;  }
            body.login div.wide div.login_dialog #email_address,
            body.login div.wide div.login_dialog h2 { font-size: 14px; line-height: normal; }
            body.login div.wide div.login_dialog h3 { font-size: 12px; line-height: normal; }
            body.login div.wide div.login_dialog p { font-size: 12px; line-height:1.4em; }

            /* login errors */
            body.login div#login_content.wide_error div.login_dialog { width: auto; }
            body.login div.alert { float: none; width: auto !important; }
            body.login div#login_content.wide.wide_error div.form { width: auto; }
            body.login div#login_content.wide_error div.form { width: auto; float: none; padding: 0 0 15px 0; border: none; border-bottom: 1px solid #eee; }
            body.login div#login_content div.alert h2,
            body.login div#login_content div.mobile h2 { display: block; line-height: normal; font-size: 14px; border-bottom: 1px solid #eee; padding-bottom: 10px; text-align: center; }
            body.login div#login_content div.non_mobile h2 { display: none; }
            body.login div#login_content div.alert h3 { font-size: 12px; line-height: normal; margin-bottom: 5px; }
        }

        /* hide the product logos when the screen is very narrow */
        @media only screen and (max-width: 540px) {
            body.login:not(.bc3) div#login_content, body.login div#login_content_inner { background: none !important; }
        }

        /* on retina, use image that's scaled by 2 */
        @media (min--moz-device-pixel-ratio: 1.3),
        (-o-min-device-pixel-ratio: 2.6/2),
        (-webkit-min-device-pixel-ratio: 1.3),
        (min-device-pixel-ratio: 1.3),
        (min-resolution: 1.3dppx) {
            body.login.bcx div#login_content,
            body.login.basecamp div#login_content { background-image: url("https://launchpad-asset0.37signals.com/images/login_BC@2x.png?1455655026"); background-size: 216px 305px; }
            body.login.highrise div#login_content { background-image: url("https://launchpad-asset1.37signals.com/images/login_HR@2x.png?1455655026"); background-size: 216px 305px; }
            body.login.campfire div#login_content { background-image: url("https://launchpad-asset1.37signals.com/images/login_CF@2x.png?1455655026"); background-size: 216px 305px; }
            body.login.backpack div#login_content { background-image: url("https://launchpad-asset1.37signals.com/images/login_BP@2x.png?1455655026"); background-size: 216px 305px; }
            body.login.bc3 div#login_content { background-image: url("https://launchpad-asset3.37signals.com/images/login_BC3@2x.png?1455655026");  background-size: 100px 80px; }
            body.login div#header h1 a { background-image: url("https://launchpad-asset1.37signals.com/images/login_sprites@2x.png?1455655026"); background-size: 1432px 1547px; }
        }

        /*-------------------------------------------------
        Verify
        -------------------------------------------------*/

        body.verify div.login_dialog {
            padding-left: 30px;
            padding-right: 30px;
            width: 238px;
        }

        body.recover div.login_dialog {
            width: 360px;
        }

        body.verify div.note { text-align: left; }
        div.verification_code h3 { margin: 1em auto 5px; }

        body.recover div.verification_code h3 {
            width: 238px;
        }

        div.verification_code p {
            font-size: 14px;
            line-height: 18px;
            margin: 0;
        }

        div.verification_code div.fields { margin: 10px 0 5px; }

        div.verification_code div.verification_methods { margin: 10px 0 25px; }

        div.verification_code div.verification_method {
            border-top: 1px solid #ddd;
            padding: 10px 0 0;
            margin: 0;
        }

        div.verification_code div.verification_method p { font-size: 15px; }


        div.verification_code div.verification_methods div.verification_method:first-child { border: none; }

        div.verification_code div.fields input {
            font-size: 24px;
            font-weight: bold;
            width: 42px;
            padding: 8px 0;
            margin: 10px 4px 10px 0;
            text-align: center;
            font-family: helvetica, arial, sans-serif;
            border: 1px solid #555;
            -webkit-appearance: none;
            -webkit-border-radius: 5px;
            -moz-border-radius: 5px;
            border-radius: 5px;
            -webkit-box-shadow: inset 0 2px 2px #ddd;
            -moz-box-shadow: inset 0 2px 2px #ddd;
            box-shadow: inset 0 2px 2px #ddd;
        }

        div.verification_code div.fields .disabled input {
            background-color: #f2f2f2;
            border-color: #ccc !important;
            color: #ccc;
        }

        div.verification_code div.submit a:focus,
        div.verification_code div.submit input:focus,
        div.verification_code div.fields input:focus {
            outline: none;
            -webkit-box-shadow: 0 0 3px 2px #97C1E7;
            -moz-box-shadow: 0 0 3px 2px #97C1E7;
            box-shadow: 0 0 3px 2px #97C1E7;
        }

        div.verification_code div.error {
            color: #c00;
            font-weight: bold;
            font-size: 14px;
            margin: 5px 0 15px;
        }

        div.verification_code div.fields.error div.error { display: block; }
        div.verification_code div.fields.error input { border-color: #c00; }

        div.verification_code div.fields.error input:focus {
            -webkit-box-shadow: 0 0 5px #c00;
            -moz-box-shadow: 0 0 5px #c00;
            box-shadow: 0 0 5px #c00;
        }

        div.verification_code div.loading {
            display: block;
            margin: 20px auto;
        }

        div.verification_code div.submit {
            margin: 0 0 25px;
            font-size: 14px;
            line-height: 18px;
            color: grey;
            vertical-align: baseline;
        }

        div.verification_code div.submit.nag {
            margin: 15px 0;
        }

        div.verification_code div.submit.nag .fancy_button {
            display: block;
            margin-bottom: 10px;
        }

        div.verification_code a.stop_nag {
            color: #666;
            font-size: 12px;
        }

        .fancy_button {
            font-family: helvetica, arial, sans-serif;
            border: 1px solid #fff;
            color: #777;
            font-size: 18px;
            line-height: 21px;
            padding: 4px 12px;
            margin: 0 2px;
            display: inline-block;
            text-rendering: optimizeLegibility;
            text-decoration: none;
            cursor: pointer;
            background-color: #fff;
            background-image: -moz-linear-gradient(#fff, #eee);
            background-image: -webkit-gradient(linear, 0% 0%, 0% 100%, from(#fff), to(#eee));
            background-image: -webkit-linear-gradient(#fff, #eee);
            background-image: -ms-linear-gradient(#fff, #eee);
            background-image: linear-gradient(#fff, #eee);
            -webkit-appearance: none;
            -webkit-border-radius: 4px;
            -moz-border-radius: 4px;
            border-radius: 4px;
            -webkit-box-shadow:  0 0 0 1px #ccc;
            -moz-box-shadow:  0 0 0 1px #ccc;
            box-shadow:  0 0 0 1px #ccc;
            -webkit-box-sizing: border-box;
            -moz-box-sizing: border-box;
            box-sizing: border-box;
        }

        .fancy_button.green {
            border-color: #B4DDA1;
            color: #fff;
            text-shadow: 0 0 3px #1c5b18;
            background-color: #38A52C;
            background-image: -moz-linear-gradient(#7AC157, #38A52C);
            background-image: -webkit-gradient(linear, 0% 0%, 0% 100%, from(#7AC157), to(#38A52C));
            background-image: -webkit-linear-gradient(#7AC157, #38A52C);
            background-image: -ms-linear-gradient(#7AC157, #38A52C);
            background-image: linear-gradient(#7AC157, #38A52C);
            -webkit-box-shadow:  0 0 0 1px #328F26;
            -moz-box-shadow:  0 0 0 1px #328F26;
            box-shadow:  0 0 0 1px #328F26;
        }

        .fancy_button.small {
            font-size: 14px;
            padding: 3px 6px;
        }

        .fancy_button span {
            display: block;
            font-size: 12px;
        }

        /*-------------------------------------------------
        Verifications setup
        -------------------------------------------------*/

        body.verifications_setup {
            font-size: 14px;
            text-align: center;
        }

        body.verifications_setup div.wrapper {
            padding: 40px 23px 20px 30px;
            margin: 0 auto;
            min-width: 800px;
        }

        body.verifications_setup div.container {
            width: 370px;
            margin: 0 auto;
            background: #fff;
            border: 1px solid #ccc;
            text-align: left;
            -webkit-border-radius: 10px;
            -moz-border-radius: 10px;
            border-radius: 10px;
            -webkit-box-shadow: 0 0 6px #999;
            -moz-box-shadow: 0 0 6px #999;
            box-shadow: 0 0 6px #999;
        }

        body:first-of-type.verifications_setup div.container { border: none; } /* remove border for browsers that support box-shadow */

        body.verifications_setup div.innercol {
            padding: 20px 30px;
            text-align: center;
        }

        body.verifications_setup div.container h1 {
            font-size: 20px;
            margin: 15px 0 0;
        }

        body.verifications_setup div.container p {
            font-size: 14px;
            line-height: 18px;
            margin: 5px 0 15px;
        }

        body.verifications_setup input.verifications_setup {
            text-align: left;
            width: 290px;
            padding: 8px 12px;
            margin: 15px auto;
            font-size: 20px;
            display: block;
        }

        body.verifications_setup input.verifications_setup.error {
            border-color: #c00;
            -webkit-box-shadow: 0 0 5px #c00;
            -moz-box-shadow: 0 0 5px #c00;
            box-shadow: 0 0 5px #c00;
        }

        input.verifications_setup + span.error_message { display: none; }

        input.verifications_setup.error + span.error_message {
            display: block;
            margin-top: 5px;
        }

        body.verifications_setup span.error_message {
            color: #c00;
            font-weight: bold;
        }

        body.verifications_setup .fancy_button {
            display: block;
            margin: 15px auto;
            width: 100%;
            font-size: 20px;
            padding: 8px 12px;
        }

        body.verifications_setup div.loading {background: url("https://launchpad-asset3.37signals.com/images/login_sprites.png?1455655026") no-repeat 0px -850px;}

        input.verifications_setup {
            font-size: 24px;
            font-weight: normal;
            padding: 8px 0;
            margin: 10px 0;
            text-align: center;
            font-family: helvetica, arial, sans-serif;
            border: 1px solid #555;
            width: 100%;
            -webkit-appearance: none;
            -webkit-border-radius: 5px;
            -moz-border-radius: 5px;
            border-radius: 5px;
            -webkit-box-shadow: inset 0 2px 2px #ddd;
            -moz-box-shadow: inset 0 2px 2px #ddd;
            box-shadow: inset 0 2px 2px #ddd;
            -webkit-box-sizing: border-box;
            -moz-box-sizing: border-box;
            box-sizing: border-box;
        }

        input.verifications_setup:focus {
            outline: none;
            -webkit-box-shadow: 0 0 3px 2px #97C1E7;
            -moz-box-shadow: 0 0 3px 2px #97C1E7;
            box-shadow: 0 0 3px 2px #97C1E7;
        }

        body.verifications_setup .answer { margin: 20px 0 !important; }
        body.verifications_setup div.answer h3 { margin: 3px 0 15px; }

        body.verifications_setup table.answer_sets { width: 100% }

        body.verifications_setup table.answer_sets td {
            text-align: center;
            width: 50%;
        }

        body.verifications_setup fieldset.answer {
            font-size: 16px;
            border: 1px solid #aaa;
            border-radius: 5px;
            margin: 7px 0 !important;
            color: #069;
        }

        fieldset.answer legend {
            color: #777;
            font-weight: normal;
            font-size: 11px;
            text-transform: uppercase;
        }

        fieldset.answer legend em { font-style: normal; }
        fieldset.answer legend em.long { color: #c00; }

        body.verifications_setup .answer select {
            font-size: larger;
            width: 100%;
            *width: 410px;
            margin: 5px 0 0;
        }

        body.verifications_setup .answer select.error {
            outline: thin solid red;
        }

        body.verifications_setup .answer input.verifications_setup {
            font-size: 15px;
            line-height: 18px;
            padding: 10px;
            margin: 5px 0;
            width: 100%;
            *width: 390px;
            text-align: left;
            border-color: #a9a9a9;
            -webkit-box-sizing: border-box;
            -moz-box-sizing: border-box;
            box-sizing: border-box;
        }

        body.verifications_setup div.container.security_questions {
            width: 500px;
        }

        body.verifications_setup div.container.security_questions .fancy_button {
            width: auto;
            margin-left: 0;
            *width: 250px;
            *float: left;
            *margin-right: 0;
            *margin-top: -12px;
            *padding: 8px !important;
        }

        body.verifications_setup div.container.security_questions div.verification_footer { *padding-top: 20px; }
        body.verifications_setup div.verification_footer { zoom: 1; }

        body.verifications_setup div.container.security_questions div.innercol {
            text-align: left;
        }

        body.verifications_setup .verification_step {
            padding-left: 30px;
        }

        body.verifications_setup .verification_step label.ie {
            margin: 15px 0 0;
            display: block;
        }

        body.verifications_setup .verification_step label.ie + input.verifications_setup {
            margin-top: 5px !important;
        }

        body.verifications_setup .step_heading {
            font-size: 16px;
            margin: 25px 0 5px;
            vertical-align: middle;
        }

        body.verifications_setup .step_number {
            background-color: #38A52C;
            color: white;
            width: 26px;
            height: 26px;
            line-height: 28px;
            text-align: center;
            overflow: hidden;
            margin: -4px 4px 0 -34px;
            vertical-align: middle;
            display: inline-block;
            -webkit-border-radius: 20px;
            -moz-border-radius: 20px;
            border-radius: 20px;
        }

        body.verifications_setup .step_number img.white_check {
            width: 13px;
            height: 13px;
            padding: 5px 0 0 2px;
        }

        body.verifications_setup h3.step_heading {
            font-size: 14px;
            line-height: 16px;
            font-weight: normal;
        }

        body.verifications_setup h3.step_heading .step_number {
            height: 23px;
            width: 23px;
            line-height: 25px;
            font-weight: bold;
            margin-left: -31px;
        }

        body.verifications_setup .step_number.complete { background-color: #777; }

        body.verifications_setup div.page_header {
            background-color: #F8F8FF;
            padding: 15px 30px 10px;
            margin: -20px -30px 20px;
            border-bottom: 1px solid #ddd;
            -webkit-border-top-left-radius: 10px;
            -webkit-border-top-right-radius: 10px;
            -moz-border-radius-topleft: 10px;
            -moz-border-radius-topright: 10px;
            border-top-left-radius: 10px;
            border-top-right-radius: 10px;
        }

        body.verifications_setup div.page_header p {
            margin: 5px 0 10px;
        }

        body.verifications_setup div.verification_footer.with_border { border-top: 1px solid #ddd; }

        body.verifications_setup div.verification_footer.recovery .fancy_button {
            display: inline-block;
            padding: 8px 16px;
            font-size: 16px;
        }

        body.verifications_setup textarea.notefield {
            width: 100%;
            padding: 0;
            margin: 5px 0;
            height: 100px;
        }

        body.verifications_setup ol.steps li {
            margin-bottom: 10px;
        }

    </style>

    <script type="text/javascript">
        //<![CDATA[
        function async(f) { async.f.push(f) }; async.f = []
        //]]>
    </script>


</head>
<body class="login campfire">

<div class="container">
    <div id="header">
        <h1><a href="https://basecamp.com/" class="logo">Basecamp</a></h1>
    </div>
    <div id="login_content" class="wide ">
        <div id="login_content_inner">
            <div class="dialog_contents">
                <div id="login_dialog" class="login_dialog clearfix">
                    <div class="form">
                        <h2>Can't sign in?</h2>
                        <p>Enter your email address below and we'll send you password reset instructions.</p>

                        <form accept-charset="UTF-8" action="/password_resets" method="post"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /><input name="authenticity_token" type="hidden" value="p6DokiMevvy/6q3yvVyl3Ag5zAozrkGX1YqQc31JOko=" /></div>
                            <input id="product" name="product" type="hidden" value="campfire" />
                            <input id="account_id" name="account_id" type="hidden" />

                            <h3>Enter your email address</h3>
                            <input autocapitalize="off" autocorrect="off" id="email_address" name="email_address" type="email" /><br />

                            <input class="button" name="commit" type="submit" value="Send me reset instructions" />
                        </form>
                        <div class="note">
                            <h3>A note about spam filters</h3>
                            If you don't get an email from us within a few minutes please be sure to check your spam filter.
                            <strong>The email will be coming from do-not-reply@basecamp.com</strong>
                        </div>
                    </div>
                </div>
            </div>
            <div class="extras">
                <ul>
                    <li>Never mind, <a href="/">send me back to the sign in screen</a></li>
                </ul>
            </div>
        </div>
    </div>

    <div id="other_products">
        <div>
            <ul>
                <li>
                    <a href="http://campfirenow.com/?source=signin-screen">
                        Don't have a Campfire account? <strong>Sign up today</strong>.
                    </a>      </li>
            </ul>
        </div>
    </div>

</div>

<script type="text/javascript">
    //<![CDATA[
    async("$(\"email_address\").focus()")
    //]]>
</script>


<script src="https://launchpad-asset3.37signals.com/sprockets.js?1455655026" type="text/javascript"></script>
</body>
</html>