unit ExtUx;

// Generated by ExtToPascal v.0.9.8, at 7/1/2010 09:28:02
// from "C:\Trabalho\ext-3.0.0\docs\output" detected as ExtJS v.3

interface

uses
  StrUtils, ExtPascal, ExtPascalUtils, Ext, ExtUtil, ExtMenu;

type
  TExtUxTabCloseMenu = class;
  TExtUxProgressBarPager = class;
  TExtUxTaskBar = class;
  TExtUxSpinner = class;
  TExtUxValidationStatus = class;
  TExtUxTaskButtonsPanel = class;
  TExtUxTaskBarContainer = class;
  TExtUxTaskBarTaskButton = class;
  TExtUxGMapPanel = class;
  TExtUxStartMenu = class;
  TExtUxStatusBar = class;
  TExtUxSliderTip = class;

  TExtUxTabCloseMenu = class(TExtFunction)
  public
    class function JSClassName: string; override;
  end;

  TExtUxProgressBarPager = class(TExtFunction)
  private
    FDefaultAnimCfg: TExtObject;
    FDefaultText: string;
    FProgBarWidth: Integer;
    procedure SetFDefaultAnimCfg(Value: TExtObject);
    procedure SetFDefaultText(Value: string);
    procedure SetFProgBarWidth(Value: Integer);
  public
    class function JSClassName: string; override;
    property DefaultAnimCfg: TExtObject read FDefaultAnimCfg write SetFDefaultAnimCfg;
    property DefaultText: string read FDefaultText write SetFDefaultText;
    property ProgBarWidth: Integer read FProgBarWidth write SetFProgBarWidth;
  end;

  TExtUxTaskBar = class(TExtUtilObservable)
  public
    class function JSClassName: string; override;
  end;

  TExtUxSpinner = class(TExtUtilObservable)
  public
    class function JSClassName: string; override;
  end;

  TExtUxValidationStatus = class(TExtComponent)
  protected
    procedure InitDefaults; override;
  public
    class function JSClassName: string; override;
  end;

  TExtUxTaskButtonsPanel = class(TExtBoxComponent)
  protected
    procedure InitDefaults; override;
  public
    class function JSClassName: string; override;
  end;

  TExtUxTaskBarContainer = class(TExtContainer)
  protected
    procedure InitDefaults; override;
  public
    class function JSClassName: string; override;
  end;

  // Procedural types for events TExtUxTaskBarTaskButton
  TExtUxTaskBarTaskButtonOnInitview = procedure(This: TExtUxTaskBarTaskButton;
    Dv: TExtDataView) of object;

  TExtUxTaskBarTaskButton = class(TExtButton)
  private
    FAllSelectedText: string;
    FAutoSelectKey: Integer;
    FCheckSelector: string;
    FClearAllText: string;
    FCls: string;
    FEnableKeyEvents: Boolean;
    FHighlightClass: string;
    FItemSelector: string;
    FItemSelector_: string;
    FMaxDisplayRows: Integer;
    FMinChars: Integer;
    FOverClass: string;
    FSelectAllText: string;
    FSelectedClass: string;
    FSeparatorHtml: string;
    FTpl: string;
    FTplExtXTemplate: TExtXTemplate;
    FUrl: string;
    FValue: TExtObjectList;
    FBookDetail: TExtObject;
    FBookGrid: TExtObject;
    FBookMasterDetail: TExtObject;
    FConstructorJS: TExtObject;
    FGrid: TExtObject;
    FMultiCombo: TExtObject;
    FThis: TExtObject;
    FThis_: TExtObject;
    FFunctionJS: TExtObject;
    FFunctionJS_: TExtObject;
    FVarJS: TExtObject;
    FVarJS_: TExtObject;
    FView: TExtDataView;
    FOnInitview: TExtUxTaskBarTaskButtonOnInitview;
    procedure SetFAllSelectedText(Value: string);
    procedure SetFAutoSelectKey(Value: Integer);
    procedure SetFCheckSelector(Value: string);
    procedure SetFClearAllText(Value: string);
    procedure SetFCls(Value: string);
    procedure SetFEnableKeyEvents(Value: Boolean);
    procedure SetFHighlightClass(Value: string);
    procedure SetFItemSelector(Value: string);
    procedure SetFItemSelector_(Value: string);
    procedure SetFMaxDisplayRows(Value: Integer);
    procedure SetFMinChars(Value: Integer);
    procedure SetFOverClass(Value: string);
    procedure SetFSelectAllText(Value: string);
    procedure SetFSelectedClass(Value: string);
    procedure SetFSeparatorHtml(Value: string);
    procedure SetFTpl(Value: string);
    procedure SetFTplExtXTemplate(Value: TExtXTemplate);
    procedure SetFUrl(Value: string);
    procedure SetFValue(Value: TExtObjectList);
    procedure SetFBookDetail(Value: TExtObject);
    procedure SetFBookGrid(Value: TExtObject);
    procedure SetFBookMasterDetail(Value: TExtObject);
    procedure SetFConstructorJS(Value: TExtObject);
    procedure SetFGrid(Value: TExtObject);
    procedure SetFMultiCombo(Value: TExtObject);
    procedure SetFThis(Value: TExtObject);
    procedure SetFThis_(Value: TExtObject);
    procedure SetFFunctionJS(Value: TExtObject);
    procedure SetFFunctionJS_(Value: TExtObject);
    procedure SetFVarJS(Value: TExtObject);
    procedure SetFVarJS_(Value: TExtObject);
    procedure SetFView(Value: TExtDataView);
    procedure SetFOnInitview(Value: TExtUxTaskBarTaskButtonOnInitview);
  protected
    procedure InitDefaults; override;
    procedure HandleEvent(const AEvtName: string); override;
  public
    class function JSClassName: string; override;
    function MultiComboCheckable: TExtFunction;
    function BuildBottomToolbar: TExtFunction;
    function BuildTopToolbar: TExtFunction;
    function BuildUI: TExtFunction;
    function GetCheckbox: TExtFunction;
    function OnAdd: TExtFunction;
    function OnContainerClick(Dv: TExtObject; Ev: TExtObject): TExtFunction;
    function OnDelete: TExtFunction;
    function OnEnter(Sender: TExtObject): TExtFunction;
    function OnSave: TExtFunction;
    function OnSelectionChange(Dv: TExtObject; Rs: TExtObject): TExtFunction;
    function Select(Index: Integer; ScrollIntoView: Boolean): TExtFunction;
    function SelectByValue(Value: string; ScrollIntoView: Boolean): TExtFunction;
    function SelectNext(Sender: TExtObject): TExtFunction;
    function SelectPrev(Sender: TExtObject): TExtFunction;
    function SetChecked(V: TExtObject): TExtFunction;
    function SetValue: TExtFunction;
    property AllSelectedText: string read FAllSelectedText write SetFAllSelectedText;
    property AutoSelectKey: Integer read FAutoSelectKey write SetFAutoSelectKey;
    property CheckSelector: string read FCheckSelector write SetFCheckSelector;
    property ClearAllText: string read FClearAllText write SetFClearAllText;
    property Cls: string read FCls write SetFCls;
    property EnableKeyEvents: Boolean read FEnableKeyEvents write SetFEnableKeyEvents;
    property HighlightClass: string read FHighlightClass write SetFHighlightClass;
    property ItemSelector: string read FItemSelector write SetFItemSelector;
    property ItemSelector_: string read FItemSelector_ write SetFItemSelector_;
    property MaxDisplayRows: Integer read FMaxDisplayRows write SetFMaxDisplayRows;
    property MinChars: Integer read FMinChars write SetFMinChars;
    property OverClass: string read FOverClass write SetFOverClass;
    property SelectAllText: string read FSelectAllText write SetFSelectAllText;
    property SelectedClass: string read FSelectedClass write SetFSelectedClass;
    property SeparatorHtml: string read FSeparatorHtml write SetFSeparatorHtml;
    property Tpl: string read FTpl write SetFTpl;
    property TplExtXTemplate: TExtXTemplate read FTplExtXTemplate
      write SetFTplExtXTemplate;
    property Url: string read FUrl write SetFUrl;
    property Value: TExtObjectList read FValue write SetFValue;
    property BookDetail: TExtObject read FBookDetail write SetFBookDetail;
    property BookGrid: TExtObject read FBookGrid write SetFBookGrid;
    property BookMasterDetail: TExtObject read FBookMasterDetail
      write SetFBookMasterDetail;
    property ConstructorJS: TExtObject read FConstructorJS write SetFConstructorJS;
    property Grid: TExtObject read FGrid write SetFGrid;
    property MultiCombo: TExtObject read FMultiCombo write SetFMultiCombo;
    property This: TExtObject read FThis write SetFThis;
    property This_: TExtObject read FThis_ write SetFThis_;
    property FunctionJS: TExtObject read FFunctionJS write SetFFunctionJS;
    property FunctionJS_: TExtObject read FFunctionJS_ write SetFFunctionJS_;
    property VarJS: TExtObject read FVarJS write SetFVarJS;
    property VarJS_: TExtObject read FVarJS_ write SetFVarJS_;
    property View: TExtDataView read FView write SetFView;
    property OnInitview: TExtUxTaskBarTaskButtonOnInitview read FOnInitview
      write SetFOnInitview;
  end;

  TExtUxGMapPanel = class(TExtPanel)
  protected
    procedure InitDefaults; override;
  public
    class function JSClassName: string; override;
  end;

  TExtUxStartMenu = class(TExtMenuMenu)
  protected
    procedure InitDefaults; override;
  public
    class function JSClassName: string; override;
    function AddToolSeparator: TExtFunction;
    function Show(Element: string; Position: string = '';
      ParentMenu: TExtUxStartMenu = nil): TExtFunction;
  end;

  TExtUxStatusBar = class(TExtToolbar)
  private
    FAutoClear: Integer; // 5000
    FBusyIconCls: string; // 'x-status-busy'
    FBusyText: string; // 'Loading...'
    FCls: string; // 'x-statusbar'
    FDefaultIconCls: string;
    FDefaultText: string;
    FIconCls: string;
    FStatusAlign: string;
    FText: string;
    procedure SetAutoClear(const AValue: Integer);
    procedure SetBusyIconCls(const AValue: string);
    procedure SetBusyText(const AValue: string);
    procedure SetCls(const AValue: string);
    procedure SetDefaultIconCls(const AValue: string);
    procedure SetDefaultText(const AValue: string);
    procedure SetIconCls(const AValue: string);
    procedure SetStatusAlign(const AValue: string);
    procedure _SetText(const AValue: string);
  protected
    procedure InitDefaults; override;
    function GetObjectNamePrefix: string; override;
  public
    class function JSClassName: string; override;
    function ClearStatus(const AConfig: TExtObject = nil): TExtFunction;
    function GetText: TExtFunction;
    function SetIcon(const AIconCls: string = ''): TExtFunction;
    function SetStatus(const AConfig: TExtObject = nil): TExtFunction; overload;
    function SetStatus(const AConfig: string): TExtFunction; overload;
    function SetText(const AText: string): TExtFunction;
    function ShowBusy(const AConfig: TExtObject = nil): TExtFunction; overload;
    function ShowBusy(const AConfig: string): TExtFunction; overload;
    property AutoClear: Integer read FAutoClear write SetAutoClear;
    property BusyIconCls: string read FBusyIconCls write SetBusyIconCls;
    property BusyText: string read FBusyText write SetBusyText;
    property Cls: string read FCls write SetCls;
    property DefaultIconCls: string read FDefaultIconCls write SetDefaultIconCls;
    property DefaultText: string read FDefaultText write SetDefaultText;
    property IconCls: string read FIconCls write SetIconCls;
    property StatusAlign: string read FStatusAlign write SetStatusAlign;
    property Text: string read FText write _SetText;
  end;

  TExtUxSliderTip = class(TExtTip)
  public
    class function JSClassName: string; override;
  end;

