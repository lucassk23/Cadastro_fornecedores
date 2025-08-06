using {megawork.fornecedores as fornecedores_DB} from '../db/fornecedores_db';

service FornecedoresSrv {
    @odata.draft.enabled: true
    entity Fornecedores as projection on fornecedores_DB.fornecedores;

    entity Materiais    as projection on fornecedores_DB.Materiais;
}
