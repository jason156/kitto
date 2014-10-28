unit ExtUxGrid;

// Generated by ExtToPascal v.0.9.8, at 7/1/2010 09:28:02
// from "C:\Trabalho\ext-3.0.0\docs\output" detected as ExtJS v.3

interface

uses
  StrUtils, ExtPascal, ExtPascalUtils, ExtGrid, ExtUtil, Ext, ExtData;

type
  TExtUxGridCheckColumn = class;
  TExtUxGridGroupSummary = class;
  TExtUxGridRowExpander = class;
  TExtUxGridHybridSummary = class;
  TExtUxGridBufferView = class;
  TExtUxGridRowEditor = class;
  TExtUxGridTableGrid = class;

  TExtUxGridCheckColumn = class(TExtGridColumn)
  public
    class function JSClassName: string; override;
  end;

  TExtUxGridGroupSummary = class(TExtUtilObservable)
  private
    FSummaryRenderer : TExtFunction;
    FSummaryType : string;
    FCalculations : TExtObject;
    procedure SetFSummaryRenderer(Value : TExtFunction);
    procedure SetFSummaryType(Value : string);
    procedure SetFCalculations(Value : TExtObject);
  protected
    procedure InitDefaults; override;
  public
    class function JSClassName: string; override;
    function ShowSummaryMsg(GroupValue : string; Msg : string) : TExtFunction;
    function ToggleSummaries(Visible : Boolean) : TExtFunction;
    property SummaryRenderer : TExtFunction read FSummaryRenderer write SetFSummaryRenderer;
    property SummaryType : string read FSummaryType write SetFSummaryType;
    property Calculations : TExtObject read FCalculations write SetFCalculations;
  end;

  // Procedural types for events TExtUxGridRowExpander
  TExtUxGridRowExpanderOnBeforecollapse = procedure(This : TExtUxGridRowExpander; ExtDataRecord : TExtObject; Body : TExtObject; RowIndex : Integer) of object;
  TExtUxGridRowExpanderOnBeforeexpand = procedure(This : TExtUxGridRowExpander; ExtDataRecord : TExtObject; Body : TExtObject; RowIndex : Integer) of object;
  TExtUxGridRowExpanderOnCollapse = procedure(This : TExtUxGridRowExpander; ExtDataRecord : TExtObject; Body : TExtObject; RowIndex : Integer) of object;
  TExtUxGridRowExpanderOnExpand = procedure(This : TExtUxGridRowExpander; ExtDataRecord : TExtObject; Body : TExtObject; RowIndex : Integer) of object;

  TExtUxGridRowExpander = class(TExtUtilObservable)
  private
    FExpandOnDblClick : Boolean; // true
    FExpandOnEnter : Boolean; // true
    FOnBeforecollapse : TExtUxGridRowExpanderOnBeforecollapse;
    FOnBeforeexpand : TExtUxGridRowExpanderOnBeforeexpand;
    FOnCollapse : TExtUxGridRowExpanderOnCollapse;
    FOnExpand : TExtUxGridRowExpanderOnExpand;
    procedure SetFExpandOnDblClick(Value : Boolean);
    procedure SetFExpandOnEnter(Value : Boolean);
    procedure SetFOnBeforecollapse(Value : TExtUxGridRowExpanderOnBeforecollapse);
    procedure SetFOnBeforeexpand(Value : TExtUxGridRowExpanderOnBeforeexpand);
    procedure SetFOnCollapse(Value : TExtUxGridRowExpanderOnCollapse);
    procedure SetFOnExpand(Value : TExtUxGridRowExpanderOnExpand);
  protected
    procedure InitDefaults; override;
    procedure HandleEvent(const AEvtName: string); override;
  public
    class function JSClassName: string; override;
    property ExpandOnDblClick : Boolean read FExpandOnDblClick write SetFExpandOnDblClick;
    property ExpandOnEnter : Boolean read FExpandOnEnter write SetFExpandOnEnter;
    property OnBeforecollapse : TExtUxGridRowExpanderOnBeforecollapse read FOnBeforecollapse write SetFOnBeforecollapse;
    property OnBeforeexpand : TExtUxGridRowExpanderOnBeforeexpand read FOnBeforeexpand write SetFOnBeforeexpand;
    property OnCollapse : TExtUxGridRowExpanderOnCollapse read FOnCollapse write SetFOnCollapse;
    property OnExpand : TExtUxGridRowExpanderOnExpand read FOnExpand write SetFOnExpand;
  end;

  TExtUxGridHybridSummary = class(TExtUxGridGroupSummary)
  public
    class function JSClassName: string; override;
    function GetSummaryData(GroupValue : string) : TExtFunction;
    function UpdateSummaryData(GroupValue : string; Data : TExtObject; SkipRefresh : Boolean = false) : TExtFunction;
  end;

  TExtUxGridBufferView = class(TExtGridGridView)
  private
    FBorderHeight : Integer;
    FCacheSize : Integer;
    FCleanDelay : Integer;
    FRowHeight : Integer;
    FScrollDelay : Boolean;
    FScrollDelayNumber : Integer;
    procedure SetFBorderHeight(Value : Integer);
    procedure SetFCacheSize(Value : Integer);
    procedure SetFCleanDelay(Value : Integer);
    procedure SetFRowHeight(Value : Integer);
    procedure SetFScrollDelay(Value : Boolean);
    procedure SetFScrollDelayNumber(Value : Integer);
  protected
    procedure InitDefaults; override;
  public
    class function JSClassName: string; override;
    property BorderHeight : Integer read FBorderHeight write SetFBorderHeight;
    property CacheSize : Integer read FCacheSize write SetFCacheSize;
    property CleanDelay : Integer read FCleanDelay write SetFCleanDelay;
    property RowHeight : Integer read FRowHeight write SetFRowHeight;
    property ScrollDelay : Boolean read FScrollDelay write SetFScrollDelay;
    property ScrollDelayNumber : Integer read FScrollDelayNumber write SetFScrollDelayNumber;
  end;

  // Procedural types for events TExtUxGridRowEditor
  TExtUxGridRowEditorOnAfterEdit = procedure(ARowEditor: TExtUxGridRowEditor; AChanges: TExtObject; ARecord: TExtDataRecord; ARowIndex: Integer) of object;
  TExtUxGridRowEditorOnBeforeEdit = procedure(ARowEditor: TExtUxGridRowEditor; ARowIndex: Integer) of object;
  TExtUxGridRowEditorOnValidateEdit = procedure(ARowEditor: TExtUxGridRowEditor; AChanges: TExtObject; ARecord: TExtDataRecord; ARowIndex: Integer) of object;

  TExtUxGridRowEditor = class(TExtPanel)
  private
    FSaveText: string;
    FCancelText: string;
    FCommitChangesText: string;
    FErrorText: string;
    FOnAfterEdit: TExtUxGridRowEditorOnAfterEdit;
    FOnBeforeEdit: TExtUxGridRowEditorOnBeforeEdit;
    FOnValidateEdit: TExtUxGridRowEditorOnValidateEdit;
    procedure SetOnAfterEdit(const AValue: TExtUxGridRowEditorOnAfterEdit);
    procedure SetOnBeforeEdit(const AValue: TExtUxGridRowEditorOnBeforeEdit);
    procedure SetOnValidateEdit(const AValue: TExtUxGridRowEditorOnValidateEdit);
    procedure SetCancelText(const AValue: string);
    procedure SetCommitChangesText(const AValue: string);
    procedure SetErrorText(const AValue: string);
    procedure SetSaveText(const AValue: string);
  protected
    procedure InitDefaults; override;
    procedure HandleEvent(const AEvtName: string); override;
  public
    class function JSClassName: string; override;
    property OnAfteredit : TExtUxGridRowEditorOnAfterEdit read FOnAfterEdit write SetOnAfterEdit;
    property OnBeforeedit : TExtUxGridRowEditorOnBeforeEdit read FOnBeforeEdit write SetOnBeforeEdit;
    property OnValidateedit : TExtUxGridRowEditorOnValidateEdit read FOnValidateEdit write SetOnValidateEdit;

    property SaveText: string read FSaveText write SetSaveText;
    property CancelText: string read FCancelText write SetCancelText;
    property CommitChangesText: string read FCommitChangesText write SetCommitChangesText;
    property ErrorText: string read FErrorText write SetErrorText;
  end;

  TExtUxGridTableGrid = class(TExtGridGridPanel)
  protected
    procedure InitDefaults; override;
  public
    class function JSClassName: string; override;
  end;