implementation

class function TExtUxTabCloseMenu.JSClassName: string;
begin
  Result := 'Ext.ux.TabCloseMenu';
end;

procedure TExtUxProgressBarPager.SetFDefaultAnimCfg(Value: TExtObject);
begin
  FDefaultAnimCfg := Value;
  JSCode('defaultAnimCfg:' + VarToJSON([Value, false]));
end;

procedure TExtUxProgressBarPager.SetFDefaultText(Value: string);
begin
  FDefaultText := Value;
  JSCode('defaultText:' + VarToJSON([Value]));
end;

procedure TExtUxProgressBarPager.SetFProgBarWidth(Value: Integer);
begin
  FProgBarWidth := Value;
  JSCode('progBarWidth:' + VarToJSON([Value]));
end;

class function TExtUxProgressBarPager.JSClassName: string;
begin
  Result := 'Ext.ux.ProgressBarPager';
end;

class function TExtUxTaskBar.JSClassName: string;
begin
  Result := 'Ext.ux.TaskBar';
end;

class function TExtUxSpinner.JSClassName: string;
begin
  Result := 'Ext.ux.Spinner';
end;

class function TExtUxValidationStatus.JSClassName: string;
begin
  Result := 'Ext.ux.ValidationStatus';
end;

procedure TExtUxValidationStatus.InitDefaults;
begin
  inherited;
