unit eTasks.View.Windows.Metas;

interface

uses
  System.SysUtils,
  System.Types,
  System.UITypes,
  System.Classes,
  System.Variants,
  FMX.Types,
  FMX.Controls,
  FMX.Forms,
  FMX.Graphics,
  FMX.Dialogs,
  FMX.ListView.Types,
  FMX.ListView.Appearances,
  FMX.ListView.Adapters.Base,
  FMX.MultiView,
  FMX.ScrollBox,
  FMX.Memo,
  FMX.StdCtrls,
  FMX.ListView,
  FMX.Controls.Presentation,
  FMX.Edit,
  FMX.Effects,
  FMX.Objects,
  FMX.TabControl,
  FMX.Layouts, eTasks.View.Dialogs.Factory;

type

  Modos = (mEditar, mInserir);

  Filtros = (SemFiltro, PrioridadeAlta, PrioridadeNormal, PrioridadeBaixa);

  TWindows_Metas = class(TForm)
    Img_meta_concluida: TImage;
    Img_meta_concluir: TImage;
    Img_prioridade_alta: TImage;
    Img_prioridade_baixa: TImage;
    Lay_main: TLayout;
    ToolBar_container: TLayout;
    ToolBar: TLayout;
    Linha_titulo: TLine;
    Botao_voltar: TImage;
    botao_ajuda: TImage;
    title_MinhasMetas: TImage;
    title_EditaMeta: TImage;
    title_NovaMeta: TImage;
    TabMetas: TTabControl;
    TabMetas_lista: TTabItem;
    Lay_Topo_lista: TLayout;
    Lay_search: TLayout;
    Rec_caixa_pesquisa: TRectangle;
    ShadowEffect2: TShadowEffect;
    Img_pesquisar: TImage;
    Ed_pesquisa: TEdit;
    Btn_filtro_metas: TImage;
    ListagemMetas: TListView;
    Lay_Lista_vazia: TLayout;
    ListaVaziaFundo: TRectangle;
    Image_sem_Metas: TImage;
    Btn_Add_Meta: TImage;
    Seta_Sem_Metas: TImage;
    TabMetas_exibe: TTabItem;
    Lay_container_meta: TLayout;
    Lay_container_status: TLayout;
    Btn_status: TImage;
    Label_meta: TLabel;
    Lay_descricao_exibe: TLayout;
    Linha_descricao_exibe: TLine;
    Lbl_descricao_title_exibe: TLabel;
    Lay_container_descricao_exibe: TLayout;
    Label_descricao: TLabel;
    Lay_prioridade_exibe: TLayout;
    Linha_categoria_title_exibe: TLine;
    Lbl_prioridade_exibe: TLabel;
    Lay_container_prioridade: TLayout;
    Lay_prioridade_btn: TLayout;
    Fundo_btn_prioridade: TRectangle;
    img_prioridade_btn: TImage;
    Lbl_prioridade_btn: TLabel;
    Btn_apaga_meta: TImage;
    Btn_edita_meta: TImage;
    TabMetas_EditaNovo: TTabItem;
    Lay_meta: TLayout;
    Lay_tarefa_container: TLayout;
    Rec_tarefa: TRectangle;
    ShadowEffect1: TShadowEffect;
    Img_tarefa: TImage;
    Edit_meta: TEdit;
    Lay_descricao_edit: TLayout;
    Linha_descricao_edit: TLine;
    Label_descricao_edit: TLabel;
    Lay_descricao_container: TLayout;
    Lay_descricao_edit_cont: TLayout;
    Rect_descricao: TRectangle;
    sombra_descrcao_container: TShadowEffect;
    Ed_descricao: TMemo;
    Lay_prioridade_edit: TLayout;
    Linha_categoria_edit: TLine;
    Label_prioridade_edit: TLabel;
    Lay_prioridade_container: TLayout;
    Lay_prioridade_alta: TLayout;
    Btn_prioridade_alta: TRectangle;
    Img_btn_prioridade_alta: TImage;
    Lbl_prioridade_btn_alta: TLabel;
    Lay_prioridade_normal: TLayout;
    btn_prioridade_normal: TRectangle;
    Lbl_prioridade_normal_btn: TLabel;
    seletor_Prioridade: TImage;
    Lay_prioridade_baixa: TLayout;
    btn_prioridade_baixa: TRectangle;
    Img_baixa_prioridade: TImage;
    Lbl_prioridade_baixa: TLabel;
    Btn_OK: TImage;
    Menu_filtros: TMultiView;
    Menu_sem_filtro: TLayout;
    lbl_sem_filtro: TLabel;
    Seletor_filtro: TImage;
    Menu_Prioridade_Alta: TLayout;
    Img_menu_prioridade_alta: TImage;
    lbl_menu_prioridade_alta: TLabel;
    Menu_Prioridade_normal: TLayout;
    lbl_prioridade_menu_normal: TLabel;
    Menu_prioridade_Baixa: TLayout;
    Img_menu_prioridade_baixa: TImage;
    lbl_enu_prioridade_baixa: TLabel;
    StyleBook1: TStyleBook;
    ValidaMeta: TTimer;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TabMetasChange(Sender: TObject);
    procedure Botao_voltarClick(Sender: TObject);
    procedure Ed_pesquisaTyping(Sender: TObject);
    procedure Menu_Prioridade_AltaClick(Sender: TObject);
    procedure Menu_prioridade_BaixaClick(Sender: TObject);
    procedure Menu_Prioridade_normalClick(Sender: TObject);
    procedure Menu_sem_filtroClick(Sender: TObject);
    procedure Btn_Add_MetaClick(Sender: TObject);
    procedure Btn_edita_metaClick(Sender: TObject);
    procedure Btn_apaga_metaClick(Sender: TObject);
    procedure Btn_OKClick(Sender: TObject);
    procedure Btn_prioridade_altaClick(Sender: TObject);
    procedure btn_prioridade_normalClick(Sender: TObject);
    procedure btn_prioridade_baixaClick(Sender: TObject);
    procedure Btn_statusClick(Sender: TObject);
    procedure ListagemMetasItemClickEx(const Sender: TObject;
      ItemIndex: Integer; const LocalClickPos: TPointF;
      const ItemObject: TListItemDrawable);
    procedure ListagemMetasPullRefresh(Sender: TObject);
    procedure Edit_metaChange(Sender: TObject);
    procedure Ed_descricaoEnter(Sender: TObject);
    procedure Ed_descricaoExit(Sender: TObject);
  private
    { Private declarations }
    FBtnVoltarClick : TProc;
    FId         : string;
    FMeta       : string;
    FDescricao  : string;
    FStatus     : string;
    FPrioridade : string;
    FModo       : Modos;
    FFiltro     : Filtros;
    Dialogs     : iViewDialogsFactory;
    Loading     : iViewDialogsFactory;
    Procedure Add_meta (id, meta, descricao, status, prioridade: string);
    Procedure ExibePrioridade (prioridade : string);
    Procedure ListarMetas (Filtro : Filtros);
    Procedure NovaMeta;
    Procedure EditaMeta;
    Procedure ExibeMeta;
    Procedure DeletaMeta;
  public
    { Public declarations }
    Function Exibir : TLayout;
    Function BtnVoltarClick(Value : tProc) : Twindows_metas;
  end;