implementation

class function TExtUxGridCheckColumn.JSClassName: string;
begin
  Result := 'Ext.ux.grid.CheckColumn';
end;

procedure TExtUxGridGroupSummary.SetFSummaryRenderer(Value : TExtFunction); begin
  FSummaryRenderer := Value;
  JSCode('summaryRenderer:' + VarToJSON([Value, true]));
end;

procedure TExtUxGridGroupSummary.SetFSummaryType(Value : string); begin
  FSummaryType := Value;
  JSCode('summaryType:' + VarToJSON([Value]));
end;

procedure TExtUxGridGroupSummary.SetFCalculations(Value : TExtObject); begin
  FCalculations := Value;
    JSCode(JSName + '.calculations=' + VarToJSON([Value, false]) + ';');
end;

class function TExtUxGridGroupSummary.JSClassName: string;
begin
  Result := 'Ext.ux.grid.GroupSummary';
end;

procedure TExtUxGridGroupSummary.InitDefaults; begin
  inherited;
  FCalculations := TExtObject.CreateInternal(Self, 'calculations');
end;

function TExtUxGridGroupSummary.ShowSummaryMsg(GroupValue : string; Msg : string) : TExtFunction; begin
  JSCode(JSName + '.showSummaryMsg(' + VarToJSON([GroupValue, Msg]) + ');', 'TExtUxGridGroupSummary');
  Result := Self;
