using { alteaup.solutions.systems as systems } from '../db/schema';

@(path: '/services')
service Services  {
    @odata.draft.enabled
    entity Servers as projection on systems.Servers;
    @odata.draft.enabled
    entity Systems as projection on systems.Systems;
    @odata.draft.enabled
    entity Products as projection on systems.Products;
}