var
  Windows_Metas: TWindows_Metas;

implementation

uses
  eTasks.libraries,
  eTasks.Controller.Interfaces,
  eTasks.Controller.Factory,
  eTasks.View.Windows.main,
  eTasks.View.Dialogs.Messages.Consts;

{$R *.fmx}

{ TWindows_Metas }

procedure TWindows_Metas.Add_meta(id, meta, descricao, status,
  prioridade: string);
begin
  with ListagemMetas.Items.Add do
   begin
     TListItemText(Objects.FindDrawable('txt_titulo')).Text := meta;

     TListItemText(objects.FindDrawable('txt_description')).Text := descricao;

     if status = 'Concluir' then
      begin
        TListItemImage(Objects.FindDrawable('img_status')).Bitmap := Img_meta_concluir.Bitmap;
        TListItemImage(Objects.FindDrawable('img_status')).TagString := 'Concluir';
      end
     else
      begin
        TListItemImage(Objects.FindDrawable('img_status')).Bitmap := Img_meta_concluida.Bitmap;
        TListItemImage(Objects.FindDrawable('img_status')).TagString := 'Concluida';
      end;

     if prioridade = 'Alta' then
      begin
       TListItemImage(Objects.FindDrawable('img_prioridade')).Bitmap := Img_menu_prioridade_alta.Bitmap;
       TListItemImage(Objects.FindDrawable('img_prioridade')).Visible := true;
      end;
     if prioridade = 'Notmal' then
      TListItemImage(Objects.FindDrawable('img_prioridade')).Visible := False;
     if prioridade = 'Baixa' then
      begin
       TListItemImage(Objects.FindDrawable('img_prioridade')).Bitmap := Img_menu_prioridade_baixa.Bitmap;
       TListItemImage(Objects.FindDrawable('img_prioridade')).Visible := true;
      end;

     TagString := id;
   end;
