object DMDesadvCorteIngles: TDMDesadvCorteIngles
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Left = 723
  Top = 229
  Height = 461
  Width = 553
  object qryCabOrden: TQuery
    DatabaseName = 'BDProyecto'
    Left = 38
    Top = 101
  end
  object qryAux: TQuery
    DatabaseName = 'BDProyecto'
    Left = 39
    Top = 39
  end
  object qryPacking: TQuery
    DatabaseName = 'BDProyecto'
    Left = 138
    Top = 103
  end
  object qryLinOrden: TQuery
    DatabaseName = 'BDProyecto'
    Left = 41
    Top = 167
  end
  object kmtVerificar: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <>
    IndexDefs = <>
    SortOptions = []
    PersistentBackup = False
    ProgressFlags = [mtpcLoad, mtpcSave, mtpcCopy]
    FilterOptions = []
    Version = '4.08b'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    Left = 135
    Top = 41
  end
  object kmtPalets: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <>
    IndexDefs = <>
    SortOptions = []
    PersistentBackup = False
    ProgressFlags = [mtpcLoad, mtpcSave, mtpcCopy]
    FilterOptions = []
    Version = '4.08b'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    Left = 439
    Top = 4
  end
  object kmtDetallePalet: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <>
    IndexDefs = <>
    SortOptions = []
    PersistentBackup = False
    ProgressFlags = [mtpcLoad, mtpcSave, mtpcCopy]
    FilterOptions = []
    Version = '4.08b'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    Left = 438
    Top = 69
  end
  object qryCajasPacking: TQuery
    DatabaseName = 'BDProyecto'
    Left = 140
    Top = 159
  end
  object qryPaletsPacking: TQuery
    DatabaseName = 'BDProyecto'
    Left = 249
    Top = 159
  end
  object qryCentral: TQuery
    DatabaseName = 'BDCentral'
    Left = 47
    Top = 255
  end
end
