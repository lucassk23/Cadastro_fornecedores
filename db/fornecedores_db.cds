namespace megawork.fornecedores;

using {
    cuid,
    managed,
    Country,
    Currency
} from '@sap/cds/common';

using from '@sap/cds-common-content';


entity fornecedores : cuid, managed {
    NumeroDofornecedor : Integer;
    NomeDofornecedor   : String(50);
    CNPJ               : Integer;
    AreaDeAtuacao      : String(40);
    Endereco           : String(50);
    Representante      : String(30);
    RazaoSocial        : String(50);
    CadastroAtivo      : Boolean;
    Pais               : Country; // Reference to the Country type
    Materiais          : Composition of many Materiais
                             on Materiais.fornecedores = $self; // Reference to the Materiais type
}


entity Materiais : cuid, managed {
    Material          : String(40);
    DescricaoMaterial : String(60);
    Preco             : Decimal(10, 2);
    Moeda             : Currency;
    fornecedores        : Association to fornecedores;
}
