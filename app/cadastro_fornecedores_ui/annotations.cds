using FornecedoresSrv as service from '../../srv/fornecedores_srv';
annotate service.Fornecedores with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'Numero Do fornecedor',
                Value : NumeroDofornecedor,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Nome Do fornecedor',
                Value : NomeDofornecedor,
            },
            {
                $Type : 'UI.DataField',
                Label : 'CNPJ',
                Value : CNPJ,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Area De Atuacao',
                Value : AreaDeAtuacao,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Endereco',
                Value : Endereco,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Representante',
                Value : Representante,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Razao Social',
                Value : RazaoSocial,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Cadastro Ativo?',
                Value : CadastroAtivo,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Pais_code',
                Value : Pais_code,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Materiais',
            ID : 'Materiais',
            Target : 'Materiais/@UI.LineItem#Materiais',
        },
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'NumeroDofornecedor',
            Value : NumeroDofornecedor,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Nome Do fornecedor',
            Value : NomeDofornecedor,
        },
        {
            $Type : 'UI.DataField',
            Label : 'CNPJ',
            Value : CNPJ,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Area De Atuacao',
            Value : AreaDeAtuacao,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Endereco',
            Value : Endereco,
        },
    ],
    UI.FieldGroup #Materias : {
        $Type : 'UI.FieldGroupType',
        Data : [
        ],
    },
);

annotate service.Materiais with @(
    UI.LineItem #Materiais : [
        {
            $Type : 'UI.DataField',
            Value : Material,
            Label : 'Material',
        },
        {
            $Type : 'UI.DataField',
            Value : Moeda_code,
        },
        {
            $Type : 'UI.DataField',
            Value : Preco,
            Label : 'Preco',
        },
        {
            $Type : 'UI.DataField',
            Value : DescricaoMaterial,
            Label : 'DescricaoMaterial',
        },
    ],
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Materiais',
            ID : 'Materiais',
            Target : '@UI.FieldGroup#Materiais',
        },
    ],
    UI.FieldGroup #Materiais : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : Material,
                Label : 'Material',
            },
            {
                $Type : 'UI.DataField',
                Value : DescricaoMaterial,
                Label : 'Descricao do Material',
            },
            {
                $Type : 'UI.DataField',
                Value : Preco,
                Label : 'Preço',
            },
            {
                $Type : 'UI.DataField',
                Value : Moeda_code,
                Label : 'Moeda',
            },
        ],
    },
);

