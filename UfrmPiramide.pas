unit UfrmPiramide;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Spin, ComCtrls, ExtCtrls, StrUtils ;

type
  TfrmPiramide = class(TForm)
    EdtNumero: TEdit;
    BtnGerar: TButton;
    UpDown1: TUpDown;
    Label1: TLabel;
    Memo: TMemo;
    rdgDisposicao: TRadioGroup;
    GroupBox1: TGroupBox;
    Label3: TLabel;
    Shape1: TShape;
    Shape2: TShape;
    Label4: TLabel;
    Shape3: TShape;
    Label5: TLabel;
    Shape4: TShape;
    Label6: TLabel;
    Label7: TLabel;
    Label2: TLabel;
    Label9: TLabel;
    procedure BtnGerarClick(Sender: TObject);
    procedure rdgDisposicaoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPiramide: TfrmPiramide;

implementation

{$R *.dfm}

function InvertItems(Items: TStrings): TStrings;
var
  TempList: TStrings;
  I,J: Integer;
begin
  TempList := TStringList.Create;
  J := 0;
  for I := Items.Count-1 downto 0 do
    TempList.Add(Items.Strings[I]);
  Result := TempList;
end;


function espacos(quant : integer) : integer;
var
  y, w, contador : integer ;
  conjunto : integer ;
begin
//1,2,3,4,5,6,7, 8, 9,10,11, número
//0,1,3,4,6,7,9,10,12,13,15  espaços
  y := -1;
  conjunto := 0 ;
  contador := 1;
  for w := 2 to quant do
  begin
    if contador = 2 then
    begin
       contador := 1 ;
       y := y + 1 ;
    end
    else
       contador := contador  + 1 ;

    conjunto := ( y + w );
  end;
  result := conjunto ;
end;
{  arvore normal e de cabeça para baixo
  1     0    -1        0  -  1 = -1       -1 -  1 =     0
  2     1    -1        1  -  2 = -1       -1 -  2 =     1
  3     3     0        3  -  3 =  0        0 +  3 =     3
  4     4     0        4  -  4 =  0        0 +  4 =     4
  5     6     1        6  -  5 =  1        1 +  5 =     6
  6     7     1        7  -  6 =  1        1 +  6 =     7
  7     9     2        9  -  7 =  2        2 +  7 =     9
  8    10     2       10  -  8 =  2        2 +  8 =    10
  9    12     3       12  -  9 =  3        3 +  9 =    12
 10    13     3       13  - 10 =  3        3 + 10 =    13
 11    15     4       15  - 11 =  4        4 + 11 =    15
 }

//1,2,3,4,5,6,7, 8, 9,10,11, número
//0,1,3,4,6,7,9,10,12,13,15  espaços

procedure TfrmPiramide.BtnGerarClick(Sender: TObject);
var
  x ,z,a    : integer ;
  linha     : string ;
  astericos : string ;
  primo     : integer ;
  espacos_z :integer ;
begin
  Memo.Lines.Clear;

  if strtoint(EdtNumero.Text) < 1 then
     Exit ;

  Memo.Font.Color := clBlack ;
  z := strtoint(EdtNumero.Text) ;

  // impar e primo
  for primo := 2  to z -1 do
  begin
    if  ((z mod primo) = 0) then
    begin
      Memo.Font.Color := clLime;
      Break ;
    end
    else
      Memo.Font.Color := clBlue;
  end;

  // sé é par
    if (z mod 2) = 0 then
     Memo.Font.Color := clRed ;

  // 2 é par e primo só ele
  if X = 2 then
     Memo.Font.Color := clFuchsia ;

  // para o 1 sempre igual
  if z = 1 then
  begin
    Memo.Font.Color := clLime;
    Memo.Lines.Add('*') ;
    Exit;
  end;

  linha :='';
      // cima                          baixo
  if (rdgDisposicao.ItemIndex = 0) or (rdgDisposicao.ItemIndex = 1) then
  begin
    for x:= z downto 1 do
    begin
        linha :=StringOfChar(' ', espacos(x)) ;
        astericos := astericos +'*  ';
        linha := linha +astericos;
        Memo.Lines.Add(linha) ;
        linha :='';
    end;
    if rdgDisposicao.ItemIndex = 1 then   //baixo
      Memo.Lines := InvertItems(Memo.Lines);
  end;

      // esquerda                       direita
  if (rdgDisposicao.ItemIndex = 2) or (rdgDisposicao.ItemIndex = 3) then
  begin
    a := (z * 2) - 2 ;
    linha :='';
    espacos_z := a+1;