end;

class function TExtUxTaskButtonsPanel.JSClassName: string;
begin
  Result := 'Ext.ux.TaskButtonsPanel';
end;

procedure TExtUxTaskButtonsPanel.InitDefaults;
begin
  inherited;
end;

class function TExtUxTaskBarContainer.JSClassName: string;
begin
  Result := 'Ext.ux.TaskBarContainer';
end;

procedure TExtUxTaskBarContainer.InitDefaults;
begin
  inherited;
end;

procedure TExtUxTaskBarTaskButton.SetFAllSelectedText(Value: string);
begin
  FAllSelectedText := Value;
  JSCode('allSelectedText:' + VarToJSON([Value]));
end;

procedure TExtUxTaskBarTaskButton.SetFAutoSelectKey(Value: Integer);
begin
  FAutoSelectKey := Value;
  JSCode('autoSelectKey:' + VarToJSON([Value]));
end;

procedure TExtUxTaskBarTaskButton.SetFCheckSelector(Value: string);
begin
  FCheckSelector := Value;
  JSCode('checkSelector:' + VarToJSON([Value]));
end;

procedure TExtUxTaskBarTaskButton.SetFClearAllText(Value: string);
begin
  FClearAllText := Value;
  JSCode('clearAllText:' + VarToJSON([Value]));
