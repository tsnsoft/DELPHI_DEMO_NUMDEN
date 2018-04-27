unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, dateutils, ComCtrls, inifiles, ExtCtrls, Buttons, shellapi,
  XPMan;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Label1: TLabel;
    Button2: TButton;
    Bevel1: TBevel;
    MonthCalendar1: TMonthCalendar;
    Button3: TButton;
    SpeedButton1: TSpeedButton;
    Timer1: TTimer;
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    CheckBox1: TCheckBox;
    Label4: TLabel;
    Bevel3: TBevel;
    SpeedButton2: TSpeedButton;
    XPManifest1: TXPManifest;
    BitBtn1: TBitBtn;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Label4Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.BitBtn1Click(Sender: TObject);
// Info
begin
  messagedlg('Если программа неверно выдает данные, '+#$0A+
    'то установите/снимите эту галочку для верного расчета'+#$0A+
    '(устанавливается раз в семестр)', mtInformation,[mbOk],0);
end;

procedure TForm1.Button1Click(Sender: TObject);
// Расчет
var k: word; s: string; f: boolean;
begin
  k:=WeekOfTheYear(MonthCalendar1.Date);
  if not odd(k) then f:=true else f:=false;
  if CheckBox1.Checked then f:=not f;
  if f then s:='ЧИСЛИТЕЛЬ' else s:='ЗНАМЕНАТЕЛЬ';
  if DaysBetween(MonthCalendar1.Date, date)=0 then
      label1.Caption:='СЕЙЧАС: '+s else
      label1.Caption:=DateToStr(MonthCalendar1.Date)+': '+s;
end;

procedure TForm1.FormCreate(Sender: TObject);
// Считывание настроек
var Ini: Tinifile;
begin
  try
    Ini:=TiniFile.Create(extractfilepath(Application.ExeName)+'NumDen.ini');
    CheckBox1.Checked:=Ini.ReadBool('Main','Offset',true);
    Ini.Free;
  except
  end;
  try Memo1.Lines.LoadFromFile(extractfilepath(Application.ExeName)+'NumDen.info');
  except end;
end;

procedure TForm1.Label4Click(Sender: TObject);
// Отправить письмо мне
begin
  ShellExecute(0,'open', 'mailto:talipovsn@hotmail.com'+
    '?Subject=Числитель/Знаменатель',0,0,SW_SHOWNORMAL);
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
// Сохранение настроек
var Ini: Tinifile;
begin
  try Ini:=TiniFile.Create(extractfilepath(Application.ExeName)+'NumDen.ini');
    Ini.WriteBool('Main','Offset',CheckBox1.Checked);
    Ini.UpdateFile;
    Ini.Free;
  except
  end;
  try Memo1.Lines.SaveToFile(extractfilepath(Application.ExeName)+'NumDen.info');
  except end;
end;

procedure TForm1.SpeedButton1Click(Sender: TObject);
// Открыть панель настроек
begin
  Panel1.Visible:=true;
  SpeedButton1.Visible:=false;
  SpeedButton2.Visible:=true;
end;

procedure TForm1.SpeedButton2Click(Sender: TObject);
// Закрыть панель настроек
begin
  Panel1.Visible:=false;
  SpeedButton1.Visible:=true;
  SpeedButton2.Visible:=false;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
// Мечание )))
begin
  label4.Font.Color:=random(1000)+100;
end;

procedure TForm1.Button2Click(Sender: TObject);
// "На сегодня"
begin
  FormActivate(Sender);
end;

procedure TForm1.FormActivate(Sender: TObject);
// Запуск программы
begin
  MonthCalendar1.Date:=date; Button1.Click;
end;

procedure TForm1.Button3Click(Sender: TObject);
// Закрытие программы
begin
  close;
end;


end.
