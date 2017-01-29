# DICOMViewer

医用画像フォーマット「DICOM」を表示する方法。

![](https://github.com/LUXOPHIA/DICOMViewer/raw/master/--------/_SCREENSHOT/DICOMViewer.png)

```Pascal
var
   F :TdcmFile;      //DICOMファイルクラス
   D :IdcmPortImag;  //画像インタフェース

F.LoadFromFile( '～.dcm' );  //ファイルの読み込み

D := F.Data[$7FE0,$0010].Port as IdcmPortImag;  //Pixel Data

D.KindP           //ピクセルフォーマットの種類
D.Pixels[ X, Y ]  //ピクセル値
```

----

* [DICOM PS3.3 2016e - Information Object Definitions](http://dicom.nema.org/medical/dicom/current/output/html/part03.html)
    * [C.7.6.3 Image Pixel Module](http://dicom.nema.org/medical/dicom/current/output/html/part03.html#sect_C.7.6.3.1.2)

[![Delphi Starter](http://img.en25.com/EloquaImages/clients/Embarcadero/%7B063f1eec-64a6-4c19-840f-9b59d407c914%7D_dx-starter-bn159.png)](https://www.embarcadero.com/jp/products/delphi/starter)