//    for x:= z downto 1 do
    for x:= 1 to z  do
    begin
      linha :=StringOfChar(' ',a)+'*';
      while(length(linha)< espacos_z) do
        linha :=Linha +'   *';
      linha := copy(linha,1,espacos_z);
      a:= a - 2 ;
      Memo.Lines.Add(linha) ;
      linha :='';
    end;

    for x:= z-2 downto 1 do
      Memo.Lines.Add(Memo.Lines[x]) ;
    Memo.Lines.Add(Memo.Lines[0]) ;

    if (rdgDisposicao.ItemIndex = 3) then   //direita
    begin
      for x:= 0 to Memo.Lines.Count -1 do
        Memo.Lines[x] := ReverseString(Memo.Lines[x]);
    end;
  end;
  SendMessage(Memo.Handle, WM_VSCROLL, SB_PAGEUP, 0);
end;

procedure TfrmPiramide.rdgDisposicaoClick(Sender: TObject);
begin
  BtnGerarClick(Sender);
end;

end.
ShowMessage( ReverseString('Texto') );
 
ShowMessage( ReverseString('ihpleD wohS') );
{  arvore esquerda e direita
  1     0     1        0  -  1 = -1     -1   +  1 =   0
  2     3    -1        3  -  2 =  1      1   +  2 =   3
  3     5    -2        5  -  3 =  2      2   +  3 =   5
  4     7    -3        7  -  4 =  3      3   +  4 =   7
  5     9    -4        9  -  5 =  4      4   +  5 =   9
  6    11    -5       11  -  6 =  5      5   +  6 =  11
  7    13    -6       13  -  7 =  6      6   +  7 =  13
  8    15    -7       15  -  8 =  7      7   +  8 =  15
  9    17    -8       17  -  9 =  8      8   +  9 =  17
 10    19    -9       19  - 10 =  9      9   + 10 =  19
 }

//1,2,3,4,5,6 ,7 ,8 ,9 ,10 número
//0,3,5,7,9,11,13,15,17,19 espaços
//1,3,5,7,9,11,13,15,17,19 linhas
//1.2,3,4,5,6 ,7 ,8 ,9 ,10 Linhas pela metade o resto de abaixo é = de cima
------------------------------>
1
*
------------------------------>
2..3
123
..*
*..
..*
------------------------------>
3....5
12345
....*
..*..
*...*
..*..
....*
------------------------------>
4......7
1234567
......*
....*..
..*...*
*...*..
..*...*
....*..
......*
------------------------------>
5........9
123456789
........*
......*..
....*...*
..*...*..
*...*...*
..*...*..
....*...*
......*..
........*
------------------------------>
6.........11
12345678901
..........*
........*..
......*...*
....*...*..
..*...*...*
*...*...*..
..*...*...*
....*...*..
......*...*
........*..
..........*
------------------------------>
7...........13
1234567890123
............*
..........*..
........*...*
......*...*..
....*...*...*
..*...*...*..
*...*...*...*
..*...*...*..
....*...*...*
......*...*..
........*...*
..........*..
............*
------------------------------>
8.............15
123456789012345
..............*
............*..
..........*...*
........*...*..
......*...*...*
....*...*...*..
..*...*...*...*
*...*...*...*..
..*...*...*...*
....*...*...*..
......*...*...*
........*...*..
..........*...*
............*..
..............*
------------------------------>
9...............17
12345678901234567
................*
..............*..
............*...*
..........*...*..
........*...*...*
......*...*...*..
....*...*...*...*
..*...*...*...*..
*...*...*...*...*
..*...*...*...*..
....*...*...*...*
......*...*...*..
........*...*...*
..........*...*..
............*...*
..............*..
................*
------------------------------>
10................19
1234567890123456789
..................*
................*..
..............*...*
............*...*..
..........*...*...*
........*...*...*..
......*...*...*...*
....*...*...*...*..
..*...*...*...*...*
*...*...*...*...*..
..*...*...*...*...*
....*...*...*...*..
......*...*...*...*
........*...*...*..
..........*...*...*
............*...*..
..............*...*
................*..
..................*



