//%attributes = {"shared":true}
//JCL_pgs_IsCancel
//20111127 wat
//プログレスバー表示プロセスがキャンセルされたかどうかを返す
//20080605　矢部　新規作成

C_BOOLEAN:C305($0)

$0:=<>JCL_D90_Cancel