end;

procedure TExtUxTaskBarTaskButton.SetFCls(Value: string);
begin
  FCls := Value;
  JSCode('cls:' + VarToJSON([Value]));
end;

procedure TExtUxTaskBarTaskButton.SetFEnableKeyEvents(Value: Boolean);
begin
  FEnableKeyEvents := Value;
  JSCode('enableKeyEvents:' + VarToJSON([Value]));
end;

procedure TExtUxTaskBarTaskButton.SetFHighlightClass(Value: string);
begin
  FHighlightClass := Value;
  JSCode('highlightClass:' + VarToJSON([Value]));
end;

procedure TExtUxTaskBarTaskButton.SetFItemSelector(Value: string);
begin
  FItemSelector := Value;
  JSCode('itemSelector:' + VarToJSON([Value]));
end;

procedure TExtUxTaskBarTaskButton.SetFItemSelector_(Value: string);
begin
  FItemSelector_ := Value;
  JSCode('itemSelector:' + VarToJSON([Value]));
end;

procedure TExtUxTaskBarTaskButton.SetFMaxDisplayRows(Value: Integer);
begin
  FMaxDisplayRows := Value;
  JSCode('maxDisplayRows:' + VarToJSON([Value]));
end;

procedure TExtUxTaskBarTaskButton.SetFMinChars(Value: Integer);
begin
  FMinChars := Value;
  JSCode('minChars:' + VarToJSON([Value]));
end;

procedure TExtUxTaskBarTaskButton.SetFOverClass(Value: string);
begin
  FOverClass := Value;
  JSCode('overClass:' + VarToJSON([Value]));