end;

procedure TWindows_Metas.Botao_voltarClick(Sender: TObject);
begin
  if TabMetas.ActiveTab <> TabMetas_lista then
   begin
   if TabMetas.ActiveTab = TabMetas_exibe then
    begin
     TabMetas.GotoVisibleTab(TabMetas_lista.Index);
     ListarMetas(FFiltro);
    end
   else
    begin
      case FModo of
        mEditar: begin
                  ExibeMeta;
                 end;
        mInserir: begin
                   TabMetas.GotoVisibleTab(TabMetas_lista.Index);
                   ListarMetas(FFiltro);
                  end;
      end;
    end;
   end
  else
   FBtnVoltarClick;
end;

function TWindows_Metas.BtnVoltarClick(Value: tProc): Twindows_metas;
begin
  Result := Self;
  FBtnVoltarClick := value;
end;

procedure TWindows_Metas.Btn_Add_MetaClick(Sender: TObject);
begin
  NovaMeta;
end;

procedure TWindows_Metas.Btn_apaga_metaClick(Sender: TObject);
begin
  DeletaMeta;
end;

procedure TWindows_Metas.Btn_edita_metaClick(Sender: TObject);
begin
  EditaMeta;
end;

procedure TWindows_Metas.Btn_OKClick(Sender: TObject);
Var
 Erro      : string;
 FMensagem : tTipoMensagem;
begin
  teTasksLibrary.CustomThread(
                              Procedure ()
                              var
                               msg : string;
                              begin
                                Loading := TViewDialogsMessages.New;
                                case Fmodo of
                                  mEditar:  msg := 'Aguarde... Salvando modificações!';
                                  mInserir: msg := 'Aguarde... Salvando nova Meta!';
                                end;
                                Form_Windows_main.AddObject(
                                                       Loading
                                                        .Loading
                                                         .Mensagem(msg)
                                                         .AcaoLimpa(
                                                                    Procedure()
                                                                    begin
                                                                     Loading := nil;
                                                                    end
                                                                   )
                                                         .Exibe
                                                      );
                              end,
                              Procedure ()
                              begin
                                case FModo of
                                  mEditar:
                                   begin
                                     TControllerFactory
                                       .New
                                         .Metas
                                           .id(Fid)
                                           .Meta(FMeta)
                                           .descricao(FDescricao)
                                           .Prioridade(FPrioridade)
                                           .Status(FStatus)
                                           .EditaMeta(erro);
                                     FMensagem := tpmGoals_Editada;
                                   end;
                                  mInserir:
                                   begin
                                     TControllerFactory
                                       .New
                                         .Metas
                                           .id(Fid)
                                           .Meta(FMeta)
                                           .descricao(FDescricao)
                                           .Prioridade(FPrioridade)
                                           .Status(Fstatus)
                                           .NovaMeta(erro);
                                     FMensagem := tpmGoals_Inserida;
                                   end;
                                end;
                              end,
                              Procedure ()
                              begin
                                Loading.Loading.Fechar;
                                if Erro = '' then
                                 begin
                                   Dialogs := TViewDialogsMessages.New;
                                   Form_Windows_main
                                     .AddObject(
                                                Dialogs.Pai(Form_Windows_main)
                                                 .DialogMessages
                                                   .TipoMensagem(FMensagem)
                                                   .AcaoBotao(
                                                              Procedure ()
                                                              begin
                                                                Dialogs := nil;
                                                                ValidaMeta.Enabled := false;
                                                                case fmodo of
                                                                  mEditar: begin
                                                                             ExibeMeta;
                                                                           end;
                                                                  mInserir: begin
                                                                             TabMetas.GotoVisibleTab(TabMetas_lista.Index);
                                                                             ListarMetas(FFiltro);
                                                                            end;
                                                                end;
                                                              end
                                                             )
                                                   .AcaoFundo(
                                                              Procedure ()
                                                              begin
                                                                Dialogs := nil;
                                                                ValidaMeta.Enabled := false;
                                                                case fmodo of
                                                                  mEditar: begin
                                                                            ExibeMeta;
                                                                           end;
                                                                  mInserir: begin
                                                                             TabMetas.GotoVisibleTab(TabMetas_lista.Index);
                                                                             ListarMetas(FFiltro);
                                                                            end;
                                                                end;
                                                              end
                                                             )
                                                   .Exibe
                                               );
                                 end;

                              end
                             );
