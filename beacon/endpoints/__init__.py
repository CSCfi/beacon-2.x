
from aiohttp import web

from .rest import (filtering_terms,
                   info,
                   datasets,
                   handlers as rest_handlers
)



from . import html

# only for testing
from . import test

routes = [
    # Info
    web.get('/api'                  , info.handler),
    web.get('/api/info'             , info.handler),
    web.get('/api/service-info'     , info.handler_ga4gh_service_info),

    # Datasets
    web.get('/api/datasets'         , datasets.handler),

    # Filtering terms
    web.get('/api/filtering_terms'   , filtering_terms.handler),

    # Schemas
    # web.get('/api/schemas'          , schemas.handler),

    # Genomic query
    # web.get('/api/genomic_snp'                      , genomic_query.handler),
    # web.get('/api/genomic_region'                   , genomic_query.handler),

    # Biosamples
    web.post('/api/biosamples'                               , rest_handlers.biosamples_by_biosample),
    web.post('/api/biosamples/{target_id_req}'               , rest_handlers.biosamples_by_biosample),
    web.post('/api/biosamples/{target_id_req}/g_variants'    , rest_handlers.gvariants_by_biosample),
    web.post('/api/biosamples/{target_id_req}/individuals'   , rest_handlers.individuals_by_biosample),
    
    # # Individuals
    web.post('/api/individuals'                              , rest_handlers.individuals_by_individual),
    web.post('/api/individuals/{target_id_req}'              , rest_handlers.individuals_by_individual),
    web.post('/api/individuals/{target_id_req}/g_variants'   , rest_handlers.gvariants_by_individual),
    web.post('/api/individuals/{target_id_req}/biosamples'   , rest_handlers.biosamples_by_individual),

    # # GVariant
    web.post('/api/g_variants'                               , rest_handlers.gvariants_by_variant),
    web.post('/api/g_variants/{target_id_req}'               , rest_handlers.gvariants_by_variant),
    web.post('/api/g_variants/{target_id_req}/biosamples'    , rest_handlers.individuals_by_variant),
    web.post('/api/g_variants/{target_id_req}/individuals'   , rest_handlers.biosamples_by_variant),

    # Cohorts
    web.post('/api/cohorts'                                  , rest_handlers.cohorts_by_cohort),
    web.post('/api/cohorts/{target_id_req}'                  , rest_handlers.cohorts_by_cohort),

    ## HTML UI
    web.get('/'       , html.handlers.index  , name='home'   ),
    web.get('/privacy', html.handlers.privacy, name='privacy'),

    # Auth endpoints
    web.get('/login'  , html.auth.login      , name='login'  ),
    web.get('/logout' , html.auth.logout     , name='logout' ),

    # AJAX
    web.get('/filtering_terms/{term}', html.filtering_terms.handler),

    # Just for test
    web.get('/api/test'                  , test.handler),
    web.get('/test'                      , test.handler),
]