end;

procedure TExtUxTaskBarTaskButton.SetFSelectAllText(Value: string);
begin
  FSelectAllText := Value;
  JSCode('selectAllText:' + VarToJSON([Value]));
end;

procedure TExtUxTaskBarTaskButton.SetFSelectedClass(Value: string);
begin
  FSelectedClass := Value;
  JSCode('selectedClass:' + VarToJSON([Value]));
end;

procedure TExtUxTaskBarTaskButton.SetFSeparatorHtml(Value: string);
begin
  FSeparatorHtml := Value;
  JSCode('separatorHtml:' + VarToJSON([Value]));
end;

procedure TExtUxTaskBarTaskButton.SetFTpl(Value: string);
begin
  FTpl := Value;
  JSCode('tpl:' + VarToJSON([Value]));
end;

procedure TExtUxTaskBarTaskButton.SetFTplExtXTemplate(Value: TExtXTemplate);
begin
  FTplExtXTemplate := Value;
  JSCode('tpl:' + VarToJSON([Value, false]));
end;

procedure TExtUxTaskBarTaskButton.SetFUrl(Value: string);
begin
  FUrl := Value;
  JSCode('url:' + VarToJSON([Value]));
end;

procedure TExtUxTaskBarTaskButton.SetFValue(Value: TExtObjectList);
begin
  FValue := Value;
  JSCode('value:' + VarToJSON([Value, false]));
end;

procedure TExtUxTaskBarTaskButton.SetFBookDetail(Value: TExtObject);
begin
  FBookDetail := Value;
  JSCode(JSName + '.bookDetail=' + VarToJSON([Value, false]) + ';');
end;

procedure TExtUxTaskBarTaskButton.SetFBookGrid(Value: TExtObject);
begin
  FBookGrid := Value;
  JSCode(JSName + '.bookGrid=' + VarToJSON([Value, false]) + ';');
end;

procedure TExtUxTaskBarTaskButton.SetFBookMasterDetail(Value: TExtObject);
begin
  FBookMasterDetail := Value;
  JSCode(JSName + '.bookMasterDetail=' + VarToJSON([Value, false]) + ';');
end;

procedure TExtUxTaskBarTaskButton.SetFConstructorJS(Value: TExtObject);
begin
  FConstructorJS := Value;
  JSCode(JSName + '.constructorJS=' + VarToJSON([Value, false]) + ';');
end;

procedure TExtUxTaskBarTaskButton.SetFGrid(Value: TExtObject);
begin
  FGrid := Value;
  JSCode(JSName + '.grid=' + VarToJSON([Value, false]) + ';');
end;

procedure TExtUxTaskBarTaskButton.SetFMultiCombo(Value: TExtObject);
begin
  FMultiCombo := Value;
  JSCode(JSName + '.multiCombo=' + VarToJSON([Value, false]) + ';');
end;

procedure TExtUxTaskBarTaskButton.SetFThis(Value: TExtObject);
begin
  FThis := Value;
  JSCode(JSName + '.this=' + VarToJSON([Value, false]) + ';');
end;

procedure TExtUxTaskBarTaskButton.SetFThis_(Value: TExtObject);
begin
  FThis_ := Value;
  JSCode(JSName + '.this=' + VarToJSON([Value, false]) + ';');
end;

procedure TExtUxTaskBarTaskButton.SetFFunctionJS(Value: TExtObject);
begin
  FFunctionJS := Value;
  JSCode(JSName + '.functionJS=' + VarToJSON([Value, false]) + ';');
end;

procedure TExtUxTaskBarTaskButton.SetFFunctionJS_(Value: TExtObject);
begin
  FFunctionJS_ := Value;
  JSCode(JSName + '.functionJS=' + VarToJSON([Value, false]) + ';');
end;

procedure TExtUxTaskBarTaskButton.SetFVarJS(Value: TExtObject);
begin
  FVarJS := Value;
  JSCode(JSName + '.varJS=' + VarToJSON([Value, false]) + ';');
end;