end;

procedure TWindows_Metas.Btn_prioridade_altaClick(Sender: TObject);
begin
  seletor_Prioridade.Parent := Lay_prioridade_alta;
  FPrioridade := 'Alta';
end;

procedure TWindows_Metas.btn_prioridade_baixaClick(Sender: TObject);
begin
  seletor_Prioridade.Parent := Lay_prioridade_baixa;
  FPrioridade := 'Baixa';
end;

procedure TWindows_Metas.btn_prioridade_normalClick(Sender: TObject);
begin
  seletor_Prioridade.Parent := Lay_prioridade_normal;
  FPrioridade := 'Normal';
end;

procedure TWindows_Metas.Btn_statusClick(Sender: TObject);
Var ErroStatus : string;
begin
  if Btn_status.TagString = 'Concluir' then
   begin
     TControllerFactory.New.Metas
                             .id(FId)
                             .Status('Concluida')
                             .MudaStatus(ErroStatus);
     if ErroStatus = '' then
      begin
       Btn_status.Bitmap := Img_meta_concluida.Bitmap;
       Btn_status.TagString := 'Concluida';
       FStatus := 'Concluida';
      end;
   end
  else
   begin
     TControllerFactory.New.Metas
                             .id(FId)
                             .Status('Concluir')
                             .MudaStatus(ErroStatus);
     if ErroStatus = '' then
      begin
       Btn_status.Bitmap := Img_meta_concluir.Bitmap;
       Btn_status.TagString := 'Concluir';
       FStatus := 'Concluir';
      end;
   end;
end;

procedure TWindows_Metas.DeletaMeta;
Var
 erro      : string;
 FMensagem : tTipoMensagem;
begin
 Dialogs := TViewDialogsMessages.New;
 Form_Windows_Main
  .AddObject(
             Dialogs.Pai(Form_Windows_Main)
              .DialogYesNo
                .Messagem('Tem certeza que deseja apagar esta Meta?')
                .BtnYes(
                        procedure ()
                        begin
                         Dialogs.DialogYesNo.Fechar;
                         Dialogs := nil;
                         teTasksLibrary
                           .CustomThread(
                                         procedure ()
                                         Begin
                                          Loading := TViewDialogsMessages.New;
                                          Form_Windows_Main
                                           .AddObject(
                                                      Loading
                                                       .Loading
                                                         .Mensagem('Aguarde... Apagando Meta!')
                                                         .AcaoLimpa(
                                                                    procedure ()
                                                                    begin
                                                                      Loading := nil;
                                                                    end
                                                                   )
                                                         .Exibe
                                                     );
                                         End,
                                         procedure ()
                                         Begin
                                          TControllerFactory
                                           .New
                                            .Metas
                                             .id(Fid)
                                              .DeletaMeta(erro);
                                          FMensagem := tpmGoals_Apagada;
                                         End,
                                         procedure ()
                                         Begin
                                          Loading.Loading.Fechar;
                                          if erro = '' then
                                           begin
                                            Dialogs := TViewDialogsMessages.New;
                                            Form_Windows_Main
                                             .AddObject(
                                                        Dialogs.Pai(Form_Windows_Main)
                                                         .DialogMessages
                                                          .TipoMensagem(FMensagem)
                                                          .AcaoBotao(
                                                                     Procedure ()
                                                                     begin
                                                                      Dialogs := nil;
                                                                      TabMetas.GotoVisibleTab(TabMetas_lista.Index);
                                                                      ListarMetas(FFiltro);
                                                                     end
                                                                    )
                                                          .AcaoFundo(
                                                                     Procedure ()
                                                                     begin
                                                                      Dialogs := nil;
                                                                      TabMetas.GotoVisibleTab(TabMetas_lista.Index);
                                                                      ListarMetas(FFiltro);
                                                                     end
                                                                    )
                                                          .Exibe
                                                       );
                                           end;
                                         End
                                        );
                        end
                       )
                .BtnNo(
                       procedure ()
                       begin
                        Dialogs := nil;
                       end
                      )
                .Fundo(
                       procedure ()
                       begin
                        Dialogs := nil;
                       end
                      )
                .Exibe
            );