end;

function TExtUxGridGroupSummary.ToggleSummaries(Visible : Boolean) : TExtFunction; begin
  JSCode(JSName + '.toggleSummaries(' + VarToJSON([Visible]) + ');', 'TExtUxGridGroupSummary');
  Result := Self;
end;

procedure TExtUxGridRowExpander.SetFExpandOnDblClick(Value : Boolean); begin
  FExpandOnDblClick := Value;
  JSCode('expandOnDblClick:' + VarToJSON([Value]));
end;

procedure TExtUxGridRowExpander.SetFExpandOnEnter(Value : Boolean); begin
  FExpandOnEnter := Value;
  JSCode('expandOnEnter:' + VarToJSON([Value]));
end;

procedure TExtUxGridRowExpander.SetFOnBeforecollapse(Value : TExtUxGridRowExpanderOnBeforecollapse); begin
  if Assigned(FOnBeforecollapse) then
    JSCode(JSName+'.events ["beforecollapse"].listeners=[];');
  if Assigned(Value) then
    On('beforecollapse', Ajax('beforecollapse', ['This', '%0.nm','ExtDataRecord', '%1.nm','Body', '%2.nm','RowIndex', '%3'], true));
  FOnBeforecollapse := Value;
end;

procedure TExtUxGridRowExpander.SetFOnBeforeexpand(Value : TExtUxGridRowExpanderOnBeforeexpand); begin
  if Assigned(FOnBeforeexpand) then
    JSCode(JSName+'.events ["beforeexpand"].listeners=[];');
  if Assigned(Value) then
    On('beforeexpand', Ajax('beforeexpand', ['This', '%0.nm','ExtDataRecord', '%1.nm','Body', '%2.nm','RowIndex', '%3'], true));
  FOnBeforeexpand := Value;
end;

procedure TExtUxGridRowExpander.SetFOnCollapse(Value : TExtUxGridRowExpanderOnCollapse); begin
  if Assigned(FOnCollapse) then
    JSCode(JSName+'.events ["collapse"].listeners=[];');
  if Assigned(Value) then
    On('collapse', Ajax('collapse', ['This', '%0.nm','ExtDataRecord', '%1.nm','Body', '%2.nm','RowIndex', '%3'], true));
  FOnCollapse := Value;
end;