procedure TExtUxTaskBarTaskButton.SetFVarJS_(Value: TExtObject);
begin
  FVarJS_ := Value;
  JSCode(JSName + '.varJS=' + VarToJSON([Value, false]) + ';');
end;

procedure TExtUxTaskBarTaskButton.SetFView(Value: TExtDataView);
begin
  FView := Value;
  JSCode(JSName + '.view=' + VarToJSON([Value, false]) + ';');
end;

procedure TExtUxTaskBarTaskButton.SetFOnInitview
  (Value: TExtUxTaskBarTaskButtonOnInitview);
begin
  if Assigned(FOnInitview) then
    JSCode(JSName + '.events ["initview"].listeners=[];');
  if Assigned(Value) then
    on('initview', Ajax('initview', ['This', '%0.nm', 'Dv', '%1.nm'], true));
  FOnInitview := Value;
end;

class function TExtUxTaskBarTaskButton.JSClassName: string;
begin
  Result := 'Ext.ux.TaskBar.TaskButton';
end;

procedure TExtUxTaskBarTaskButton.InitDefaults;
begin
  inherited;
  FTplExtXTemplate := TExtXTemplate.CreateInternal(Self, 'tpl');
  FValue := TExtObjectList.CreateAsAttribute(Self, 'value');
  FBookDetail := TExtObject.CreateInternal(Self, 'bookDetail');
  FBookGrid := TExtObject.CreateInternal(Self, 'bookGrid');
  FBookMasterDetail := TExtObject.CreateInternal(Self, 'bookMasterDetail');
  FConstructorJS := TExtObject.CreateInternal(Self, 'constructorJS');
  FGrid := TExtObject.CreateInternal(Self, 'grid');
  FMultiCombo := TExtObject.CreateInternal(Self, 'multiCombo');
  FThis := TExtObject.CreateInternal(Self, 'this');
  FThis_ := TExtObject.CreateInternal(Self, 'this');
  FFunctionJS := TExtObject.CreateInternal(Self, 'functionJS');
  FFunctionJS_ := TExtObject.CreateInternal(Self, 'functionJS');
  FVarJS := TExtObject.CreateInternal(Self, 'varJS');
  FVarJS_ := TExtObject.CreateInternal(Self, 'varJS');
  FView := TExtDataView.CreateInternal(Self, 'view');
end;

function TExtUxTaskBarTaskButton.MultiComboCheckable: TExtFunction;
begin
  JSCode(JSName + '.MultiCombo.Checkable();', 'TExtUxTaskBarTaskButton');
  Result := Self;
end;

function TExtUxTaskBarTaskButton.BuildBottomToolbar: TExtFunction;
begin
  JSCode(JSName + '.buildBottomToolbar();', 'TExtUxTaskBarTaskButton');
  Result := Self;
end;

function TExtUxTaskBarTaskButton.BuildTopToolbar: TExtFunction;
begin
  JSCode(JSName + '.buildTopToolbar();', 'TExtUxTaskBarTaskButton');
  Result := Self;
end;

function TExtUxTaskBarTaskButton.BuildUI: TExtFunction;
begin
  JSCode(JSName + '.buildUI();', 'TExtUxTaskBarTaskButton');
  Result := Self;
end;

function TExtUxTaskBarTaskButton.GetCheckbox: TExtFunction;
begin
  JSCode(JSName + '.getCheckbox();', 'TExtUxTaskBarTaskButton');
  Result := Self;
end;

function TExtUxTaskBarTaskButton.OnAdd: TExtFunction;
begin
  JSCode(JSName + '.onAdd();', 'TExtUxTaskBarTaskButton');
  Result := Self;
end;

function TExtUxTaskBarTaskButton.OnContainerClick(Dv: TExtObject; Ev: TExtObject)
  : TExtFunction;
begin
  JSCode(JSName + '.onContainerClick(' + VarToJSON([Dv, false, Ev, false]) + ');',
    'TExtUxTaskBarTaskButton');
  Result := Self;
end;

function TExtUxTaskBarTaskButton.OnDelete: TExtFunction;
begin
  JSCode(JSName + '.onDelete();', 'TExtUxTaskBarTaskButton');
  Result := Self;