end;

procedure TWindows_Metas.EditaMeta;
begin
  title_MinhasMetas.Visible := False;
  title_EditaMeta.Visible   := True;
  title_NovaMeta.Visible    := False;
  FModo := mEditar;
  Edit_meta.Text := FMeta;
  if FDescricao = '' then
   begin
    Ed_descricao.Lines.Clear;
    Ed_descricao.FontColor := $FF686868;
    Ed_descricao.Lines.Add('Digite aqui uma descrição para a tarefa');
   end
  else
   begin
    Ed_descricao.Lines.Clear;
    Ed_descricao.FontColor := $FF000000;
    Ed_descricao.Lines.Add(FDescricao);
   end;
  if FPrioridade = 'Baixa' then
   seletor_Prioridade.Parent := Lay_prioridade_baixa;
  if FPrioridade = 'Normal' then
   seletor_Prioridade.Parent := Lay_prioridade_Normal;
  if FPrioridade = 'Alta' then
   seletor_Prioridade.Parent := Lay_prioridade_Alta;
  FModo := mEditar;
  TabMetas.GotoVisibleTab(TabMetas_EditaNovo.Index);
  ValidaMeta.Enabled := true;
end;

procedure TWindows_Metas.Edit_metaChange(Sender: TObject);
begin
  FMeta := Edit_meta.Text;
end;

procedure TWindows_Metas.Ed_descricaoEnter(Sender: TObject);
begin
  if Ed_descricao.Lines.Text = 'Digite aqui uma descrição para a sua meta' then
   begin
     Ed_descricao.FontColor := $FF000000;
     Ed_descricao.Lines.Clear;
   end;
end;

procedure TWindows_Metas.Ed_descricaoExit(Sender: TObject);
begin
  if Ed_descricao.Lines.Text = '' then
   begin
     Ed_descricao.FontColor := $FF686868;
     Ed_descricao.Lines.Text := 'Digite aqui uma descrição para a sua meta';
     FDescricao := '';
   end
  else
   FDescricao := Ed_descricao.Lines.Text;
end;

procedure TWindows_Metas.Ed_pesquisaTyping(Sender: TObject);
begin
  if Ed_pesquisa.Text <> '' then
   ListagemMetas.Items.Filter := Function (Pesquisa: string) : Boolean
                                 Var Contador : integer;
                                 begin
                                   Contador := Pos(Ed_pesquisa.Text.ToUpper, pesquisa.ToUpper);
                                   Result := contador <> 0;
                                 end
  else
   ListagemMetas.Items.Filter := Function (Pesquisa: string) : Boolean
                                 Begin
                                   Result := True;
                                 End;
end;

procedure TWindows_Metas.ExibeMeta;
Var
  Erro    : string;
  Metas : iControllerMetas;
begin

  teTasksLibrary.CustomThread(Procedure()
                              begin
                                Loading := tviewdialogsmessages.New;
                                Form_windows_main.AddObject(
                                                             Loading.Loading
                                                                      .Mensagem('Preparando para exibir mais detalhes da Meta selecionada. Aguarde, por favor... ')
                                                                      .AcaoLimpa(Procedure()
                                                                                 begin
                                                                                  Loading := nil;
                                                                                 end)
                                                                      .Exibe
                                                            );
                              end,
                              Procedure ()
                              begin
                                Metas := tcontrollerfactory.New.Metas;
                                Metas.id(Fid);
                                Metas.ExibeMeta(Erro);
                              end,
                              Procedure ()
                              Begin
                                Loading.Loading.Fechar;

                                title_MinhasMetas.Visible := True;
                                title_EditaMeta.Visible   := False;
                                title_NovaMeta.Visible    := False;

                                FMeta    := Metas.Meta;
                                FDescricao := Metas.descricao;
                                FPrioridade := Metas.Prioridade;
                                Fstatus    := Metas.Status;

                                Label_meta.Text     := FMeta;
                                Label_descricao.Text := FDescricao;
                                ExibePrioridade(FPrioridade);

                                if Fstatus = 'Concluir' then
                                 Btn_status.Bitmap := Img_meta_concluir.Bitmap
                                else
                                 Btn_status.Bitmap := Img_meta_concluida.Bitmap;
                                Btn_status.TagString := Fstatus;

                                TabMetas.GotoVisibleTab(TabMetas_exibe.Index);
                              End
                             );
