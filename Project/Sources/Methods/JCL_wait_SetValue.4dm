//%attributes = {}
//JCL_wait_SetValue
//ウェイトダイアログプロセス変数に値をセット
//$1:現在処理しているもの
//$2:現在のカウント
//$3:全カウント
//20080605　矢部　新規作成
//20080924　矢部　現在処理しているものを表示とカウントを追加

C_TEXT:C284($1)
<>JCL_D91_Msg:=$1

C_LONGINT:C283($2; $3)
If ($3=0)
	
	<>JCL_D91_Count:=""
	
Else 
	
	<>JCL_D91_Count:=String:C10($2)+"／"+String:C10($3)
	
End if 