end;

function TExtUxTaskBarTaskButton.OnEnter(Sender: TExtObject): TExtFunction;
begin
  JSCode(JSName + '.onEnter(' + VarToJSON([Sender, false]) + ');',
    'TExtUxTaskBarTaskButton');
  Result := Self;
end;

function TExtUxTaskBarTaskButton.OnSave: TExtFunction;
begin
  JSCode(JSName + '.onSave();', 'TExtUxTaskBarTaskButton');
  Result := Self;
end;

function TExtUxTaskBarTaskButton.OnSelectionChange(Dv: TExtObject; Rs: TExtObject)
  : TExtFunction;
begin
  JSCode(JSName + '.onSelectionChange(' + VarToJSON([Dv, false, Rs, false]) + ');',
    'TExtUxTaskBarTaskButton');
  Result := Self;
end;

function TExtUxTaskBarTaskButton.Select(Index: Integer; ScrollIntoView: Boolean)
  : TExtFunction;
begin
  JSCode(JSName + '.select(' + VarToJSON([index, ScrollIntoView]) + ');',
    'TExtUxTaskBarTaskButton');
  Result := Self;
end;

function TExtUxTaskBarTaskButton.SelectByValue(Value: string; ScrollIntoView: Boolean)
  : TExtFunction;
begin
  JSCode(JSName + '.selectByValue(' + VarToJSON([Value, ScrollIntoView]) + ');',
    'TExtUxTaskBarTaskButton');
  Result := Self;
end;

function TExtUxTaskBarTaskButton.SelectNext(Sender: TExtObject): TExtFunction;
begin
  JSCode(JSName + '.selectNext(' + VarToJSON([Sender, false]) + ');',
    'TExtUxTaskBarTaskButton');
  Result := Self;
end;

function TExtUxTaskBarTaskButton.SelectPrev(Sender: TExtObject): TExtFunction;
begin
  JSCode(JSName + '.selectPrev(' + VarToJSON([Sender, false]) + ');',
    'TExtUxTaskBarTaskButton');
  Result := Self;
end;

function TExtUxTaskBarTaskButton.SetChecked(V: TExtObject): TExtFunction;
begin
  JSCode(JSName + '.setChecked(' + VarToJSON([V, false]) + ');',
    'TExtUxTaskBarTaskButton');
  Result := Self;
end;

function TExtUxTaskBarTaskButton.SetValue: TExtFunction;
begin
  JSCode(JSName + '.setValue();', 'TExtUxTaskBarTaskButton');
  Result := Self;
end;

procedure TExtUxTaskBarTaskButton.HandleEvent(const AEvtName: string);
begin
  inherited;
  if (AEvtName = 'initview') and Assigned(FOnInitview) then
    FOnInitview(TExtUxTaskBarTaskButton(ParamAsObject('This')),
      TExtDataView(ParamAsObject('Dv')));
end;

class function TExtUxGMapPanel.JSClassName: string;
begin
  Result := 'Ext.ux.GMapPanel';
end;

procedure TExtUxGMapPanel.InitDefaults;
begin
  inherited;
end;

class function TExtUxStartMenu.JSClassName: string;
begin
  Result := 'Ext.ux.StartMenu';
end;

procedure TExtUxStartMenu.InitDefaults;
begin
  inherited;
end;

function TExtUxStartMenu.AddToolSeparator: TExtFunction;
begin
  JSCode(JSName + '.addToolSeparator();', 'TExtUxStartMenu');
  Result := Self;
end;

function TExtUxStartMenu.Show(Element: string; Position: string = '';
  ParentMenu: TExtUxStartMenu = nil): TExtFunction;
begin
  JSCode(JSName + '.show(' + VarToJSON([Element, Position, ParentMenu, false]) + ');',
    'TExtUxStartMenu');
  Result := Self;
end;

procedure TExtUxStatusBar.SetAutoClear(const AValue: Integer);
begin
  FAutoClear := AValue;
  ExtSession.ResponseItems.SetConfigItem(Self, 'autoClear', [AValue]);
end;