end;

procedure TWindows_Metas.ExibePrioridade(prioridade: string);
begin
  if prioridade = 'Alta' then
   begin
     Fundo_btn_prioridade.Fill.Color := $FFF44336;
     img_prioridade_btn.Visible := true;
     img_prioridade_btn.Bitmap := Img_menu_prioridade_alta.Bitmap;
     Lbl_prioridade_btn.Text := 'Prioridade Alta';
   end;
  if prioridade = 'Normal' then
   begin
     Fundo_btn_prioridade.Fill.Color := $FF336699;
     img_prioridade_btn.Visible := false;
     Lbl_prioridade_btn.Text := 'Prioridade Normal';
   end;
  if prioridade = 'Baixa' then
   begin
     Fundo_btn_prioridade.Fill.Color := $FF8BC34A;
     img_prioridade_btn.Visible := true;
     img_prioridade_btn.Bitmap := Img_menu_prioridade_baixa.Bitmap;
     Lbl_prioridade_btn.Text := 'Prioridade Baixa';
   end;
end;

function TWindows_Metas.Exibir: TLayout;
begin
  FFiltro := SemFiltro;
  ListarMetas(FFiltro);
  Result := Lay_main;
end;

procedure TWindows_Metas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  //Action := TCloseAction.caFree;
  //Windows_metas := nil;
end;

procedure TWindows_Metas.ListagemMetasItemClickEx(const Sender: TObject;
  ItemIndex: Integer; const LocalClickPos: TPointF;
  const ItemObject: TListItemDrawable);
Var ErroStatus : string;
begin
  if TListView(sender).Selected <> nil then
   begin
     if ItemObject is TListItemImage then
      begin
        if ItemObject.Name = 'img_status' then
         begin
           if ItemObject.TagString = 'Concluir' then
            begin
              TControllerFactory.New.Metas
                                      .id(TListView(sender).Items[ItemIndex].TagString)
                                      .Status('Concluida')
                                      .MudaStatus(ErroStatus);
              if ErroStatus = '' then
               begin
                 TListItemImage(ItemObject).Bitmap := Img_meta_concluida.Bitmap;
                 ItemObject.TagString := 'Concluida';
               end;
            end
           else
            begin
              TControllerFactory.New.Metas
                                      .id(TListView(sender).Items[ItemIndex].TagString)
                                      .Status('Concluir')
                                      .MudaStatus(ErroStatus);
              if ErroStatus = '' then
               begin
                TListItemImage(ItemObject).Bitmap := Img_meta_concluir.Bitmap;
                ItemObject.TagString := 'Concluir';
               end;
            end;
         end
        else
         begin
           FId := ListagemMetas.Items[ItemIndex].TagString;
           ExibeMeta;
         end;
      end
     else
      begin
        FId := ListagemMetas.Items[ItemIndex].TagString;
        ExibeMeta;
      end;
   end;
end;

procedure TWindows_Metas.ListagemMetasPullRefresh(Sender: TObject);
begin
  ListarMetas(FFiltro);
end;

procedure TWindows_Metas.ListarMetas(Filtro: Filtros);
Var
  erro : string;
  Metas : iControllerMetas;
