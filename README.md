# DICOMViewer

医用画像フォーマット「DICOM」を表示する方法。

![](https://github.com/LUXOPHIA/DICOMViewer/raw/master/--------/_SCREENSHOT/DICOMViewer.png)

```Pascal
var
   F :TdcmFile;  //DICOMファイルクラス
   D :IdcmPortImag;  //画像インタフェース

F.LoadFromFile( '～.dcm' );  //ファイルの読み込み

D := F.Data[$7FE0,$0010].Port as IdcmPortImag;  //Pixel Data

D.KindP          //ピクセルフォーマットの種類
D.Pixels[ X, Y ] //ピクセル値
```