procedure TExtUxStatusBar.SetBusyIconCls(const AValue: string);
begin
  FBusyIconCls := AValue;
  ExtSession.ResponseItems.SetConfigItem(Self, 'busyIconCls', [AValue]);
end;

procedure TExtUxStatusBar.SetBusyText(const AValue: string);
begin
  FBusyText := AValue;
  ExtSession.ResponseItems.SetConfigItem(Self, 'busyText', [AValue]);
end;

procedure TExtUxStatusBar.SetCls(const AValue: string);
begin
  FCls := AValue;
  ExtSession.ResponseItems.SetConfigItem(Self, 'cls', [AValue]);
end;

procedure TExtUxStatusBar.SetDefaultIconCls(const AValue: string);
begin
  FDefaultIconCls := AValue;
  ExtSession.ResponseItems.SetConfigItem(Self, 'defaultIconCls', [AValue]);
end;

procedure TExtUxStatusBar.SetDefaultText(const AValue: string);
begin
  FDefaultText := AValue;
  ExtSession.ResponseItems.SetConfigItem(Self, 'defaultText', [AValue]);
end;

procedure TExtUxStatusBar.SetIconCls(const AValue: string);
begin
  FIconCls := AValue;
  ExtSession.ResponseItems.SetConfigItem(Self, 'iconCls', [AValue]);
end;

procedure TExtUxStatusBar.SetStatusAlign(const AValue: string);
begin
  FStatusAlign := AValue;
  ExtSession.ResponseItems.SetConfigItem(Self, 'statusAlign', [AValue]);
end;

procedure TExtUxStatusBar._SetText(const AValue: string);
begin
  FText := AValue;
  ExtSession.ResponseItems.SetConfigItem(Self, 'text', 'setText', [AValue]);
end;

class function TExtUxStatusBar.JSClassName: string;
begin
  Result := 'Ext.ux.StatusBar';
end;

procedure TExtUxStatusBar.InitDefaults;
begin
  inherited;
  FAutoClear := 5000;
  FBusyIconCls := 'x-status-busy';
  FBusyText := 'Loading...';
  FCls := 'x-statusbar';
end;

function TExtUxStatusBar.ClearStatus(const AConfig: TExtObject = nil): TExtFunction;
begin
  ExtSession.ResponseItems.CallMethod(Self, 'clearStatus', [AConfig, False]);
  Result := Self;
end;

function TExtUxStatusBar.GetObjectNamePrefix: string;
begin
  Result := 'statusbar';
end;

function TExtUxStatusBar.GetText: TExtFunction;
begin
  ExtSession.ResponseItems.CallMethod(Self, 'getText', []);
  Result := Self;
end;

function TExtUxStatusBar.SetIcon(const AIconCls: string): TExtFunction;
begin
  ExtSession.ResponseItems.CallMethod(Self, 'setIcon', [AIconCls]);
  Result := Self;
end;

function TExtUxStatusBar.SetStatus(const AConfig: TExtObject): TExtFunction;
begin
  ExtSession.ResponseItems.CallMethod(Self, 'setStatus', [AConfig, False]);
  Result := Self;
end;

function TExtUxStatusBar.SetStatus(const AConfig: string): TExtFunction;
begin
  ExtSession.ResponseItems.CallMethod(Self, 'setStatus', [AConfig]);
  Result := Self;
end;

function TExtUxStatusBar.SetText(const AText: string): TExtFunction;
begin
  ExtSession.ResponseItems.CallMethod(Self, 'setText', [AText]);
  Result := Self;
end;

function TExtUxStatusBar.ShowBusy(const AConfig: TExtObject): TExtFunction;
begin
  ExtSession.ResponseItems.CallMethod(Self, 'showBusy', [AConfig, False]);
  Result := Self;
end;

function TExtUxStatusBar.ShowBusy(const AConfig: string): TExtFunction;
begin
  ExtSession.ResponseItems.CallMethod(Self, 'showBusy', [AConfig]);
  Result := Self;
end;

class function TExtUxSliderTip.JSClassName: string;
begin
  Result := 'Ext.ux.SliderTip';
end;

end.
