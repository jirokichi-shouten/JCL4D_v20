//%attributes = {}
//JCL_wait_Show
//プログレスバーの表示
//$1:メッセージ
//20080605　矢部　新規作成

//プログレスバーを閉じるかどうかのフラグ
//新プロセスになる前に初期化しておく
//新プロセス内で初期化しようとしても、先に親プロセスが実行されることがあるため
// 20211227 hisa wat ike

<>JCL_D91_Cancel:=False:C215

C_TEXT:C284($1; $msg)
$msg:=$1

//新しいプロセスに、ダイアログを表示
$ProcessNo:=New process:C317("JCL_wait_Open"; 0; "JCL_wait_Open"; $msg)