begin
  teTasksLibrary.CustomThread(Procedure()
                              begin
                                Loading := tviewdialogsmessages.New;
                                Form_windows_main.AddObject(
                                                             Loading.Loading
                                                                      .Mensagem('Buscando suas Metas. Aguarde, por favor... ')
                                                                      .AcaoLimpa(Procedure()
                                                                                 begin
                                                                                  Loading := nil;
                                                                                 end)
                                                                      .Exibe
                                                            );
                              end,
                              Procedure ()
                              begin
                                case filtro of
                                  SemFiltro: Metas := tcontrollerFactory.New.Metas.ListarMetas(Nenhuma, erro);
                                  PrioridadeAlta: Metas := tcontrollerFactory.New.Metas.ListarMetas(Alta, erro);
                                  PrioridadeNormal: Metas := tcontrollerFactory.New.Metas.ListarMetas(Normal, erro);
                                  PrioridadeBaixa: Metas := tcontrollerFactory.New.Metas.ListarMetas(Baixa, erro);
                                end;
                              end,
                              Procedure ()
                              Var
                               Meta : TMeta;
                              begin
                                loading.Loading.Fechar;
                                if erro = '' then
                                 begin
                                  listagemMetas.Items.Clear;
                                  Lay_Lista_vazia.Visible := False;
                                  Seta_Sem_Metas.Visible  := False;
                                  if Metas.ListagemMetas.Count <> 0 then
                                   begin
                                    listagemMetas.BeginUpdate;
                                    for Meta in Metas.ListagemMetas.Values do
                                     Add_Meta(meta.id, meta.meta, meta.descricao, meta.status, meta.prioridade);
                                    listagemMetas.EndUpdate;
                                   end
                                  else
                                   begin
                                    Lay_Lista_vazia.Visible := True;
                                    Seta_Sem_Metas.Visible  := True;
                                   end
                                  end
                                else
                                 begin
                                   if erro = 'vazio' then
                                    Begin
                                      listagemMetas.Items.Clear;
                                      Lay_Lista_vazia.Visible := True;
                                      Seta_Sem_Metas.Visible  := True;
                                    End;
                                 end;
                              end);
end;

procedure TWindows_Metas.Menu_Prioridade_AltaClick(Sender: TObject);
begin
  Seletor_filtro.Parent := Menu_Prioridade_Alta;
  Menu_filtros.HideMaster;
  FFiltro := PrioridadeAlta;
  ListarMetas(FFiltro);
end;

procedure TWindows_Metas.Menu_prioridade_BaixaClick(Sender: TObject);
begin
  Seletor_filtro.Parent := Menu_prioridade_Baixa;
  Menu_filtros.HideMaster;
  FFiltro := PrioridadeBaixa;
  ListarMetas(FFiltro);
end;

procedure TWindows_Metas.Menu_Prioridade_normalClick(Sender: TObject);
begin
  Seletor_filtro.Parent := Menu_Prioridade_normal;
  Menu_filtros.HideMaster;
  FFiltro := PrioridadeNormal;
  ListarMetas(FFiltro);
end;

procedure TWindows_Metas.Menu_sem_filtroClick(Sender: TObject);
begin
  Seletor_filtro.Parent := Menu_sem_filtro;
  Menu_filtros.HideMaster;
  FFiltro := SemFiltro;
  ListarMetas(FFiltro);
end;

procedure TWindows_Metas.NovaMeta;
begin
  title_MinhasMetas.Visible := False;
  title_EditaMeta.Visible   := False;
  title_NovaMeta.Visible    := True;
  FModo := mInserir;
  FId         := '';
  FMeta       := '';
  FDescricao  := '';
  FStatus     := 'Concluir';
  FPrioridade := 'Normal';
  Edit_meta.Text := '';
  Ed_descricao.Lines.Clear;
  Ed_descricao.FontColor := $FF686868;
  Ed_descricao.Lines.Add('Digite aqui uma descrição para a sua meta');
  seletor_Prioridade.Parent := Lay_prioridade_normal;
  TabMetas.GotoVisibleTab(TabMetas_EditaNovo.Index);
  ValidaMeta.Enabled := true;
end;

procedure TWindows_Metas.TabMetasChange(Sender: TObject);
begin
  case TabMetas.ActiveTab.Index of
    0: begin
         title_MinhasMetas.Visible := True;
         title_EditaMeta.Visible   := False;
         title_NovaMeta.Visible    := False;
       end;
    1: begin
         title_MinhasMetas.Visible := True;
         title_EditaMeta.Visible   := False;
         title_NovaMeta.Visible    := False;
       end;
    2: begin
         case FModo of
           mEditar: begin
                     title_MinhasMetas.Visible := False;
                     title_EditaMeta.Visible   := True;
                     title_NovaMeta.Visible    := False;
                    end;
           mInserir: begin
                      title_MinhasMetas.Visible := False;
                      title_EditaMeta.Visible   := False;
                      title_NovaMeta.Visible    := True;
                     end;
         end;
       end;
  end;
end;

end.