procedure TExtUxGridRowExpander.SetFOnExpand(Value : TExtUxGridRowExpanderOnExpand); begin
  if Assigned(FOnExpand) then
    JSCode(JSName+'.events ["expand"].listeners=[];');
  if Assigned(Value) then
    On('expand', Ajax('expand', ['This', '%0.nm','ExtDataRecord', '%1.nm','Body', '%2.nm','RowIndex', '%3'], true));
  FOnExpand := Value;
end;

class function TExtUxGridRowExpander.JSClassName: string;
begin
  Result := 'Ext.ux.grid.RowExpander';
end;

procedure TExtUxGridRowExpander.InitDefaults; begin
  inherited;
  FExpandOnDblClick := true;
  FExpandOnEnter := true;
end;

procedure TExtUxGridRowExpander.HandleEvent(const AEvtName : string); begin
  inherited;
  if (AEvtName = 'beforecollapse') and Assigned(FOnBeforecollapse) then
    FOnBeforecollapse(TExtUxGridRowExpander(ParamAsObject('This')), TExtObject(ParamAsObject('ExtDataRecord')), TExtObject(ParamAsObject('Body')), ParamAsInteger('RowIndex'))
  else if (AEvtName = 'beforeexpand') and Assigned(FOnBeforeexpand) then
    FOnBeforeexpand(TExtUxGridRowExpander(ParamAsObject('This')), TExtObject(ParamAsObject('ExtDataRecord')), TExtObject(ParamAsObject('Body')), ParamAsInteger('RowIndex'))
  else if (AEvtName = 'collapse') and Assigned(FOnCollapse) then
    FOnCollapse(TExtUxGridRowExpander(ParamAsObject('This')), TExtObject(ParamAsObject('ExtDataRecord')), TExtObject(ParamAsObject('Body')), ParamAsInteger('RowIndex'))
  else if (AEvtName = 'expand') and Assigned(FOnExpand) then
    FOnExpand(TExtUxGridRowExpander(ParamAsObject('This')), TExtObject(ParamAsObject('ExtDataRecord')), TExtObject(ParamAsObject('Body')), ParamAsInteger('RowIndex'));
end;

class function TExtUxGridHybridSummary.JSClassName: string;
begin
  Result := 'Ext.ux.grid.HybridSummary';
end;

function TExtUxGridHybridSummary.GetSummaryData(GroupValue : string) : TExtFunction; begin
  JSCode(JSName + '.getSummaryData(' + VarToJSON([GroupValue]) + ');', 'TExtUxGridHybridSummary');
  Result := Self;
end;

function TExtUxGridHybridSummary.UpdateSummaryData(GroupValue : string; Data : TExtObject; SkipRefresh : Boolean = false) : TExtFunction; begin
  JSCode(JSName + '.updateSummaryData(' + VarToJSON([GroupValue, Data, false, SkipRefresh]) + ');', 'TExtUxGridHybridSummary');
  Result := Self;
end;

procedure TExtUxGridBufferView.SetFBorderHeight(Value : Integer); begin
  FBorderHeight := Value;
  JSCode('borderHeight:' + VarToJSON([Value]));
end;

procedure TExtUxGridBufferView.SetFCacheSize(Value : Integer); begin
  FCacheSize := Value;
  JSCode('cacheSize:' + VarToJSON([Value]));
end;

procedure TExtUxGridBufferView.SetFCleanDelay(Value : Integer); begin
  FCleanDelay := Value;
  JSCode('cleanDelay:' + VarToJSON([Value]));
end;

procedure TExtUxGridBufferView.SetFRowHeight(Value : Integer); begin
  FRowHeight := Value;
  JSCode('rowHeight:' + VarToJSON([Value]));
end;

procedure TExtUxGridBufferView.SetFScrollDelay(Value : Boolean); begin
  FScrollDelay := Value;
  JSCode('scrollDelay:' + VarToJSON([Value]));
end;

procedure TExtUxGridBufferView.SetFScrollDelayNumber(Value : Integer); begin
  FScrollDelayNumber := Value;
  JSCode('scrollDelay:' + VarToJSON([Value]));
end;

class function TExtUxGridBufferView.JSClassName: string;
begin
  Result := 'Ext.ux.grid.BufferView';
