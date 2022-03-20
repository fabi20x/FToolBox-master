object frmMain: TfrmMain
  Left = 0
  Top = 0
  Caption = 'FToolbox - Fluxnode Setup 1 Click - Copyright 2022 fabinacci'
  ClientHeight = 772
  ClientWidth = 940
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnl1: TPanel
    Left = 0
    Top = 0
    Width = 940
    Height = 772
    Align = alClient
    TabOrder = 0
    object pnl2: TPanel
      Left = 1
      Top = 730
      Width = 938
      Height = 41
      Align = alBottom
      TabOrder = 0
      DesignSize = (
        938
        41)
      object lblfluxinstallactive: TLabel
        Left = 525
        Top = 12
        Width = 187
        Height = 16
        Caption = 'Flux Installation processing...'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Visible = False
      end
      object lblTipAdress: TLabel
        Left = 170
        Top = 14
        Width = 223
        Height = 13
        Caption = 'double click here to copy tipping adress'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        OnDblClick = lblTipAdressDblClick
      end
      object btnClose: TButton
        Left = 8
        Top = 7
        Width = 75
        Height = 25
        Caption = 'Close'
        TabOrder = 0
        OnClick = btnCloseClick
      end
      object btnClearLog: TButton
        Left = 846
        Top = 6
        Width = 85
        Height = 25
        Anchors = [akRight]
        Caption = 'Clear Log'
        TabOrder = 1
        OnClick = btnClearLogClick
      end
      object btncancelrun: TButton
        Left = 89
        Top = 7
        Width = 75
        Height = 25
        Caption = 'Cancel task'
        TabOrder = 2
        OnClick = btncancelrunClick
      end
      object btnCopyLog: TButton
        Left = 755
        Top = 6
        Width = 85
        Height = 25
        Anchors = [akRight]
        Caption = 'Copy Log'
        TabOrder = 3
        OnClick = btnCopyLogClick
      end
    end
    object AdvOfficePager2: TAdvOfficePager
      Left = 1
      Top = 1
      Width = 938
      Height = 729
      Align = alClient
      ActivePage = AdvOfficePager21
      ButtonSettings.CloseButtonPicture.Data = {
        424DA20400000000000036040000280000000900000009000000010008000000
        00006C000000C30E0000C30E00000001000000010000427B8400DEEFEF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0001000001010100000100
        0000000202000100020200000000000202020002020200000000010002020202
        0200010000000101000202020001010000000100020202020200010000000002
        0202000202020000000000020200010002020000000001000001010100000100
        0000}
      ButtonSettings.PageListButtonPicture.Data = {
        424DA20400000000000036040000280000000900000009000000010008000000
        00006C000000C30E0000C30E00000001000000010000427B8400DEEFEF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0001010101000101010100
        0000010101000200010101000000010100020202000101000000010002020202
        0200010000000002020200020202000000000002020001000202000000000100
        0001010100000100000001010101010101010100000001010101010101010100
        0000}
      ButtonSettings.ScrollButtonPrevPicture.Data = {
        424DA20400000000000036040000280000000900000009000000010008000000
        00006C000000C30E0000C30E00000001000000010000427B8400DEEFEF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0001010101000001010100
        0000010101000202000101000000010100020202000101000000010002020200
        0101010000000002020200010101010000000100020202000101010000000101
        0002020200010100000001010100020200010100000001010101000001010100
        0000}
      ButtonSettings.ScrollButtonNextPicture.Data = {
        424DA20400000000000036040000280000000900000009000000010008000000
        00006C000000C30E0000C30E00000001000000010000427B8400DEEFEF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0001010000010101010100
        0000010002020001010101000000010002020200010101000000010100020202
        0001010000000101010002020200010000000101000202020001010000000100
        0202020001010100000001000202000101010100000001010000010101010100
        0000}
      ButtonSettings.ScrollButtonFirstPicture.Data = {
        424DC60400000000000036040000280000001000000009000000010008000000
        000000000000C40E0000C40E00000001000000010000427B84FFDEEFEFFFFFFF
        FFFF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF01010101010000010101
        0101000001010101010100020200010101000202000101010100020202000101
        0002020200010101000202020001010002020200010101000202020001010002
        0202000101010101000202020001010002020200010101010100020202000101
        0002020200010101010100020200010101000202000101010101010000010101
        010100000101}
      ButtonSettings.ScrollButtonLastPicture.Data = {
        424DC60400000000000036040000280000001000000009000000010008000000
        000000000000C40E0000C40E00000001000000010000427B84FFDEEFEFFFFFFF
        FFFF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF01010000010101010100
        0001010101010100020200010101000202000101010101000202020001010002
        0202000101010101000202020001010002020200010101010100020202000101
        0002020200010101000202020001010002020200010101000202020001010002
        0202000101010100020200010101000202000101010101010000010101010100
        000101010101}
      ButtonSettings.ClosedListButtonPicture.Data = {
        424DA20400000000000036040000280000000900000009000000010008000000
        00006C000000C30E0000C30E00000001000000010000427B8400DEEFEF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0001010101000101010100
        0000010101000200010101000000010100020202000101000000010002020202
        0200010000000002020200020202000000000002020001000202000000000100
        0001010100000100000001010101010101010100000001010101010101010100
        0000}
      ButtonSettings.CloseButtonHint = 'Close'
      ButtonSettings.InsertButtonHint = 'Insert new page'
      ButtonSettings.PageListButtonHint = 'Page List'
      ButtonSettings.ScrollButtonNextHint = 'Next'
      ButtonSettings.ScrollButtonPrevHint = 'Previous'
      ButtonSettings.ScrollButtonFirstHint = 'First'
      ButtonSettings.ScrollButtonLastHint = 'Last'
      ButtonSettings.ClosedListButtonHint = 'Closed Pages'
      ButtonSettings.ButtonSize = 13
      ButtonSettings.FullHeight = True
      DoubleBuffered = True
      TabSettings.ButtonBorder = False
      TabSettings.Rounding = 0
      Text = ''
      ShowShortCutHints = False
      OnChange = AdvOfficePager2Change
      TabOrder = 1
      UIStyle = tsOffice2019White
      NextPictureChanged = False
      PrevPictureChanged = False
      object AdvOfficePager21: TAdvOfficePage
        Left = 1
        Top = 26
        Width = 936
        Height = 701
        Caption = 'Connection / Config'
        DoubleBuffered = True
        PageAppearance.BorderColor = clNone
        PageAppearance.Color = clWhite
        PageAppearance.ColorTo = clWhite
        PageAppearance.ColorMirror = clWhite
        PageAppearance.ColorMirrorTo = clWhite
        PageAppearance.Gradient = ggVertical
        PageAppearance.GradientMirror = ggVertical
        Text = ''
        TabAppearance.BorderColor = clWhite
        TabAppearance.BorderColorHot = clNone
        TabAppearance.BorderColorSelected = clNone
        TabAppearance.BorderColorSelectedHot = clNone
        TabAppearance.BorderColorDisabled = clNone
        TabAppearance.BorderColorDown = clNone
        TabAppearance.Color = clWhite
        TabAppearance.ColorTo = clWhite
        TabAppearance.ColorSelected = clWhite
        TabAppearance.ColorSelectedTo = clWhite
        TabAppearance.ColorDisabled = 15658734
        TabAppearance.ColorDisabledTo = clNone
        TabAppearance.ColorHot = 16316922
        TabAppearance.ColorHotTo = 16316922
        TabAppearance.ColorMirror = clWhite
        TabAppearance.ColorMirrorTo = clWhite
        TabAppearance.ColorMirrorHot = 16316922
        TabAppearance.ColorMirrorHotTo = 16316922
        TabAppearance.ColorMirrorSelected = clWhite
        TabAppearance.ColorMirrorSelectedTo = clWhite
        TabAppearance.ColorMirrorDisabled = 15658734
        TabAppearance.ColorMirrorDisabledTo = clNone
        TabAppearance.Font.Charset = DEFAULT_CHARSET
        TabAppearance.Font.Color = clWindowText
        TabAppearance.Font.Height = -11
        TabAppearance.Font.Name = 'Tahoma'
        TabAppearance.Font.Style = []
        TabAppearance.Gradient = ggVertical
        TabAppearance.GradientMirror = ggVertical
        TabAppearance.GradientHot = ggVertical
        TabAppearance.GradientMirrorHot = ggVertical
        TabAppearance.GradientSelected = ggVertical
        TabAppearance.GradientMirrorSelected = ggVertical
        TabAppearance.GradientDisabled = ggVertical
        TabAppearance.GradientMirrorDisabled = ggVertical
        TabAppearance.TextColor = 4474440
        TabAppearance.TextColorHot = 14916384
        TabAppearance.TextColorSelected = 4474440
        TabAppearance.TextColorDisabled = 7303023
        TabAppearance.ShadowColor = clNone
        TabAppearance.HighLightColor = clNone
        TabAppearance.HighLightColorHot = clNone
        TabAppearance.HighLightColorSelected = clNone
        TabAppearance.HighLightColorSelectedHot = clNone
        TabAppearance.HighLightColorDown = clNone
        TabAppearance.DrawLine = True
        TabAppearance.TextSelectedBold = True
        TabAppearance.BackGround.Color = clWhite
        TabAppearance.BackGround.ColorTo = clWhite
        TabAppearance.BackGround.Direction = gdHorizontal
        object btnreboot: TButton
          Left = 308
          Top = 37
          Width = 121
          Height = 25
          Caption = 'Reboot server'
          Enabled = False
          TabOrder = 6
          OnClick = btnrebootClick
        end
        object btnServerLogin: TButton
          Left = 308
          Top = 65
          Width = 121
          Height = 25
          Caption = 'Please Log In'
          Enabled = False
          TabOrder = 4
          OnClick = btnServerLoginClick
        end
        object edtPort: TAdvEdit
          Left = 321
          Top = 13
          Width = 33
          Height = 21
          EmptyTextStyle = []
          FlatLineColor = 11250603
          FocusColor = clWindow
          FocusFontColor = 3881787
          LabelCaption = 'Port'
          LabelPosition = lpLeftCenter
          LabelFont.Charset = DEFAULT_CHARSET
          LabelFont.Color = clWindowText
          LabelFont.Height = -11
          LabelFont.Name = 'Tahoma'
          LabelFont.Style = []
          Lookup.Font.Charset = DEFAULT_CHARSET
          Lookup.Font.Color = clWindowText
          Lookup.Font.Height = -11
          Lookup.Font.Name = 'Arial'
          Lookup.Font.Style = []
          Lookup.Separator = ';'
          Color = clWindow
          TabOrder = 1
          Text = '22'
          Visible = True
          Version = '4.0.0.0'
        end
        object edtroot: TAdvEdit
          Left = 170
          Top = 40
          Width = 121
          Height = 21
          EmptyTextStyle = []
          FlatLineColor = 11250603
          FocusColor = clWindow
          FocusFontColor = 3881787
          LabelCaption = 'root user'
          LabelPosition = lpLeftCenter
          LabelFont.Charset = DEFAULT_CHARSET
          LabelFont.Color = clWindowText
          LabelFont.Height = -11
          LabelFont.Name = 'Tahoma'
          LabelFont.Style = []
          Lookup.Font.Charset = DEFAULT_CHARSET
          Lookup.Font.Color = clWindowText
          Lookup.Font.Height = -11
          Lookup.Font.Name = 'Arial'
          Lookup.Font.Style = []
          Lookup.Separator = ';'
          Color = clWindow
          TabOrder = 2
          Text = 'root'
          Visible = True
          Version = '4.0.0.0'
        end
        object edtrootpw: TAdvEdit
          Left = 170
          Top = 66
          Width = 121
          Height = 21
          EditType = etPassword
          EmptyTextStyle = []
          FlatLineColor = 11250603
          FocusColor = clWindow
          FocusFontColor = 3881787
          LabelCaption = 'root password'
          LabelPosition = lpLeftCenter
          LabelFont.Charset = DEFAULT_CHARSET
          LabelFont.Color = clWindowText
          LabelFont.Height = -11
          LabelFont.Name = 'Tahoma'
          LabelFont.Style = []
          Lookup.Font.Charset = DEFAULT_CHARSET
          Lookup.Font.Color = clWindowText
          Lookup.Font.Height = -11
          Lookup.Font.Name = 'Arial'
          Lookup.Font.Style = []
          Lookup.Separator = ';'
          CanUndo = False
          Color = clWindow
          PasswordChar = '*'
          TabOrder = 3
          Text = ''
          Visible = True
          Version = '4.0.0.0'
        end
        object edtServerIP: TAdvEdit
          Left = 170
          Top = 13
          Width = 121
          Height = 21
          EmptyTextStyle = []
          FlatLineColor = 11250603
          FocusColor = clWindow
          FocusFontColor = 3881787
          LabelCaption = 'Server IP'
          LabelPosition = lpLeftCenter
          LabelFont.Charset = DEFAULT_CHARSET
          LabelFont.Color = clWindowText
          LabelFont.Height = -11
          LabelFont.Name = 'Tahoma'
          LabelFont.Style = []
          Lookup.Font.Charset = DEFAULT_CHARSET
          Lookup.Font.Color = clWindowText
          Lookup.Font.Height = -11
          Lookup.Font.Name = 'Arial'
          Lookup.Font.Style = []
          Lookup.Separator = ';'
          Color = clWindow
          TabOrder = 0
          Text = ''
          Visible = True
          Version = '4.0.0.0'
        end
        object grp1: TGroupBox
          Left = 3
          Top = 92
          Width = 512
          Height = 605
          Caption = 'Node configuration'
          Enabled = False
          TabOrder = 5
          object lbl1: TLabel
            Left = 11
            Top = 374
            Width = 407
            Height = 13
            Caption = 
              'If you want to set up alerts, please check one of the boxes abov' +
              'e and fill in the data'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsUnderline]
            ParentFont = False
          end
          object lbl2: TLabel
            Left = 11
            Top = 299
            Width = 377
            Height = 13
            Caption = 
              'If you run a Nimbus or stratus node you are eligible for additio' +
              'nal KDA rewards'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsUnderline]
            ParentFont = False
          end
          object lbl3: TLabel
            Left = 11
            Top = 72
            Width = 328
            Height = 13
            Caption = 
              'Please fill in the information from within Zelcore -> Fluxnodes ' +
              '-> Edit'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsUnderline]
            ParentFont = False
          end
          object lbl4: TLabel
            Left = 11
            Top = 172
            Width = 311
            Height = 13
            Caption = 
              'Please fill in your Zel ID that can be found within Zelcore -> A' +
              'pps'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsUnderline]
            ParentFont = False
          end
          object lbl5: TLabel
            Left = 11
            Top = 221
            Width = 336
            Height = 13
            Caption = 
              'Please fill in a name for the node and your useraccount within t' +
              'he SSH'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsUnderline]
            ParentFont = False
          end
          object btnCreateScripts: TButton
            Left = 351
            Top = 445
            Width = 97
            Height = 25
            Caption = 'Create script'
            TabOrder = 15
            Visible = False
            OnClick = btnCreateScriptsClick
          end
          object btnShellExec: TButton
            Left = 40
            Top = 508
            Width = 97
            Height = 25
            Caption = 'Install node'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 16
            OnClick = btnShellExecClick
          end
          object edtDiscordUserID: TAdvEdit
            Left = 120
            Top = 477
            Width = 209
            Height = 21
            AllowNumericNullValue = True
            EditType = etNumeric
            EmptyTextStyle = []
            FlatLineColor = 11250603
            FocusColor = clWindow
            FocusFontColor = 3881787
            LabelCaption = 'Discord User ID'
            LabelPosition = lpLeftCenter
            LabelFont.Charset = DEFAULT_CHARSET
            LabelFont.Color = clWindowText
            LabelFont.Height = -11
            LabelFont.Name = 'Tahoma'
            LabelFont.Style = []
            Lookup.Font.Charset = DEFAULT_CHARSET
            Lookup.Font.Color = clWindowText
            Lookup.Font.Height = -11
            Lookup.Font.Name = 'Arial'
            Lookup.Font.Style = []
            Lookup.Separator = ';'
            Color = clWindow
            Enabled = False
            TabOrder = 14
            Text = '0'
            Visible = True
            Version = '4.0.0.0'
          end
          object edtDiscordWebhookURL: TAdvEdit
            Left = 120
            Top = 447
            Width = 209
            Height = 21
            EmptyTextStyle = []
            FlatLineColor = 11250603
            FocusColor = clWindow
            FocusFontColor = 3881787
            LabelCaption = 'Discord Webhook URL'
            LabelPosition = lpLeftCenter
            LabelFont.Charset = DEFAULT_CHARSET
            LabelFont.Color = clWindowText
            LabelFont.Height = -11
            LabelFont.Name = 'Tahoma'
            LabelFont.Style = []
            Lookup.Font.Charset = DEFAULT_CHARSET
            Lookup.Font.Color = clWindowText
            Lookup.Font.Height = -11
            Lookup.Font.Name = 'Arial'
            Lookup.Font.Style = []
            Lookup.Separator = ';'
            Color = clWindow
            Enabled = False
            TabOrder = 13
            Text = ''
            Visible = True
            Version = '4.0.0.0'
          end
          object edtindex: TAdvEdit
            Left = 120
            Top = 145
            Width = 33
            Height = 21
            EditType = etNumeric
            EmptyTextStyle = []
            FlatLineColor = 11250603
            FocusColor = clWindow
            FocusFontColor = 3881787
            MaxValue = 9
            LabelCaption = 'Index'
            LabelPosition = lpLeftCenter
            LabelFont.Charset = DEFAULT_CHARSET
            LabelFont.Color = clWindowText
            LabelFont.Height = -11
            LabelFont.Name = 'Tahoma'
            LabelFont.Style = []
            Lookup.Font.Charset = DEFAULT_CHARSET
            Lookup.Font.Color = clWindowText
            Lookup.Font.Height = -11
            Lookup.Font.Name = 'Arial'
            Lookup.Font.Style = []
            Lookup.Separator = ';'
            Color = clWindow
            MaxLength = 1
            TabOrder = 4
            Text = '0'
            Visible = True
            Version = '4.0.0.0'
          end
          object edtKDAAdress: TAdvEdit
            Left = 120
            Top = 318
            Width = 313
            Height = 21
            EmptyTextStyle = []
            FlatLineColor = 11250603
            FocusColor = clWindow
            FocusFontColor = 3881787
            LabelCaption = 'Kadena adress'
            LabelPosition = lpLeftCenter
            LabelFont.Charset = DEFAULT_CHARSET
            LabelFont.Color = clWindowText
            LabelFont.Height = -11
            LabelFont.Name = 'Tahoma'
            LabelFont.Style = []
            Lookup.Font.Charset = DEFAULT_CHARSET
            Lookup.Font.Color = clWindowText
            Lookup.Font.Height = -11
            Lookup.Font.Name = 'Arial'
            Lookup.Font.Style = []
            Lookup.Separator = ';'
            Color = clWindow
            Enabled = False
            TabOrder = 9
            Text = ''
            Visible = True
            Version = '4.0.0.0'
          end
          object edtKDAChain: TAdvEdit
            Left = 120
            Top = 345
            Width = 33
            Height = 21
            EditType = etNumeric
            EmptyTextStyle = []
            FlatLineColor = 11250603
            FocusColor = clWindow
            FocusFontColor = 3881787
            MaxValue = 9
            LabelCaption = 'Kadena chain'
            LabelPosition = lpLeftCenter
            LabelFont.Charset = DEFAULT_CHARSET
            LabelFont.Color = clWindowText
            LabelFont.Height = -11
            LabelFont.Name = 'Tahoma'
            LabelFont.Style = []
            Lookup.Font.Charset = DEFAULT_CHARSET
            Lookup.Font.Color = clWindowText
            Lookup.Font.Height = -11
            Lookup.Font.Name = 'Arial'
            Lookup.Font.Style = []
            Lookup.Separator = ';'
            Color = clWindow
            Enabled = False
            TabOrder = 10
            Text = '0'
            Visible = True
            Version = '4.0.0.0'
          end
          object edtNodename: TAdvEdit
            Left = 120
            Top = 242
            Width = 209
            Height = 21
            EmptyTextStyle = []
            FlatLineColor = 11250603
            FocusColor = clWindow
            FocusFontColor = 3881787
            LabelCaption = 'Node name'
            LabelPosition = lpLeftCenter
            LabelFont.Charset = DEFAULT_CHARSET
            LabelFont.Color = clWindowText
            LabelFont.Height = -11
            LabelFont.Name = 'Tahoma'
            LabelFont.Style = []
            Lookup.Font.Charset = DEFAULT_CHARSET
            Lookup.Font.Color = clWindowText
            Lookup.Font.Height = -11
            Lookup.Font.Name = 'Arial'
            Lookup.Font.Style = []
            Lookup.Separator = ';'
            Color = clWindow
            TabOrder = 6
            Text = ''
            Visible = True
            Version = '4.0.0.0'
          end
          object edtTelegramBotToken: TAdvEdit
            Left = 120
            Top = 393
            Width = 313
            Height = 21
            AllowNumericNullValue = True
            EmptyTextStyle = []
            FlatLineColor = 11250603
            FocusColor = clWindow
            FocusFontColor = 3881787
            LabelCaption = 'Telegram Bot Token'
            LabelPosition = lpLeftCenter
            LabelFont.Charset = DEFAULT_CHARSET
            LabelFont.Color = clWindowText
            LabelFont.Height = -11
            LabelFont.Name = 'Tahoma'
            LabelFont.Style = []
            Lookup.Font.Charset = DEFAULT_CHARSET
            Lookup.Font.Color = clWindowText
            Lookup.Font.Height = -11
            Lookup.Font.Name = 'Arial'
            Lookup.Font.Style = []
            Lookup.Separator = ';'
            Color = clWindow
            Enabled = False
            TabOrder = 11
            Text = '0'
            Visible = True
            Version = '4.0.0.0'
          end
          object edtTelegramChatID: TAdvEdit
            Left = 120
            Top = 420
            Width = 209
            Height = 21
            AllowNumericNullValue = True
            EditType = etNumeric
            EmptyTextStyle = []
            FlatLineColor = 11250603
            FocusColor = clWindow
            FocusFontColor = 3881787
            LabelCaption = 'Telegram Chat ID'
            LabelPosition = lpLeftCenter
            LabelFont.Charset = DEFAULT_CHARSET
            LabelFont.Color = clWindowText
            LabelFont.Height = -11
            LabelFont.Name = 'Tahoma'
            LabelFont.Style = []
            Lookup.Font.Charset = DEFAULT_CHARSET
            Lookup.Font.Color = clWindowText
            Lookup.Font.Height = -11
            Lookup.Font.Name = 'Arial'
            Lookup.Font.Style = []
            Lookup.Separator = ';'
            Color = clWindow
            Enabled = False
            TabOrder = 12
            Text = '0'
            Visible = True
            Version = '4.0.0.0'
          end
          object edtUsername: TAdvEdit
            Left = 120
            Top = 269
            Width = 145
            Height = 21
            EmptyTextStyle = []
            FlatLineColor = 11250603
            FocusColor = clWindow
            FocusFontColor = 3881787
            LabelCaption = 'Username'
            LabelPosition = lpLeftCenter
            LabelFont.Charset = DEFAULT_CHARSET
            LabelFont.Color = clWindowText
            LabelFont.Height = -11
            LabelFont.Name = 'Tahoma'
            LabelFont.Style = []
            Lookup.Font.Charset = DEFAULT_CHARSET
            Lookup.Font.Color = clWindowText
            Lookup.Font.Height = -11
            Lookup.Font.Name = 'Arial'
            Lookup.Font.Style = []
            Lookup.Separator = ';'
            CharCase = ecLowerCase
            Color = clWindow
            TabOrder = 7
            Text = ''
            Visible = True
            Version = '4.0.0.0'
          end
          object edtxid: TAdvEdit
            Left = 120
            Top = 118
            Width = 389
            Height = 21
            EmptyTextStyle = []
            FlatLineColor = 11250603
            FocusColor = clWindow
            FocusFontColor = 3881787
            LabelCaption = 'Tx ID'
            LabelPosition = lpLeftCenter
            LabelFont.Charset = DEFAULT_CHARSET
            LabelFont.Color = clWindowText
            LabelFont.Height = -11
            LabelFont.Name = 'Tahoma'
            LabelFont.Style = []
            Lookup.Font.Charset = DEFAULT_CHARSET
            Lookup.Font.Color = clWindowText
            Lookup.Font.Height = -11
            Lookup.Font.Name = 'Arial'
            Lookup.Font.Style = []
            Lookup.Separator = ';'
            Color = clWindow
            MaxLength = 64
            TabOrder = 3
            Text = ''
            Visible = True
            OnExit = edtxidExit
            Version = '4.0.0.0'
          end
          object edtZelID: TAdvEdit
            Left = 119
            Top = 193
            Width = 218
            Height = 21
            EmptyTextStyle = []
            FlatLineColor = 11250603
            FocusColor = clWindow
            FocusFontColor = 3881787
            LabelCaption = 'Zel ID'
            LabelPosition = lpLeftCenter
            LabelFont.Charset = DEFAULT_CHARSET
            LabelFont.Color = clWindowText
            LabelFont.Height = -11
            LabelFont.Name = 'Tahoma'
            LabelFont.Style = []
            Lookup.Font.Charset = DEFAULT_CHARSET
            Lookup.Font.Color = clWindowText
            Lookup.Font.Height = -11
            Lookup.Font.Name = 'Arial'
            Lookup.Font.Style = []
            Lookup.Separator = ';'
            Color = clWindow
            MaxLength = 34
            TabOrder = 5
            Text = ''
            Visible = True
            OnExit = edtZelIDExit
            Version = '4.0.0.0'
          end
          object edtZelprivatekey: TAdvEdit
            Left = 120
            Top = 91
            Width = 389
            Height = 21
            EmptyTextStyle = []
            FlatLineColor = 11250603
            FocusColor = clWindow
            FocusFontColor = 3881787
            LabelCaption = 'Zelnode Identity key'
            LabelPosition = lpLeftCenter
            LabelFont.Charset = DEFAULT_CHARSET
            LabelFont.Color = clWindowText
            LabelFont.Height = -11
            LabelFont.Name = 'Tahoma'
            LabelFont.Style = []
            Lookup.Font.Charset = DEFAULT_CHARSET
            Lookup.Font.Color = clWindowText
            Lookup.Font.Height = -11
            Lookup.Font.Name = 'Arial'
            Lookup.Font.Style = []
            Lookup.Separator = ';'
            Color = clWindow
            MaxLength = 51
            TabOrder = 2
            Text = ''
            Visible = True
            OnExit = edtZelprivatekeyExit
            Version = '4.0.0.0'
          end
          object rgAlerts: TRadioGroup
            Left = 202
            Top = 17
            Width = 206
            Height = 49
            Caption = 'Alerts'
            Columns = 3
            ItemIndex = 0
            Items.Strings = (
              'None'
              'Discord'
              'Telegram')
            TabOrder = 1
            OnClick = rgAlertsClick
          end
          object rgtier: TRadioGroup
            Left = 8
            Top = 17
            Width = 185
            Height = 49
            Caption = 'Select Tier'
            Columns = 3
            ItemIndex = 0
            Items.Strings = (
              'Cumulus'
              'Nimbus'
              'Stratus')
            TabOrder = 0
            OnClick = rgtierClick
          end
          object btnSendCommands: TButton
            Left = 351
            Top = 476
            Width = 97
            Height = 25
            Caption = 'Send SSH'
            TabOrder = 17
            Visible = False
            OnClick = btnSendCommandsClick
          end
          object edtManualSSH: TAdvEdit
            Left = 119
            Top = 576
            Width = 209
            Height = 21
            EmptyTextStyle = []
            FlatLineColor = 11250603
            FocusColor = clWindow
            FocusFontColor = 3881787
            LabelCaption = 'manual SSH'
            LabelPosition = lpLeftCenter
            LabelFont.Charset = DEFAULT_CHARSET
            LabelFont.Color = clWindowText
            LabelFont.Height = -11
            LabelFont.Name = 'Tahoma'
            LabelFont.Style = []
            Lookup.Font.Charset = DEFAULT_CHARSET
            Lookup.Font.Color = clWindowText
            Lookup.Font.Height = -11
            Lookup.Font.Name = 'Arial'
            Lookup.Font.Style = []
            Lookup.Separator = ';'
            Color = clWindow
            TabOrder = 18
            Text = ''
            Visible = True
            Version = '4.0.0.0'
          end
          object btnmanSSH: TButton
            Left = 339
            Top = 574
            Width = 97
            Height = 25
            Caption = 'Send SSH'
            TabOrder = 19
            OnClick = btnmanSSHClick
          end
          object btnBenchmark: TButton
            Left = 149
            Top = 508
            Width = 97
            Height = 25
            Caption = 'Run benchmark'
            TabOrder = 20
            OnClick = btnBenchmarkClick
          end
          object edtUserpw: TAdvEdit
            Left = 327
            Top = 269
            Width = 106
            Height = 21
            EditType = etPassword
            EmptyTextStyle = []
            FlatLineColor = 11250603
            FocusColor = clWindow
            FocusFontColor = 3881787
            LabelCaption = 'Password'
            LabelPosition = lpLeftCenter
            LabelFont.Charset = DEFAULT_CHARSET
            LabelFont.Color = clWindowText
            LabelFont.Height = -11
            LabelFont.Name = 'Tahoma'
            LabelFont.Style = []
            Lookup.Font.Charset = DEFAULT_CHARSET
            Lookup.Font.Color = clWindowText
            Lookup.Font.Height = -11
            Lookup.Font.Name = 'Arial'
            Lookup.Font.Style = []
            Lookup.Separator = ';'
            CanUndo = False
            Color = clWindow
            PasswordChar = '*'
            TabOrder = 8
            Text = ''
            Visible = True
            Version = '4.0.0.0'
          end
          object edtcustombootstrap: TAdvEdit
            Left = 120
            Top = 546
            Width = 209
            Height = 21
            EmptyTextStyle = []
            FlatLineColor = 11250603
            FocusColor = clWindow
            FocusFontColor = 3881787
            LabelCaption = 'custom bootstrap src'
            LabelPosition = lpLeftCenter
            LabelFont.Charset = DEFAULT_CHARSET
            LabelFont.Color = clWindowText
            LabelFont.Height = -11
            LabelFont.Name = 'Tahoma'
            LabelFont.Style = []
            Lookup.Font.Charset = DEFAULT_CHARSET
            Lookup.Font.Color = clWindowText
            Lookup.Font.Height = -11
            Lookup.Font.Name = 'Arial'
            Lookup.Font.Style = []
            Lookup.Separator = ';'
            Color = clWindow
            Enabled = False
            TabOrder = 21
            Text = ''
            Visible = True
            Version = '4.0.0.0'
          end
          object btnrunorgScript: TButton
            Left = 259
            Top = 508
            Width = 97
            Height = 25
            Caption = 'run orig. script'
            TabOrder = 22
            OnClick = btnrunorgScriptClick
          end
          object btnAddToManagement: TButton
            Left = 370
            Top = 508
            Width = 113
            Height = 25
            Caption = 'add to management'
            TabOrder = 23
            OnClick = btnAddToManagementClick
          end
        end
        object AdvOfficePager1: TAdvOfficePager
          Left = 521
          Top = 2
          Width = 413
          Height = 697
          Align = alRight
          Anchors = [akLeft, akTop, akRight, akBottom]
          ActivePage = AdvOfficePager11
          ButtonSettings.CloseButtonPicture.Data = {
            424DA20400000000000036040000280000000900000009000000010008000000
            00006C000000C30E0000C30E00000001000000010000427B8400DEEFEF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0001000001010100000100
            0000000202000100020200000000000202020002020200000000010002020202
            0200010000000101000202020001010000000100020202020200010000000002
            0202000202020000000000020200010002020000000001000001010100000100
            0000}
          ButtonSettings.PageListButtonPicture.Data = {
            424DA20400000000000036040000280000000900000009000000010008000000
            00006C000000C30E0000C30E00000001000000010000427B8400DEEFEF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0001010101000101010100
            0000010101000200010101000000010100020202000101000000010002020202
            0200010000000002020200020202000000000002020001000202000000000100
            0001010100000100000001010101010101010100000001010101010101010100
            0000}
          ButtonSettings.ScrollButtonPrevPicture.Data = {
            424DA20400000000000036040000280000000900000009000000010008000000
            00006C000000C30E0000C30E00000001000000010000427B8400DEEFEF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0001010101000001010100
            0000010101000202000101000000010100020202000101000000010002020200
            0101010000000002020200010101010000000100020202000101010000000101
            0002020200010100000001010100020200010100000001010101000001010100
            0000}
          ButtonSettings.ScrollButtonNextPicture.Data = {
            424DA20400000000000036040000280000000900000009000000010008000000
            00006C000000C30E0000C30E00000001000000010000427B8400DEEFEF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0001010000010101010100
            0000010002020001010101000000010002020200010101000000010100020202
            0001010000000101010002020200010000000101000202020001010000000100
            0202020001010100000001000202000101010100000001010000010101010100
            0000}
          ButtonSettings.ScrollButtonFirstPicture.Data = {
            424DC60400000000000036040000280000001000000009000000010008000000
            000000000000C40E0000C40E00000001000000010000427B84FFDEEFEFFFFFFF
            FFFF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF01010101010000010101
            0101000001010101010100020200010101000202000101010100020202000101
            0002020200010101000202020001010002020200010101000202020001010002
            0202000101010101000202020001010002020200010101010100020202000101
            0002020200010101010100020200010101000202000101010101010000010101
            010100000101}
          ButtonSettings.ScrollButtonLastPicture.Data = {
            424DC60400000000000036040000280000001000000009000000010008000000
            000000000000C40E0000C40E00000001000000010000427B84FFDEEFEFFFFFFF
            FFFF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF01010000010101010100
            0001010101010100020200010101000202000101010101000202020001010002
            0202000101010101000202020001010002020200010101010100020202000101
            0002020200010101000202020001010002020200010101000202020001010002
            0202000101010100020200010101000202000101010101010000010101010100
            000101010101}
          ButtonSettings.ClosedListButtonPicture.Data = {
            424DA20400000000000036040000280000000900000009000000010008000000
            00006C000000C30E0000C30E00000001000000010000427B8400DEEFEF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0001010101000101010100
            0000010101000200010101000000010100020202000101000000010002020202
            0200010000000002020200020202000000000002020001000202000000000100
            0001010100000100000001010101010101010100000001010101010101010100
            0000}
          ButtonSettings.CloseButtonHint = 'Close'
          ButtonSettings.InsertButtonHint = 'Insert new page'
          ButtonSettings.PageListButtonHint = 'Page List'
          ButtonSettings.ScrollButtonNextHint = 'Next'
          ButtonSettings.ScrollButtonPrevHint = 'Previous'
          ButtonSettings.ScrollButtonFirstHint = 'First'
          ButtonSettings.ScrollButtonLastHint = 'Last'
          ButtonSettings.ClosedListButtonHint = 'Closed Pages'
          ButtonSettings.ButtonSize = 13
          ButtonSettings.FullHeight = True
          DoubleBuffered = True
          TabSettings.ButtonBorder = False
          TabSettings.Rounding = 0
          Text = ''
          ShowShortCutHints = False
          OnChange = AdvOfficePager1Change
          TabOrder = 8
          UIStyle = tsOffice2019White
          NextPictureChanged = False
          PrevPictureChanged = False
          object AdvOfficePager11: TAdvOfficePage
            Left = 1
            Top = 26
            Width = 411
            Height = 669
            Caption = 'Log'
            DoubleBuffered = True
            PageAppearance.BorderColor = clNone
            PageAppearance.Color = clWhite
            PageAppearance.ColorTo = clWhite
            PageAppearance.ColorMirror = clWhite
            PageAppearance.ColorMirrorTo = clWhite
            PageAppearance.Gradient = ggVertical
            PageAppearance.GradientMirror = ggVertical
            Text = ''
            TabAppearance.BorderColor = clWhite
            TabAppearance.BorderColorHot = clNone
            TabAppearance.BorderColorSelected = clNone
            TabAppearance.BorderColorSelectedHot = clNone
            TabAppearance.BorderColorDisabled = clNone
            TabAppearance.BorderColorDown = clNone
            TabAppearance.Color = clWhite
            TabAppearance.ColorTo = clWhite
            TabAppearance.ColorSelected = clWhite
            TabAppearance.ColorSelectedTo = clWhite
            TabAppearance.ColorDisabled = 15658734
            TabAppearance.ColorDisabledTo = clNone
            TabAppearance.ColorHot = 16316922
            TabAppearance.ColorHotTo = 16316922
            TabAppearance.ColorMirror = clWhite
            TabAppearance.ColorMirrorTo = clWhite
            TabAppearance.ColorMirrorHot = 16316922
            TabAppearance.ColorMirrorHotTo = 16316922
            TabAppearance.ColorMirrorSelected = clWhite
            TabAppearance.ColorMirrorSelectedTo = clWhite
            TabAppearance.ColorMirrorDisabled = 15658734
            TabAppearance.ColorMirrorDisabledTo = clNone
            TabAppearance.Font.Charset = DEFAULT_CHARSET
            TabAppearance.Font.Color = clWindowText
            TabAppearance.Font.Height = -11
            TabAppearance.Font.Name = 'Tahoma'
            TabAppearance.Font.Style = []
            TabAppearance.Gradient = ggVertical
            TabAppearance.GradientMirror = ggVertical
            TabAppearance.GradientHot = ggVertical
            TabAppearance.GradientMirrorHot = ggVertical
            TabAppearance.GradientSelected = ggVertical
            TabAppearance.GradientMirrorSelected = ggVertical
            TabAppearance.GradientDisabled = ggVertical
            TabAppearance.GradientMirrorDisabled = ggVertical
            TabAppearance.TextColor = 4474440
            TabAppearance.TextColorHot = 14916384
            TabAppearance.TextColorSelected = 4474440
            TabAppearance.TextColorDisabled = 7303023
            TabAppearance.ShadowColor = clNone
            TabAppearance.HighLightColor = clNone
            TabAppearance.HighLightColorHot = clNone
            TabAppearance.HighLightColorSelected = clNone
            TabAppearance.HighLightColorSelectedHot = clNone
            TabAppearance.HighLightColorDown = clNone
            TabAppearance.DrawLine = True
            TabAppearance.TextSelectedBold = True
            TabAppearance.BackGround.Color = clWhite
            TabAppearance.BackGround.ColorTo = clWhite
            TabAppearance.BackGround.Direction = gdHorizontal
            object mmo1: TMemo
              Left = 2
              Top = 2
              Width = 407
              Height = 665
              Align = alClient
              ReadOnly = True
              ScrollBars = ssVertical
              TabOrder = 0
            end
          end
        end
        object btnAccount: TButton
          Left = 7
          Top = 6
          Width = 75
          Height = 25
          Caption = 'Account'
          TabOrder = 7
          OnClick = btnAccountClick
        end
        object btnClear: TButton
          Left = 7
          Top = 34
          Width = 75
          Height = 25
          Caption = 'Clear all fields'
          TabOrder = 9
          OnClick = btnClearClick
        end
        object btnUpdate: TButton
          Left = 7
          Top = 62
          Width = 75
          Height = 25
          Caption = 'check Update'
          TabOrder = 10
          OnClick = btnUpdateClick
        end
      end
      object AdvOfficePager22: TAdvOfficePage
        Left = 1
        Top = 26
        Width = 936
        Height = 701
        Caption = 'Server Management'
        DoubleBuffered = True
        PageAppearance.BorderColor = clNone
        PageAppearance.Color = clWhite
        PageAppearance.ColorTo = clWhite
        PageAppearance.ColorMirror = clWhite
        PageAppearance.ColorMirrorTo = clWhite
        PageAppearance.Gradient = ggVertical
        PageAppearance.GradientMirror = ggVertical
        Text = ''
        TabAppearance.BorderColor = clWhite
        TabAppearance.BorderColorHot = clNone
        TabAppearance.BorderColorSelected = clNone
        TabAppearance.BorderColorSelectedHot = clNone
        TabAppearance.BorderColorDisabled = clNone
        TabAppearance.BorderColorDown = clNone
        TabAppearance.Color = clWhite
        TabAppearance.ColorTo = clWhite
        TabAppearance.ColorSelected = clWhite
        TabAppearance.ColorSelectedTo = clWhite
        TabAppearance.ColorDisabled = 15658734
        TabAppearance.ColorDisabledTo = clNone
        TabAppearance.ColorHot = 16316922
        TabAppearance.ColorHotTo = 16316922
        TabAppearance.ColorMirror = clWhite
        TabAppearance.ColorMirrorTo = clWhite
        TabAppearance.ColorMirrorHot = 16316922
        TabAppearance.ColorMirrorHotTo = 16316922
        TabAppearance.ColorMirrorSelected = clWhite
        TabAppearance.ColorMirrorSelectedTo = clWhite
        TabAppearance.ColorMirrorDisabled = 15658734
        TabAppearance.ColorMirrorDisabledTo = clNone
        TabAppearance.Font.Charset = DEFAULT_CHARSET
        TabAppearance.Font.Color = clWindowText
        TabAppearance.Font.Height = -11
        TabAppearance.Font.Name = 'Tahoma'
        TabAppearance.Font.Style = []
        TabAppearance.Gradient = ggVertical
        TabAppearance.GradientMirror = ggVertical
        TabAppearance.GradientHot = ggVertical
        TabAppearance.GradientMirrorHot = ggVertical
        TabAppearance.GradientSelected = ggVertical
        TabAppearance.GradientMirrorSelected = ggVertical
        TabAppearance.GradientDisabled = ggVertical
        TabAppearance.GradientMirrorDisabled = ggVertical
        TabAppearance.TextColor = 4474440
        TabAppearance.TextColorHot = 14916384
        TabAppearance.TextColorSelected = 4474440
        TabAppearance.TextColorDisabled = 7303023
        TabAppearance.ShadowColor = clNone
        TabAppearance.HighLightColor = clNone
        TabAppearance.HighLightColorHot = clNone
        TabAppearance.HighLightColorSelected = clNone
        TabAppearance.HighLightColorSelectedHot = clNone
        TabAppearance.HighLightColorDown = clNone
        TabAppearance.DrawLine = True
        TabAppearance.TextSelectedBold = True
        TabAppearance.BackGround.Color = clWhite
        TabAppearance.BackGround.ColorTo = clWhite
        TabAppearance.BackGround.Direction = gdHorizontal
        object cxGrid1: TcxGrid
          Left = 2
          Top = 2
          Width = 932
          Height = 697
          Align = alClient
          TabOrder = 0
          object cxGrid1DBTableView1: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsView.GroupByBox = False
          end
          object cxGridServerList: TcxGridTableView
            Navigator.Buttons.CustomButtons = <>
            OnCellClick = cxGridServerListCellClick
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Kind = skCount
                Column = cxGridServerListColumn11
              end>
            DataController.Summary.SummaryGroups = <>
            DataController.OnBeforeDelete = cxGridServerListDataControllerBeforeDelete
            NewItemRow.Visible = True
            OptionsBehavior.FocusFirstCellOnNewRecord = True
            OptionsBehavior.GoToNextCellOnEnter = True
            OptionsBehavior.FocusCellOnCycle = True
            OptionsData.Appending = True
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            object cxGridServerListColumn11: TcxGridColumn
              Caption = 'Tier'
              PropertiesClassName = 'TcxComboBoxProperties'
              Properties.Items.Strings = (
                'Cumulus'
                'Nimbus'
                'Stratus')
            end
            object cxGridServerListColumn1: TcxGridColumn
              Caption = 'IP'
              Width = 100
            end
            object cxGridServerListColumn2: TcxGridColumn
              Caption = 'Port'
            end
            object cxGridServerListColumn3: TcxGridColumn
              Caption = 'root'
              Width = 80
            end
            object cxGridServerListColumn4: TcxGridColumn
              Caption = 'rootpassword'
              Width = 80
            end
            object cxGridServerListColumn5: TcxGridColumn
              Caption = 'node identity key'
              Width = 140
            end
            object cxGridServerListColumn6: TcxGridColumn
              Caption = 'txid'
              Width = 140
            end
            object cxGridServerListColumn7: TcxGridColumn
              Caption = 'Index'
            end
            object cxGridServerListColumn8: TcxGridColumn
              Caption = 'ZelID'
              Width = 140
            end
            object cxGridServerListColumn14: TcxGridColumn
              Caption = 'Nodename'
            end
            object cxGridServerListColumn13: TcxGridColumn
              Caption = 'Username'
            end
            object cxGridServerListColumn12: TcxGridColumn
              Caption = 'User PW'
            end
            object cxGridServerListColumn9: TcxGridColumn
              Caption = 'KDA adress'
              Width = 140
            end
            object cxGridServerListColumn10: TcxGridColumn
              Caption = 'KDA Chain'
            end
            object cxGridServerListColumn15: TcxGridColumn
              Caption = 'DiscordUserID'
            end
            object cxGridServerListColumn16: TcxGridColumn
              Caption = 'DiscordWebhookUrl'
            end
            object cxGridServerListColumn17: TcxGridColumn
              Caption = 'TelegramChatID'
            end
            object cxGridServerListColumn18: TcxGridColumn
              Caption = 'TelegramChatID'
            end
            object cxGridServerListColumn19: TcxGridColumn
            end
          end
          object cxGrid1Level1: TcxGridLevel
            GridView = cxGridServerList
          end
        end
      end
    end
  end
  object SSHSHELL1: TiphSShell
    FirewallAutoDetect = True
    SSHCertStore = 'MY'
    SSHCompressionAlgorithms = 'none,zlib'
    SSHEncryptionAlgorithms = 
      'aes256-ctr,aes192-ctr,aes128-ctr,aes256-cbc,aes192-cbc,aes128-cb' +
      'c,3des-ctr,3des-cbc,blowfish-cbc,arcfour256,arcfour128,arcfour,c' +
      'ast128-cbc,aes256-gcm@openssh.com,aes128-gcm@openssh.com,chacha2' +
      '0-poly1305@openssh.com'
    SSHHost = '161.97.108.17'
    SSHPassword = 'PC4e6u8Usmh5S89'
    SSHUser = 'root'
    OnError = SSHSHELL1Error
    OnLog = SSHSHELL1Log
    OnStdout = SSHSHELL1Stdout
    Left = 642
    Top = 62
  end
  object SSHClient: TiphSSHClient
    SSHCertStore = 'MY'
    SSHCompressionAlgorithms = 'none,zlib'
    SSHEncryptionAlgorithms = 
      'aes256-ctr,aes192-ctr,aes128-ctr,aes256-cbc,aes192-cbc,aes128-cb' +
      'c,3des-ctr,3des-cbc,blowfish-cbc,arcfour256,arcfour128,arcfour,c' +
      'ast128-cbc,aes256-gcm@openssh.com,aes128-gcm@openssh.com,chacha2' +
      '0-poly1305@openssh.com'
    SSHKeyExchangeAlgorithms = 
      'curve25519-sha256,curve25519-sha256@libssh.org,diffie-hellman-gr' +
      'oup14-sha1,diffie-hellman-group1-sha1,diffie-hellman-group14-sha' +
      '256,diffie-hellman-group-exchange-sha256,diffie-hellman-group-ex' +
      'change-sha1,ecdh-sha2-nistp256,diffie-hellman-group16-sha512,dif' +
      'fie-hellman-group18-sha512,ecdh-sha2-nistp384,ecdh-sha2-nistp521'
    SSHMacAlgorithms = 
      'hmac-sha2-256,hmac-sha2-512,hmac-sha1,hmac-md5,hmac-ripemd160,hm' +
      'ac-sha1-96,hmac-md5-96,hmac-sha2-256-96,hmac-sha2-512-96,hmac-ri' +
      'pemd160-96,hmac-sha2-256-etm@openssh.com,hmac-sha2-512-etm@opens' +
      'sh.com'
    SSHPublicKeyAlgorithms = 
      'ssh-ed25519,ecdsa-sha2-nistp256,ecdsa-sha2-nistp384,ecdsa-sha2-n' +
      'istp521,ssh-rsa,ssh-dss,x509v3-sign-rsa,x509v3-sign-dss'
    Left = 522
    Top = 62
  end
  object WebCopy1: TWebCopy
    Agent = 'WebCopy'
    DlgCancel = 'Cancel'
    DlgCaption = 'Downloading'
    DlgCompleted = 'completed'
    DlgClose = 'Close'
    DlgFileLabel = 'File :'
    DlgFileOfLabel = 'of'
    DlgFromServerLabel = 'from'
    DlgToServerLabel = 'to'
    DlgProgressLabel = 'Progress :'
    DlgRateLabel = 'Transfer rate :'
    DlgTimeLabel = 'Estimated time left :'
    DlgElapsedTimeLabel = 'Elapsed time :'
    DlgCopying = 'Copying'
    DlgDwnload = 'Downloading'
    DlgUpload = 'Uploading'
    DlgOpenFile = 'Open file'
    DlgOpenFolder = 'Open folder'
    DlgTimeSec = 'sec'
    DlgTimeMin = 'minutes'
    FTPPassive = True
    HTTPKeepAliveAuthentication = True
    Items = <>
    DlgShowCancel = False
    ShowDialog = False
    ShowDialogOnTop = False
    ShowFileName = False
    ShowServer = False
    ShowTime = True
    Timeout = 0
    OnConnectError = WebCopy1ConnectError
    OnError = WebCopy1Error
    OnErrorInfo = WebCopy1ErrorInfo
    Version = '2.5.0.0'
    Left = 786
    Top = 126
  end
  object tmr1: TTimer
    Enabled = False
    OnTimer = tmr1Timer
    Left = 738
    Top = 126
  end
  object AESEncryption1: TAESEncryption
    Version = '4.3.1.0'
    key = '0245675329876327'
    Left = 690
    Top = 30
  end
  object pm1: TPopupMenu
    Left = 690
    Top = 126
    object load1: TMenuItem
      Caption = 'Load Data'
      OnClick = load1Click
    end
    object OpeninnewApplication1: TMenuItem
      Caption = 'Load in new execution'
      OnClick = OpeninnewApplication1Click
    end
    object saveServerlist1: TMenuItem
      Caption = 'save Serverlist'
      OnClick = saveServerlist1Click
    end
    object DashboardOverview1: TMenuItem
      Caption = 'Dashboard Overview'
      OnClick = DashboardOverview1Click
    end
    object checkstatus1: TMenuItem
      Caption = 'check status'
      OnClick = checkstatus1Click
    end
  end
  object WebUpdate1: TWebUpdate
    Agent = 'TWebUpdate'
    DateFormat = 'dd/mm/yyyy'
    DateSeparator = '/'
    LogFileName = 'WUPDATE.LOG'
    PostUpdateInfo.Enabled = False
    Signature = 'WebUpdate'
    TempDirectory = '.'
    TimeFormat = 'hh:nn'
    TimeSeparator = ':'
    URL = 
      'https://raw.githubusercontent.com/fabi20x/flux-tools/main/FToolB' +
      'oxUpdate.INF'
    Version = '2.6.0.2'
    Left = 762
    Top = 198
  end
  object SFTP1: TiphSFTP
    FirewallAutoDetect = True
    RemotePath = '.'
    SSHCertStore = 'MY'
    SSHCompressionAlgorithms = 'none,zlib'
    SSHEncryptionAlgorithms = 
      'aes256-ctr,aes192-ctr,aes128-ctr,aes256-cbc,aes192-cbc,aes128-cb' +
      'c,3des-ctr,3des-cbc,blowfish-cbc,arcfour256,arcfour128,arcfour,c' +
      'ast128-cbc,aes256-gcm@openssh.com,aes128-gcm@openssh.com,chacha2' +
      '0-poly1305@openssh.com'
    SSHHost = '164.68.120.120'
    SSHPassword = 'WGyrfPQV4LEXarQw'
    SSHUser = 'root'
    Left = 464
    Top = 392
  end
end