end;

procedure TExtUxGridBufferView.InitDefaults; begin
  inherited;
end;

procedure TExtUxGridRowEditor.SetCancelText(const AValue: string);
begin
  FCancelText := AValue;
  Session.ResponseItems.SetConfigItemOrProperty(Self, 'cancelText', [AValue]);
end;

procedure TExtUxGridRowEditor.SetCommitChangesText(const AValue: string);
begin
  FCommitChangesText := AValue;
  Session.ResponseItems.SetConfigItemOrProperty(Self, 'commitChangesText', [AValue]);
end;

procedure TExtUxGridRowEditor.SetErrorText(const AValue: string);
begin
  FErrorText := AValue;
  Session.ResponseItems.SetConfigItemOrProperty(Self, 'errorText', [AValue]);
end;

procedure TExtUxGridRowEditor.SetOnAfterEdit(const AValue: TExtUxGridRowEditorOnAfterEdit);
begin
  if Assigned(FOnAfterEdit) then
    Session.ResponseItems.ExecuteJSCode(JSName + '.events["afteredit"].listeners=[];');
  if Assigned(AValue) then
    On('afteredit', Ajax('afteredit', ['Roweditor', '%0.nm','Changes', '%1.nm','R', '%2.nm','RowIndex', '%3'], True));
  FOnAfterEdit := AValue;
end;

procedure TExtUxGridRowEditor.SetOnBeforeEdit(const AValue: TExtUxGridRowEditorOnBeforeEdit);
begin
  if Assigned(FOnBeforeEdit) then
    Session.ResponseItems.ExecuteJSCode(JSName + '.events["beforeedit"].listeners=[];');
  if Assigned(AValue) then
    On('beforeedit', Ajax('beforeedit', ['Roweditor', '%0.nm','RowIndex', '%1'], True));
  FOnBeforeEdit := AValue;
end;

procedure TExtUxGridRowEditor.SetOnValidateEdit(const AValue: TExtUxGridRowEditorOnValidateEdit);
begin
  if Assigned(FOnValidateEdit) then
    Session.ResponseItems.ExecuteJSCode(JSName + '.events["validateedit"].listeners=[];');
  if Assigned(AValue) then
    On('validateedit', Ajax('validateedit', ['Roweditor', '%0.nm','Changes', '%1.nm','R', '%2.nm','RowIndex', '%3'], True));
  FOnValidateEdit := AValue;
end;

procedure TExtUxGridRowEditor.SetSaveText(const AValue: string);
begin
  FSaveText := AValue;
  Session.ResponseItems.SetConfigItemOrProperty(Self, 'saveText', [AValue]);
end;

class function TExtUxGridRowEditor.JSClassName: string;
begin
  Result := 'Ext.ux.grid.RowEditor';
end;

procedure TExtUxGridRowEditor.InitDefaults; begin
  inherited;
end;

procedure TExtUxGridRowEditor.HandleEvent(const AEvtName : string); begin
  inherited;
  if (AEvtName = 'afteredit') and Assigned(FOnAfterEdit) then
    FOnAfterEdit(TExtUxGridRowEditor(ParamAsObject('Roweditor')), TExtObject(ParamAsObject('Changes')), TExtDataRecord(ParamAsObject('R')), ParamAsInteger('RowIndex'))
  else if (AEvtName = 'beforeedit') and Assigned(FOnBeforeEdit) then
    FOnBeforeEdit(TExtUxGridRowEditor(ParamAsObject('Roweditor')), ParamAsInteger('RowIndex'))
  else if (AEvtName = 'validateedit') and Assigned(FOnValidateEdit) then
    FOnValidateEdit(TExtUxGridRowEditor(ParamAsObject('Roweditor')), TExtObject(ParamAsObject('Changes')), TExtDataRecord(ParamAsObject('R')), ParamAsInteger('RowIndex'));
end;

class function TExtUxGridTableGrid.JSClassName: string;
begin
  Result := 'Ext.ux.grid.TableGrid';
end;

procedure TExtUxGridTableGrid.InitDefaults; begin
  inherited;
end;

end.
