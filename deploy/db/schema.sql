PGDMP     7            
        y            beacon    12.6    13.2 �               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16384    beacon    DATABASE     Z   CREATE DATABASE beacon WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.utf8';
    DROP DATABASE beacon;
                beacon    false                        2615    16385    tmp    SCHEMA        CREATE SCHEMA tmp;
    DROP SCHEMA tmp;
                beacon    false            l           1247    16388    fetch_individuals_result_type    TYPE       CREATE TYPE public.fetch_individuals_result_type AS (
	individual_stable_id text,
	taxon_id text,
	taxon_id_ontology text,
	taxon_id_ontology_label text,
	sex text,
	sex_ontology text,
	ethnicity text,
	ethnicity_ontology text,
	geographic_origin text,
	geographic_origin_ontology text,
	sra_family_id integer,
	race text,
	date_of_birth date,
	weight_kg integer,
	height_cm integer,
	blood_type text,
	medications jsonb,
	procedures jsonb,
	alternative_ids text[],
	alternative_ids_phenopackets text[],
	dataset_stable_ids text[],
	handovers jsonb,
	pedigrees jsonb,
	diseases jsonb,
	phenotypic_features jsonb,
	ontologies_used jsonb
);
 0   DROP TYPE public.fetch_individuals_result_type;
       public          beacon    false            o           1247    16391    fetch_samples_result_type    TYPE     �  CREATE TYPE public.fetch_samples_result_type AS (
	biosample_stable_id text,
	individual_stable_id text,
	description text,
	biosample_status text,
	biosample_status_ontology text,
	biosample_status_ontology_label text,
	individual_age_at_collection text,
	obtention_procedure text,
	obtention_procedure_ontology text,
	obtention_procedure_ontology_label text,
	tumor_progression text,
	tumor_progression_ontology text,
	tumor_progression_ontology_label text,
	tumor_grade text,
	tumor_grade_ontology text,
	tumor_grade_ontology_label text,
	collection_date date,
	handovers jsonb,
	ontologies_used jsonb,
	alternative_ids text[],
	study_id text,
	bioproject_id text,
	files jsonb,
	sample_origins jsonb,
	sample_origins_ontology jsonb
);
 ,   DROP TYPE public.fetch_samples_result_type;
       public          beacon    false            �           1247    16394    fetch_variants_result_type    TYPE     
  CREATE TYPE public.fetch_variants_result_type AS (
	variant_id integer,
	assembly_id text,
	chromosome text,
	refseq_id text,
	variant_name text,
	reference text,
	alternate text,
	start integer,
	"end" integer,
	variant_type text,
	genomic_hgvs_id text,
	transcript_hgvs_ids text[],
	protein_hgvs_ids text[],
	genomic_regions text[],
	molecular_effects text[],
	aminoacid_changes text[],
	effect_impacts text[],
	functional_classes text[],
	codon_changes text[],
	aminoacid_lengths text[],
	gene_names text[],
	transcript_biotypes text[],
	gene_codings text[],
	transcript_ids text[],
	exon_ranks text[],
	genotypes text[],
	genomic_regions_ontology jsonb,
	molecular_effects_ontology jsonb,
	genomic_features_ontology jsonb,
	ontologies_used jsonb,
	dataset_response jsonb
);
 -   DROP TYPE public.fetch_variants_result_type;
       public          beacon    false            �           1247    16397    query_individuals_result_type    TYPE     �  CREATE TYPE public.query_individuals_result_type AS (
	num_results bigint,
	individual_stable_id text,
	taxon_id text,
	taxon_id_ontology text,
	taxon_id_ontology_label text,
	sex text,
	sex_ontology text,
	ethnicity text,
	ethnicity_ontology text,
	geographic_origin text,
	geographic_origin_ontology text,
	sra_family_id integer,
	race text,
	date_of_birth date,
	weight_kg integer,
	height_cm integer,
	blood_type text,
	medications jsonb,
	procedures jsonb,
	alternative_ids text[],
	alternative_ids_phenopackets text[],
	dataset_stable_ids text[],
	handovers jsonb,
	pedigrees jsonb,
	diseases jsonb,
	phenotypic_features jsonb,
	ontologies_used jsonb
);
 0   DROP TYPE public.query_individuals_result_type;
       public          beacon    false            �           1247    16400    query_samples_result_type    TYPE     �  CREATE TYPE public.query_samples_result_type AS (
	num_results bigint,
	biosample_stable_id text,
	individual_stable_id text,
	description text,
	biosample_status text,
	biosample_status_ontology text,
	biosample_status_ontology_label text,
	individual_age_at_collection text,
	obtention_procedure text,
	obtention_procedure_ontology text,
	obtention_procedure_ontology_label text,
	tumor_progression text,
	tumor_progression_ontology text,
	tumor_progression_ontology_label text,
	tumor_grade text,
	tumor_grade_ontology text,
	tumor_grade_ontology_label text,
	collection_date date,
	handovers jsonb,
	ontologies_used jsonb,
	alternative_ids text[],
	study_id text,
	bioproject_id text,
	files jsonb,
	sample_origins jsonb,
	sample_origins_ontology jsonb
);
 ,   DROP TYPE public.query_samples_result_type;
       public          beacon    false            �           1247    16403    query_variants_result_type    TYPE       CREATE TYPE public.query_variants_result_type AS (
	num_results bigint,
	variant_id integer,
	assembly_id text,
	chromosome text,
	refseq_id text,
	variant_name text,
	reference text,
	alternate text,
	start integer,
	"end" integer,
	variant_type text,
	genomic_hgvs_id text,
	transcript_hgvs_ids text[],
	protein_hgvs_ids text[],
	genomic_regions text[],
	molecular_effects text[],
	aminoacid_changes text[],
	effect_impacts text[],
	functional_classes text[],
	codon_changes text[],
	aminoacid_lengths text[],
	gene_names text[],
	transcript_biotypes text[],
	gene_codings text[],
	transcript_ids text[],
	exon_ranks text[],
	genotypes text[],
	genomic_regions_ontology jsonb,
	molecular_effects_ontology jsonb,
	genomic_features_ontology jsonb,
	ontologies_used jsonb,
	dataset_response jsonb
);
 -   DROP TYPE public.query_variants_result_type;
       public          beacon    false                       1255    16404 k   add_where_clause_conditions(text, integer, integer, text, text, text[], boolean, text, text, integer, text)    FUNCTION     �  CREATE FUNCTION public.add_where_clause_conditions(_variant_type text, _start_min integer, _end integer, _reference_bases text, _alternate_bases text, _dataset_stable_ids text[], _is_authenticated boolean, _biosample_stable_id text, _individual_stable_id text, _gvariant_id integer, _filters text, OUT _where_clause text) RETURNS text
    LANGUAGE plpgsql
    AS $_$

DECLARE
	_join_variant_table bool;
BEGIN
	_where_clause = '
	WHERE ';
	_join_variant_table = FALSE;
	
	IF _variant_type IS NOT NULL OR _start_min IS NOT NULL OR _end IS NOT NULL 
		OR _reference_bases IS NOT NULL OR _alternate_bases IS NOT NULL
		THEN _join_variant_table = TRUE;
	END IF;

	-- Datasets
	IF NOT _is_authenticated OR _dataset_stable_ids IS NULL OR array_length(_dataset_stable_ids, 1) IS NULL THEN
		-- only query PUBLIC datasets
		_where_clause = _where_clause || '
		dat.access_type=''PUBLIC''';
	END IF;
	
	IF array_length(_dataset_stable_ids, 1) > 0 THEN
		IF NOT _is_authenticated THEN
			_where_clause =  _where_clause || '
			AND';
		END IF;
		_where_clause =  _where_clause || '
		dat.stable_id = ANY($7)';
	END IF;
		
	IF _biosample_stable_id IS NOT NULL THEN
		_where_clause =  _where_clause || '
		AND sam.stable_id=$13';
	END IF;
	
	IF _individual_stable_id IS NOT NULL THEN
		_where_clause =  _where_clause || '
		AND ind.stable_id=$14';
	END IF;
	
	IF _gvariant_id IS NOT NULL THEN
		_where_clause =  _where_clause || '
		AND var.id=$15';
	END IF;
	
	IF _filters IS NOT NULL THEN
		_where_clause = _where_clause || ' 
		AND ' || _filters;
	END IF;

	IF _join_variant_table THEN
	
		IF _variant_type IS NULL AND _alternate_bases IS NULL
		  --THEN RAISE EXCEPTION 'Either _variant_type or _alternate_bases is mandatory';
		  THEN _alternate_bases='*';
		END IF;
		IF _alternate_bases='N' THEN _alternate_bases='*'; END IF; -- Look for any variant	
	
		IF _variant_type IS NOT NULL THEN
			_where_clause = _where_clause || '
			AND var.variant_type=$1';
		END IF;

		IF _start_min IS NOT NULL THEN
			_where_clause = _where_clause || '
			AND var.start >= $9 AND var.start < $10
			AND var.end >= $11	AND var.end < $12';
		ELSIF _alternate_bases != '*' OR (_alternate_bases = '*' AND _end IS NULL)
			OR (_alternate_bases IS NULL AND _variant_type IS NOT NULL) THEN
		  	-- Looking for an exact match
			_where_clause = _where_clause || '
			AND var.start = $2';
		END IF;

		IF _end IS NOT NULL THEN
			-- Remember that end is exclusive
			IF _alternate_bases = '*' THEN
				-- Looking for any variant within this range
				_where_clause = _where_clause || '
				AND (var.start >= $2 AND var.start < $8
				OR var.end >= $2 AND var.end < $8)';
			ELSE
				-- Looking for an exact match
				_where_clause = _where_clause || '
				AND var.end = ($8-1)';
			END IF;
		END IF;

		-- refseq
		_where_clause = _where_clause || '
		AND var.chromosome=$3';

		-- Reference parameter is not mandatory
		IF _reference_bases IS NOT NULL AND _reference_bases!='N' THEN
			_where_clause=_where_clause || '
			AND var.reference=$4';
		END IF;

		-- Alternate bases
		IF _alternate_bases IS NOT NULL THEN
		  IF _variant_type='INS' THEN
			  _where_clause = _where_clause || '
			  AND var.alternate like var.reference || $5 || ''%'' ';
			ELSIF _alternate_bases NOT IN ('N','*') THEN
			  _where_clause = _where_clause || '
			  AND var.alternate=$5';
			END IF;
		END IF;

		-- Convert reference_genome column to lower case
		_where_clause = _where_clause || '
		AND lower(dat.reference_genome)=$6';
	END IF;

	-- #1=_variant_type, #2=_start, #3=_refseq, #4=_reference_bases, #5=_alternate_bases, 
	-- #6=_reference_genome, #7=_dataset_stable_ids, #8=_end, #9=_start_min, #10=_start_max, 
	-- #11=_end_min, #12=_end_max, 
	-- #13=_biosample_stable_id, #14=_individual_stable_id, #15=_gvariant_id
	-- #16=_limit, #17=_offset

END
$_$;
 A  DROP FUNCTION public.add_where_clause_conditions(_variant_type text, _start_min integer, _end integer, _reference_bases text, _alternate_bases text, _dataset_stable_ids text[], _is_authenticated boolean, _biosample_stable_id text, _individual_stable_id text, _gvariant_id integer, _filters text, OUT _where_clause text);
       public          beacon    false            (           1255    17648 #   build_distribution(integer[], text)    FUNCTION     8  CREATE FUNCTION public.build_distribution(individual_ids integer[], individual_column text) RETURNS jsonb
    LANGUAGE plpgsql
    AS $_$
DECLARE
		_count integer;
		_availability bool;
		_distribution jsonb;
		_result jsonb;
BEGIN

	SELECT COUNT(individual_column)
	FROM individual
	WHERE id = ANY(individual_ids)
	INTO _count;
	
	SELECT COUNT(individual_column) != 0
	FROM individual
	WHERE id = ANY(individual_ids)
	INTO _availability;
	
	EXECUTE '
		SELECT jsonb_agg(t)
		FROM (
			SELECT jsonb_build_object(''id'', (ot.ontology || '':'' || ot.term), ''label'', ot.label) as type, count(' || individual_column || ')
			FROM individual ind, ontology_term_table ot
			WHERE ot.column_name = ''' || individual_column || ''' AND ot.column_value = ind.' || individual_column || ' AND ind.id = ANY($1)
			GROUP BY ot.ontology, ot.term, ot.label
		) t'
	USING individual_ids
	INTO _distribution;
	
	SELECT ('{"availability": ' || _availability || ', "availability_count": ' || _count || ', "distribution": ' || _distribution || '}')::jsonb
	INTO _result;
	
	RETURN _result;
END
$_$;
 [   DROP FUNCTION public.build_distribution(individual_ids integer[], individual_column text);
       public          beacon    false                       1255    16405 �   count_gvariants(text, integer, integer, integer, integer, integer, integer, character varying, text, text, text, text[], boolean, text, text, integer, text[])    FUNCTION     �  CREATE FUNCTION public.count_gvariants(_variant_type text, _start integer, _start_min integer, _start_max integer, _end integer, _end_min integer, _end_max integer, _refseq character varying, _reference_bases text, _alternate_bases text, _reference_genome text, _dataset_stable_ids text[], _is_authenticated boolean, _biosample_stable_id text, _individual_stable_id text, _gvariant_id integer, _filters text[]) RETURNS TABLE(_num_total_results bigint)
    LANGUAGE plpgsql
    AS $$

-- PRECONDITIONS:
-- _dataset_stable_ids is optional
-- If _is_authenticated=false or _dataset_stable_ids is empty, only PUBLIC datasets will be queried 
--		(regardless there are registered or controlled in _dataset_stable_ids)
-- If _is_authenticated=true, datasets in _dataset_stable_ids will be queried
-- _offset is the number of rows to be skipped
-- _limit is the number of rows to be returned
-- 	If _limit=null & _offset=null, no pagination is applied
-- Expected combinations:
--		* _reference_genome + _refseq + _alternate_bases + _reference_bases + _start
--		* _reference_genome + _refseq + _alternate_bases + (_reference_bases) + _start + _end
--		* _reference_genome + _refseq + (_variant_type) + _start + _end
--		* _reference_genome + _refseq + (_variant_type) + _start_min + _start_max + _end_min + _end_max

DECLARE
	_query text;
	_where_clause text;
	_filters_converted text;
	_join_individual_table bool;
	_join_sample_table bool;
	_join_pedigree_table bool;
	_join_individual_pedigree_table bool;
	_join_individual_disease_table bool;
	_join_individual_phenotypic_feature_table bool;
BEGIN
	_join_individual_table = FALSE;
	_join_sample_table = FALSE;
	_join_pedigree_table = FALSE;
	_join_individual_pedigree_table = FALSE;
	_join_individual_disease_table = FALSE;
	_join_individual_phenotypic_feature_table = FALSE;

	SELECT * INTO _filters_converted
	FROM public.parse_filters(_filters);

	-- Aliases used in ontology_term_table
	-- 	'ind'
	-- 	'sam'
	-- 	'ind_ped'
	-- 	'ind_dis'
	-- In the future, we may have filters on variant_table
	
	-- Check what other tables should be joined depending on the filters provided
	-- TODO

	SELECT * INTO _where_clause
	FROM public.add_where_clause_conditions(_variant_type, _start_min, _end, _reference_bases, 
											_alternate_bases, _dataset_stable_ids, _is_authenticated, 
											_biosample_stable_id, _individual_stable_id, _gvariant_id, 
											_filters_converted);
											
	RAISE NOTICE 'WHERE=%', _where_clause;
	
	IF _where_clause LIKE '%ind.%' 
		OR _where_clause LIKE '%ped.%'
		OR _where_clause LIKE '%ind_ped.%' 
		OR _where_clause LIKE '%ind_dis.%' 
		OR _where_clause LIKE '%ind_phf.%' 
	THEN 
		_join_sample_table=TRUE;
		_join_individual_table=TRUE; 
	END IF;
	IF _where_clause LIKE '%sam.%' THEN _join_sample_table=TRUE; END IF;
	IF _where_clause LIKE '%ped.%' THEN 
		_join_individual_pedigree_table=TRUE;
		_join_pedigree_table=TRUE; 
	END IF;
	IF _where_clause LIKE '%ind_ped.%' THEN _join_individual_pedigree_table=TRUE; END IF;
	IF _where_clause LIKE '%ind_dis.%' THEN _join_individual_disease_table=TRUE; END IF;
	IF _where_clause LIKE '%ind_phf.%' THEN _join_individual_phenotypic_feature_table=TRUE; END IF;
	
	---------------------
	-- BUILD THE QUERY --
	---------------------
	_query = '
		select COUNT(DISTINCT var.id)
		from public.variant_table var
		INNER JOIN public.dataset_table dat ON dat.id=var.dataset_id';
			
	IF _join_sample_table THEN
		_query = _query || '
		INNER JOIN public.variant_sample_table var_sam ON var_sam.variant_id=var.id
		INNER JOIN public.sample_w_ontology_terms sam ON sam.id=var_sam.sample_id';
	END IF;
	IF _join_individual_table THEN
		_query = _query || '
		INNER JOIN public.individual_w_ontology_terms ind ON ind.id=sam.individual_id';
	END IF;
	IF _join_individual_pedigree_table THEN
		_query = _query || '
		INNER JOIN public.individual_pedigree_w_ontology_terms ind_ped ON ind_ped.individual_id=ind.id';
	END IF;
	IF _join_pedigree_table THEN
		_query = _query || '
		INNER JOIN public.pedigree_table ped ON ped.stable_id=ind_ped.pedigree_stable_id';
	END IF;
	IF _join_individual_disease_table THEN
		_query = _query || '
		INNER JOIN public.individual_disease_w_ontology_terms ind_dis ON ind_dis.individual_id=ind.id';
	END IF;
	IF _join_individual_phenotypic_feature_table THEN
		_query = _query || '
		INNER JOIN public.individual_phenotypic_feature_w_ontology_terms ind_phf ON ind_phf.individual_id=ind.id';
	END IF;

	_query = _query || _where_clause;

	RAISE NOTICE '_query: %', _query;

	RETURN QUERY EXECUTE _query
	USING _variant_type, _start, _refseq, _reference_bases, _alternate_bases, 
		_reference_genome, _dataset_stable_ids, _end, _start_min, _start_max, _end_min, _end_max, 
		_biosample_stable_id, _individual_stable_id, _gvariant_id;
	-- #1=_variant_type, #2=_start, #3=_refseq, #4=_reference_bases, #5=_alternate_bases, 
	-- #6=_reference_genome, #7=_dataset_stable_ids, #8=_end, #9=_start_min, #10=_start_max, 
	-- #11=_end_min, #12=_end_max, 
	-- #13=_biosample_stable_id, #14=_individual_stable_id, #15=_gvariant_id,
END
$$;
 �  DROP FUNCTION public.count_gvariants(_variant_type text, _start integer, _start_min integer, _start_max integer, _end integer, _end_min integer, _end_max integer, _refseq character varying, _reference_bases text, _alternate_bases text, _reference_genome text, _dataset_stable_ids text[], _is_authenticated boolean, _biosample_stable_id text, _individual_stable_id text, _gvariant_id integer, _filters text[]);
       public          beacon    false                       1255    16407 �   count_individuals(text, integer, integer, integer, integer, integer, integer, character varying, text, text, text, text[], boolean, text, text, integer, text[])    FUNCTION       CREATE FUNCTION public.count_individuals(_variant_type text, _start integer, _start_min integer, _start_max integer, _end integer, _end_min integer, _end_max integer, _refseq character varying, _reference_bases text, _alternate_bases text, _reference_genome text, _dataset_stable_ids text[], _is_authenticated boolean, _biosample_stable_id text, _individual_stable_id text, _gvariant_id integer, _filters text[]) RETURNS TABLE(_num_total_results bigint)
    LANGUAGE plpgsql
    AS $$

-- PRECONDITIONS:
-- _dataset_stable_ids is optional
-- If _is_authenticated=false or _dataset_stable_ids is empty, only PUBLIC datasets will be queried 
--		(regardless there are registered or controlled in _dataset_stable_ids)
-- If _is_authenticated=true, datasets in _dataset_stable_ids will be queried
-- _offset is the number of rows to be skipped
-- _limit is the number of rows to be returned
-- 	If _limit=null & _offset=null, no pagination is applied
-- Expected combinations:
--		* _reference_genome + _refseq + _alternate_bases + _reference_bases + _start
--		* _reference_genome + _refseq + _alternate_bases + (_reference_bases) + _start + _end
--		* _reference_genome + _refseq + (_variant_type) + _start + _end
--		* _reference_genome + _refseq + (_variant_type) + _start_min + _start_max + _end_min + _end_max

DECLARE
	_query text;
	_where_clause text;
	_filters_converted text;
	_join_variant_table bool;
	_join_individual_pedigree_table bool;
	_join_individual_disease_table bool;
	_join_individual_phenotypic_feature_table bool;
	_join_pedigree_table bool;
BEGIN
	_join_variant_table = FALSE;
	_join_pedigree_table = FALSE;
	_join_individual_pedigree_table = FALSE;
	_join_individual_disease_table = FALSE;
	_join_individual_phenotypic_feature_table = FALSE;

	SELECT * INTO _filters_converted
	FROM public.parse_filters(_filters);
	
	SELECT * INTO _where_clause
	FROM public.add_where_clause_conditions(_variant_type, _start_min, _end, _reference_bases, 
											_alternate_bases, _dataset_stable_ids, _is_authenticated, 
											_biosample_stable_id, _individual_stable_id, _gvariant_id, 
											_filters_converted);
											
	RAISE NOTICE 'WHERE=%', _where_clause;
	
	-- Aliases used in ontology_term_table
	-- 	'ind'
	-- 	'sam'
	-- 	'ind_ped'
	-- 	'ind_dis'
	-- In the future, we may have filters on variant_table
	
	-- Check what other tables should be joined depending on the filters provided
	IF _where_clause LIKE '%var.%' THEN _join_variant_table=TRUE; END IF;
	IF _where_clause LIKE '%ind_ped.%' THEN _join_individual_pedigree_table=TRUE; END IF;
	IF _where_clause LIKE '%ind_dis.%' THEN _join_individual_disease_table=TRUE; END IF;
	IF _where_clause LIKE '%ind_phf.%' THEN _join_individual_phenotypic_feature_table=TRUE; END IF;
	IF _where_clause LIKE '%ped.%' THEN 
		_join_individual_pedigree_table=TRUE; 
		_join_pedigree_table=TRUE; 
	END IF;
											
	---------------------
	-- BUILD THE QUERY --
	---------------------
	_query = '
		SELECT COUNT(DISTINCT ind.id)
		FROM public.individual_w_ontology_terms ind 
		INNER JOIN public.sample_table sam ON sam.individual_id=ind.id
		INNER JOIN public.dataset_sample_table dataset_sam ON dataset_sam.sample_id=sam.id
		INNER JOIN public.dataset_table dat ON dat.id = dataset_sam.dataset_id
		';
	
	-- Join other tables only if they are necessary
	IF _join_variant_table THEN
		_query = _query || '
		INNER JOIN public.variant_sample_table var_sam ON var_sam.sample_id=sam.id
		INNER JOIN public.variant_table var ON var.id=var_sam.variant_id AND var.dataset_id=dat.id';
	END IF;
	
	IF _join_individual_pedigree_table THEN
		_query = _query || '
		INNER JOIN public.individual_pedigree_w_ontology_terms ind_ped ON ind_ped.individual_id=ind.id';
	END IF;
	
	IF _join_individual_disease_table THEN
		_query = _query || '
		INNER JOIN public.individual_disease_w_ontology_terms ind_dis ON ind_dis.individual_id=ind.id';
	END IF;
	
	IF _join_individual_phenotypic_feature_table THEN
		_query = _query || '
		INNER JOIN public.individual_phenotypic_feature_w_ontology_terms ind_phf ON ind_phf.individual_id=ind.id';
	END IF;
	
	IF _join_pedigree_table THEN
		_query = _query || '
		INNER JOIN public.pedigree_table ped ON ped.stable_id=ind_ped.pedigree_stable_id';
	END IF;

	_query = _query || _where_clause;
	
	RAISE NOTICE '_query: %', _query;

	RETURN QUERY EXECUTE _query
	USING _variant_type, _start, _refseq, _reference_bases, _alternate_bases, 
		_reference_genome, _dataset_stable_ids, _end, _start_min, _start_max, _end_min, _end_max, 
		_biosample_stable_id, _individual_stable_id, _gvariant_id;
	-- #1=_variant_type, #2=_start, #3=_refseq, #4=_reference_bases, #5=_alternate_bases, 
	-- #6=_reference_genome, #7=_dataset_stable_ids, #8=_end, #9=_start_min, #10=_start_max, 
	-- #11=_end_min, #12=_end_max, 
	-- #13=_biosample_stable_id, #14=_individual_stable_id, #15=_gvariant_id,
END
$$;
 �  DROP FUNCTION public.count_individuals(_variant_type text, _start integer, _start_min integer, _start_max integer, _end integer, _end_min integer, _end_max integer, _refseq character varying, _reference_bases text, _alternate_bases text, _reference_genome text, _dataset_stable_ids text[], _is_authenticated boolean, _biosample_stable_id text, _individual_stable_id text, _gvariant_id integer, _filters text[]);
       public          beacon    false                       1255    16409 �   count_samples(text, integer, integer, integer, integer, integer, integer, character varying, text, text, text, text[], boolean, text, text, integer, text[])    FUNCTION     &  CREATE FUNCTION public.count_samples(_variant_type text, _start integer, _start_min integer, _start_max integer, _end integer, _end_min integer, _end_max integer, _refseq character varying, _reference_bases text, _alternate_bases text, _reference_genome text, _dataset_stable_ids text[], _is_authenticated boolean, _biosample_stable_id text, _individual_stable_id text, _gvariant_id integer, _filters text[]) RETURNS TABLE(_num_total_samples bigint)
    LANGUAGE plpgsql
    AS $$

-- PRECONDITIONS:
-- _dataset_stable_ids is optional
-- If _is_authenticated=false or _dataset_stable_ids is empty, only PUBLIC datasets will be queried 
--		(regardless there are registered or controlled in _dataset_stable_ids)
-- If _is_authenticated=true, datasets in _dataset_stable_ids will be queried
-- _offset is the number of rows to be skipped
-- _limit is the number of rows to be returned
-- 	If _limit=null & _offset=null, no pagination is applied
-- Expected combinations:
--		* _reference_genome + _refseq + _alternate_bases + _reference_bases + _start
--		* _reference_genome + _refseq + _alternate_bases + (_reference_bases) + _start + _end
--		* _reference_genome + _refseq + (_variant_type) + _start + _end
--		* _reference_genome + _refseq + (_variant_type) + _start_min + _start_max + _end_min + _end_max

DECLARE
	_query text;
	_where_clause text;
	_filters_converted text;
	_join_variant_table bool;
	_join_pedigree_table bool;
	_join_individual_pedigree_table bool;
	_join_individual_disease_table bool;
	_join_individual_phenotypic_feature_table bool;
BEGIN
	_join_variant_table = FALSE;
	_join_pedigree_table = FALSE;
	_join_individual_pedigree_table = FALSE;
	_join_individual_disease_table = FALSE;
	_join_individual_phenotypic_feature_table = FALSE;

	SELECT * INTO _filters_converted
	FROM public.parse_filters(_filters);

	-- Aliases used in ontology_term_table
	-- 	'ind'
	-- 	'sam'
	-- 	'ind_ped'
	-- 	'ind_dis'
	-- In the future, we may have filters on variant_table
	
	-- Check what other tables should be joined depending on the filters provided
	IF _filters_converted LIKE '%var.%' THEN _join_variant_table=TRUE; END IF;
	IF _filters_converted LIKE '%ped.%' THEN 
		_join_individual_pedigree_table=TRUE;
		_join_pedigree_table=TRUE; 
	END IF;
	IF _filters_converted LIKE '%ind_ped.%' THEN _join_individual_pedigree_table=TRUE; END IF;
	IF _filters_converted LIKE '%ind_dis.%' THEN _join_individual_disease_table=TRUE; END IF;
	IF _filters_converted LIKE '%ind_phf.%' THEN _join_individual_phenotypic_feature_table=TRUE; END IF;

	SELECT * INTO _where_clause
	FROM public.add_where_clause_conditions(_variant_type, _start_min, _end, _reference_bases, 
											_alternate_bases, _dataset_stable_ids, _is_authenticated, 
											_biosample_stable_id, _individual_stable_id, _gvariant_id,
											_filters_converted);
											
	RAISE NOTICE 'WHERE=%', _where_clause;
											
	IF _where_clause LIKE '%var.%' THEN _join_variant_table=TRUE; END IF;
	
	---------------------
	-- BUILD THE QUERY --
	---------------------
	_query = '
	SELECT COUNT(DISTINCT sam.id)
	FROM public.sample_w_ontology_terms sam
	INNER JOIN public.individual_w_ontology_terms ind ON ind.id=sam.individual_id
	INNER JOIN public.dataset_sample_table dataset_sam ON dataset_sam.sample_id=sam.id
	INNER JOIN public.dataset_table dat ON dat.id = dataset_sam.dataset_id';
	
	-- Join other tables only if they are necessary	
	IF _join_variant_table THEN
		_query = _query || '
	INNER JOIN public.variant_sample_table var_sam ON var_sam.sample_id=sam.id
	INNER JOIN public.variant_table var ON var.id=var_sam.variant_id';
	END IF;
	
	IF _join_individual_pedigree_table THEN
		_query = _query || '
	INNER JOIN public.individual_pedigree_w_ontology_terms ind_ped ON ind_ped.individual_id=ind.id';
	END IF;
	
	IF _join_pedigree_table THEN
		_query = _query || '
	INNER JOIN public.pedigree_table ped ON ped.stable_id=ind_ped.pedigree_stable_id';
	END IF;
	
	IF _join_individual_disease_table THEN
		_query = _query || '
	INNER JOIN public.individual_disease_w_ontology_terms ind_dis ON ind_dis.individual_id=ind.id';
	END IF;
	
	IF _join_individual_phenotypic_feature_table THEN
		_query = _query || '
	INNER JOIN public.individual_phenotypic_feature_w_ontology_terms ind_phf ON ind_phf.individual_id=ind.id';
	END IF;
	
	RAISE NOTICE '_query: %', _query;

	RETURN QUERY EXECUTE _query
	USING _variant_type, _start, _refseq, _reference_bases, _alternate_bases, 
		_reference_genome, _dataset_stable_ids, _end, _start_min, _start_max, _end_min, _end_max, 
		_biosample_stable_id, _individual_stable_id, _gvariant_id;
	-- #1=_variant_type, #2=_start, #3=_refseq, #4=_reference_bases, #5=_alternate_bases, 
	-- #6=_reference_genome, #7=_dataset_stable_ids, #8=_end, #9=_start_min, #10=_start_max, 
	-- #11=_end_min, #12=_end_max, 
	-- #13=_biosample_stable_id, #14=_individual_stable_id, #15=_gvariant_id
END
$$;
 �  DROP FUNCTION public.count_samples(_variant_type text, _start integer, _start_min integer, _start_max integer, _end integer, _end_min integer, _end_max integer, _refseq character varying, _reference_bases text, _alternate_bases text, _reference_genome text, _dataset_stable_ids text[], _is_authenticated boolean, _biosample_stable_id text, _individual_stable_id text, _gvariant_id integer, _filters text[]);
       public          beacon    false            )           1255    17688 ,   create_cohort(text, jsonb, jsonb, integer[])    FUNCTION       CREATE FUNCTION public.create_cohort(cohort_name text, cohort_inclusion_criteria jsonb, cohort_exclusion_criteria jsonb, collection_event_ids integer[]) RETURNS integer
    LANGUAGE plpgsql
    AS $$
DECLARE
    	new_id integer;
		_cohort_type text;
		_cohort_design text;
		_cohort_license jsonb;
		_cohort_contact jsonb;
		_cohort_rights jsonb;
		_cohort_size integer;
		_cohort_data_types jsonb;
BEGIN
	
	_cohort_type := 'beacon-defined';
	_cohort_size := cardinality(collection_event_ids);
	
	INSERT INTO cohort_table (cohort_name, cohort_type, cohort_design, cohort_inclusion_criteria, cohort_exclusion_criteria, cohort_license, cohort_contact, cohort_rights, cohort_size, cohort_data_types)
	VALUES (cohort_name, _cohort_type, _cohort_design, cohort_inclusion_criteria, cohort_exclusion_criteria, _cohort_license, _cohort_contact, _cohort_rights, _cohort_size, _cohort_data_types)
	RETURNING id
	INTO new_id;
	
	UPDATE collection_event
	SET cohort_id = new_id
	WHERE id = ANY(collection_event_ids);
	
	RETURN new_id;
END;
$$;
 �   DROP FUNCTION public.create_cohort(cohort_name text, cohort_inclusion_criteria jsonb, cohort_exclusion_criteria jsonb, collection_event_ids integer[]);
       public          beacon    false            *           1255    17599 "   create_collection_event(integer[])    FUNCTION     �  CREATE FUNCTION public.create_collection_event(individual_ids integer[]) RETURNS integer
    LANGUAGE plpgsql
    AS $$
DECLARE
    	new_id integer;
		_event_date date;
		_event_timeline jsonb;
		_event_size integer;
		_event_cases integer;
		_event_controls integer;
		_event_locations jsonb;
		_event_genders jsonb;
		_event_ethnicities jsonb;
		_event_age_range jsonb;
		_event_diseases jsonb;
		_event_phenotypes jsonb;
		_event_data_types jsonb;
BEGIN

	_event_date := current_date;
	-- _event_timeline := ...
	_event_size := cardinality(individual_ids);
	-- _event_cases := ...
	-- _event_controls := ...
	_event_locations = public.build_distribution(individual_ids, 'geographic_origin');
	_event_genders := public.build_distribution(individual_ids, 'sex');
	_event_ethnicities := public.build_distribution(individual_ids, 'ethnicity');
	
	SELECT json_build_object('start', MIN(age(date_of_birth)::interval), 'end', MAX(age(date_of_birth)::interval))
	FROM individual_table
	INTO _event_age_range;
	
	-- _event_diseases := ...
	-- _event_phenotypes := ...
	-- _event_data_types := ...
	
	----------------------------
	-- INSERT COLLECTION EVENT
	----------------------------
	
	INSERT INTO collection_event (event_num, event_date, event_timeline, event_size, event_cases, event_controls, event_locations, event_genders, event_ethnicities, event_age_range, event_diseases, event_phenotypes, event_data_types, cohort_id)
	VALUES (NULL, _event_date, _event_timeline, _event_size, _event_cases, _event_controls, _event_locations, _event_genders, _event_ethnicities, _event_age_range, _event_diseases, _event_phenotypes, _event_data_types, NULL)
	RETURNING id
	INTO new_id;
	
	----------------------------
	-- RETURN ID
	----------------------------
	
	RETURN new_id;
END;
$$;
 H   DROP FUNCTION public.create_collection_event(individual_ids integer[]);
       public          beacon    false                       1255    16411 �   fetch_gvariants(text, integer, integer, integer, integer, integer, integer, character varying, text, text, text, text, text[], boolean, text, text, integer, text[], integer, integer, text[])    FUNCTION     C1  CREATE FUNCTION public.fetch_gvariants(_variant_type text, _start integer, _start_min integer, _start_max integer, _end integer, _end_min integer, _end_max integer, _refseq character varying, _reference_bases text, _alternate_bases text, _reference_genome text, _include_dataset_responses text, _dataset_stable_ids text[], _is_authenticated boolean, _biosample_stable_id text, _individual_stable_id text, _gvariant_id integer, _filters text[], _offset integer, _limit integer, _requested_schemas text[]) RETURNS SETOF public.fetch_variants_result_type
    LANGUAGE plpgsql
    AS $_$

-- PRECONDITIONS:
-- _dataset_stable_ids is optional
-- If _is_authenticated=false or _dataset_stable_ids is empty, only PUBLIC datasets will be queried 
--		(regardless there are registered or controlled in _dataset_stable_ids)
-- If _is_authenticated=true, datasets in _dataset_stable_ids will be queried
-- _offset is the number of rows to be skipped
-- _limit is the number of rows to be returned
-- 	If _limit=null & _offset=null, no pagination is applied
-- Expected combinations:
--		* _reference_genome + _refseq + _alternate_bases + _reference_bases + _start
--		* _reference_genome + _refseq + _alternate_bases + (_reference_bases) + _start + _end
--		* _reference_genome + _refseq + (_variant_type) + _start + _end
--		* _reference_genome + _refseq + (_variant_type) + _start_min + _start_max + _end_min + _end_max

-- If your variant_table schema is different, you will have to change:
-- * Type: fetch_variants_result_type: return type of this function. 
--		It must match with the columns returned in the view function_fetch_variants_cols_required (see next).
-- * Views: 
-- 		function_fetch_variants_cols_required: list the columns to be returned in the  outter SELECT in 
--			this function's query.
--		variant: view on top of variant_table. It must return the columnas that we want to return in the
--			function, use to filter or to do JOINs with other tables/views.

DECLARE
	_query text;
	_joins_clause text;
	_where_clause text;
	_filters_converted text;
	_join_individual_table bool;
	_join_sample_table bool;
	_join_pedigree_table bool;
	_join_individual_pedigree_table bool;
	_join_individual_disease_table bool;
	_join_individual_phenotypic_feature_table bool;
	_only_hit_datasets bool;
	_only_miss_datasets bool;
	_none_dataset bool;
	_all_dataset bool;
	_required_cols text;
	-- Schemas and formats for some fields
	_genomic_features_schema_formats text;
	_variant_resources_schema_formats text;
	_handover_schema_format text;
	_datasets_missing_response_schema_format text;
	
BEGIN
	--------------------------
	-- Initialize variables --
	--------------------------
	_join_individual_table = FALSE;
	_join_sample_table = FALSE;
	_join_pedigree_table = FALSE;
	_join_individual_pedigree_table = FALSE;
	_join_individual_disease_table = FALSE;
	_join_individual_phenotypic_feature_table = FALSE;

	_only_hit_datasets = FALSE;
	_only_miss_datasets = FALSE;
	_none_dataset = FALSE;
	_all_dataset = FALSE;
	
	-----------------------------------------------------
	-- Get columns to be returned in the outter SELECT --
	-----------------------------------------------------
	SELECT string_agg(quote_ident(column_name),', ' ORDER BY ordinal_position) INTO _required_cols
	FROM INFORMATION_SCHEMA.COLUMNS 
	WHERE table_name = 'function_fetch_variants_cols_required';
	
	---------------------------------------------------------
	-- Find what datasets must be included in the response --
	---------------------------------------------------------
	IF _include_dataset_responses = 'HIT' THEN
		_only_hit_datasets = TRUE;
	END IF;
	IF _include_dataset_responses = 'MISS' THEN
		_only_miss_datasets = TRUE;
	END IF;
	IF _include_dataset_responses = 'NONE' THEN
		_none_dataset = TRUE;
	END IF;
	IF _include_dataset_responses = 'ALL' THEN
		_all_dataset = TRUE;
	END IF;

	---------------------
	-- Prepare filters --
	---------------------
	SELECT * INTO _filters_converted
	FROM public.parse_filters(_filters);

	----------------------------
	-- Build the WHERE clause --
	----------------------------
	SELECT * INTO _where_clause
	FROM public.add_where_clause_conditions(_variant_type, _start_min, _end, _reference_bases, 
											_alternate_bases, _dataset_stable_ids, _is_authenticated, 
											_biosample_stable_id, _individual_stable_id, _gvariant_id, 
											_filters_converted);
	RAISE NOTICE 'WHERE=%', _where_clause;
	
	--------------------------------
	-- Find what joins are needed --
	--------------------------------
	IF _where_clause LIKE '%ind.%' 
		OR _where_clause LIKE '%ped.%'
		OR _where_clause LIKE '%ind_ped.%' 
		OR _where_clause LIKE '%ind_dis.%' 
		OR _where_clause LIKE '%ind_phf.%' 
	THEN 
		_join_sample_table=TRUE;
		_join_individual_table=TRUE; 
	END IF;
	IF _where_clause LIKE '%sam.%' THEN _join_sample_table=TRUE; END IF;
	IF _where_clause LIKE '%ped.%' THEN 
		_join_individual_pedigree_table=TRUE;
		_join_pedigree_table=TRUE; 
	END IF;
	IF _where_clause LIKE '%ind_ped.%' THEN _join_individual_pedigree_table=TRUE; END IF;
	IF _where_clause LIKE '%ind_dis.%' THEN _join_individual_disease_table=TRUE; END IF;
	IF _where_clause LIKE '%ind_phf.%' THEN _join_individual_phenotypic_feature_table=TRUE; END IF;
	
	-------------------
	-- Prepare joins --
	-------------------
	_joins_clause='';
	IF _join_sample_table THEN
		_joins_clause = _joins_clause || '
		INNER JOIN public.variant_sample_table var_sam ON var_sam.variant_id=var.id
		INNER JOIN public.sample_w_ontology_terms sam ON sam.id=var_sam.sample_id';
	END IF;
	IF _join_individual_table THEN
		_joins_clause = _joins_clause || '
		INNER JOIN public.individual_w_ontology_terms ind ON ind.id=sam.individual_id';
	END IF;
	IF _join_individual_pedigree_table THEN
		_joins_clause = _joins_clause || '
		INNER JOIN public.individual_pedigree_w_ontology_terms ind_ped ON ind_ped.individual_id=ind.id';
	END IF;
	IF _join_pedigree_table THEN
		_joins_clause = _joins_clause || '
		INNER JOIN public.pedigree_table ped ON ped.stable_id=ind_ped.pedigree_stable_id';
	END IF;
	IF _join_individual_disease_table THEN
		_joins_clause = _joins_clause || '
		INNER JOIN public.individual_disease_w_ontology_terms ind_dis ON ind_dis.individual_id=ind.id';
	END IF;
	IF _join_individual_phenotypic_feature_table THEN
		_joins_clause = _joins_clause || '
		INNER JOIN public.individual_phenotypic_feature_w_ontology_terms ind_phf ON ind_phf.individual_id=ind.id';
	END IF;
	
-- 	RAISE NOTICE 'Parameters:  
-- 		_variant_type=%, _start=%, _start_min=%, _start_max=%, _end=%, _end_min=%, _end_max=%,
-- 		_refseq=%, _reference_bases=%, _alternate_bases=%, _reference_genome=%, 
-- 		_dataset_stable_ids=%, _is_authenticated=%, _filters=%, _filters_converted=%,
-- 		_biosample_stable_id=%, _individual_stable_id=%, _include_dataset_responses=%, 
-- 		_limit=%, _offset=%', 
-- 	_variant_type, _start, _start_min, _start_max, _end, _end_min, _end_max,
-- 	_refseq, _reference_bases, _alternate_bases, _reference_genome, 
-- 	_dataset_stable_ids, _is_authenticated, _filters, _filters_converted, 
-- 	_biosample_stable_id, _individual_stable_id, _include_dataset_responses,
-- 	_limit, _offset;

	---------------------------------
	-- Get the schemas and formats --
	---------------------------------
	SELECT COALESCE(_schema_formats, quote_literal('{}')) INTO _genomic_features_schema_formats
	FROM public.find_format(_requested_schemas,'public.variant_table','genomic_features_ontology');

	IF _variant_resources_schema_formats='{}' THEN RAISE EXCEPTION 'Requested schemas not found! %', _requested_schemas; END IF;
	
	SELECT COALESCE(_schema_formats, quote_literal('{}')) INTO _variant_resources_schema_formats
	FROM public.find_format(_requested_schemas,'public.variant_table','variant_resources');
	
	SELECT COALESCE(_schema_formats, quote_literal('{}')) INTO _handover_schema_format
	FROM public.find_format(ARRAY['beacon-default-v2.0.0-draft.2'],'handover','handover');
	
	SELECT COALESCE(_schema_formats, quote_literal('{}')) INTO _datasets_missing_response_schema_format
	FROM public.find_format(ARRAY['beacon-default-v2.0.0-draft.2'],'public.variant_table','datasets_missing_response');
	
	---------------------
	-- BUILD THE QUERY --
	---------------------
	_query = '
	SELECT DISTINCT ON (var.id)
		' || _required_cols || ',
		-- JSONB formatted fields
		''{}''::jsonb AS genomic_regions_ontology, --27
		''{}''::jsonb AS molecular_effects_ontology, 
		COALESCE(jsonb_agg(DISTINCT gf.genomic_features_ontology) FILTER (WHERE gf.genomic_features_ontology IS NOT NULL), ''{}''::jsonb) AS genomic_features_ontology,
		COALESCE(jsonb_agg(DISTINCT gf.ontologies_used) FILTER (WHERE gf.ontologies_used IS NOT NULL), ''{}''::jsonb) AS ontologies_used,
		CASE WHEN ' || _none_dataset || ' 
				THEN ''{}''::jsonb
			WHEN ' || _only_miss_datasets || '
				THEN dat_missing.datasets_missing_response
			WHEN ' || _all_dataset || ' 
				THEN dat_missing.datasets_missing_response || datasets_response.datasets_response
			ELSE datasets_response.datasets_response
		END AS datasets_response
	FROM (
		select var.*,
			dat.reference_genome::text AS assembly_id
		FROM public.variant var
		INNER JOIN public.dataset_table dat ON dat.id=var.dataset_id';
			
	_query = _query || _joins_clause || _where_clause;
	
	_query = _query || '
		ORDER BY var.id
		LIMIT $16 OFFSET $17
	) var
	LEFT JOIN LATERAL (
		SELECT 
			jsonb_agg(DISTINCT jsonb_build_object(
					''datasetId'',dat.stable_id,
					''exists'',TRUE,
					''frequency'',var.frequency,
					''variantCount'',var.variant_cnt,
					''callCount'',var.call_cnt,
					''sampleCount'',var.sample_cnt,
					''note'', null,
					''externalUrl'', null,
					''handovers'', dat_hand.dataset_handovers,
					''info'', jsonb_build_object(
						''matchingSampleCount'',var.matching_sample_cnt
					)
				)
			) AS datasets_response,
			array_agg(DISTINCT dat.id) AS dataset_ids
		FROM public.dataset_table dat 
		LEFT JOIN (
			SELECT 
				dat_hand.dataset_id, ' || 
				_handover_schema_format || ' AS dataset_handovers
			FROM public.dataset_handover_table dat_hand
			INNER JOIN public.handover_table hand ON hand.id=dat_hand.handover_id
			GROUP BY dat_hand.dataset_id
		) dat_hand ON dat_hand.dataset_id=dat.id
		WHERE dat.id=var.dataset_id
		GROUP BY var.id
	) datasets_response ON TRUE';

	_query = _query || '
	LEFT JOIN LATERAL (
		SELECT ' || _genomic_features_schema_formats || '
			AS genomic_features_ontology,
			' || _variant_resources_schema_formats || '
			AS ontologies_used
		FROM unnest(var.gene_names, var.transcript_ids) AS t(gene_name, transcript_id)
		join lateral (
			values 
				(t.gene_name, ''gene''), 
				(t.transcript_id, ''transcript'') 
		) as v(gene_or_transcript, label) on true
		LEFT JOIN public.ontology_term_table ot_gen_feat ON ot_gen_feat.target_table=''public.variant_table'' AND ot_gen_feat.column_name=''genomicFeatures'' AND ot_gen_feat.label=v.label
		LEFT JOIN public.ontology_table ot_ontology ON ot_ontology.id=ot_gen_feat.ontology_id
		LEFT JOIN LATERAL (
			values 
			(ot_ontology.ontology_id, ot_ontology.ontology_name, ot_ontology.namespace_prefix,
			ot_ontology.url, ot_ontology.version, ot_ontology.iri_prefix)
		) AS ot(ontology_id, ontology_name, namespace_prefix, url, version, iri_prefix) ON TRUE
		where v.gene_or_transcript is not null
	) gf ON TRUE
	LEFT JOIN LATERAL (
		VALUES 
		(gf.ontologies_used)
	) AS ontologies(used) ON TRUE';
		
	_query = _query || '	
	LEFT JOIN LATERAL (
		SELECT ' || _datasets_missing_response_schema_format || ' AS datasets_missing_response
		FROM public.dataset_table dat 
		WHERE NOT(dat.id  = ANY (datasets_response.dataset_ids))
	) dat_missing ON TRUE
	GROUP BY 
		' || _required_cols || ',
		genomic_regions_ontology, 
		molecular_effects_ontology,
		gf.genomic_features_ontology,
		gf.ontologies_used,
		datasets_response.datasets_response,
		datasets_response.dataset_ids,
		dat_missing.datasets_missing_response
	ORDER BY 
		var.id';

	RAISE NOTICE '_query: %', _query;

	RETURN QUERY EXECUTE _query
	USING _variant_type, _start, _refseq, _reference_bases, _alternate_bases, 
		_reference_genome, _dataset_stable_ids, _end, _start_min, _start_max, _end_min, _end_max, 
		_biosample_stable_id, _individual_stable_id, _gvariant_id, _limit, _offset;
	-- #1=_variant_type, #2=_start, #3=_refseq, #4=_reference_bases, #5=_alternate_bases, 
	-- #6=_reference_genome, #7=_dataset_stable_ids, #8=_end, #9=_start_min, #10=_start_max, 
	-- #11=_end_min, #12=_end_max, 
	-- #13=_biosample_stable_id, #14=_individual_stable_id, #15=_gvariant_id,
	-- #16=_limit, #17=_offset
END
$_$;
 �  DROP FUNCTION public.fetch_gvariants(_variant_type text, _start integer, _start_min integer, _start_max integer, _end integer, _end_min integer, _end_max integer, _refseq character varying, _reference_bases text, _alternate_bases text, _reference_genome text, _include_dataset_responses text, _dataset_stable_ids text[], _is_authenticated boolean, _biosample_stable_id text, _individual_stable_id text, _gvariant_id integer, _filters text[], _offset integer, _limit integer, _requested_schemas text[]);
       public          beacon    false    711                       1255    16413 �   fetch_individuals(text, integer, integer, integer, integer, integer, integer, text, text, text, text, text[], boolean, text, text, integer, text[], integer, integer, text[])    FUNCTION     �4  CREATE FUNCTION public.fetch_individuals(_variant_type text, _start integer, _start_min integer, _start_max integer, _end integer, _end_min integer, _end_max integer, _refseq text, _reference_bases text, _alternate_bases text, _reference_genome text, _dataset_stable_ids text[], _is_authenticated boolean, _biosample_stable_id text, _individual_stable_id text, _gvariant_id integer, _filters text[], _offset integer, _limit integer, _requested_schemas text[]) RETURNS SETOF public.fetch_individuals_result_type
    LANGUAGE plpgsql
    AS $_$

-- PRECONDITIONS:
-- _dataset_stable_ids is optional
-- If _is_authenticated=false or _dataset_stable_ids is empty, only PUBLIC datasets will be queried 
--		(regardless there are registered or controlled in _dataset_stable_ids)
-- If _is_authenticated=true, datasets in _dataset_stable_ids will be queried
-- _offset is the number of rows to be skipped
-- _limit is the number of rows to be returned
-- 	If _limit=null & _offset=null, no pagination is applied
-- Expected combinations:
--		* _reference_genome + _refseq + _alternate_bases + _reference_bases + _start
--		* _reference_genome + _refseq + _alternate_bases + (_reference_bases) + _start + _end
--		* _reference_genome + _refseq + (_variant_type) + _start + _end
--		* _reference_genome + _refseq + (_variant_type) + _start_min + _start_max + _end_min + _end_max

-- If your individual_table schema is different, you will have to change:
-- * Type: fetch_individuals_result_type: return type of this function. 
--		It must match with the columns returned in the view function_fetch_individuals_cols_required (see next).
-- * Views: 
-- 		function_fetch_individuals_cols_required: list the columns to be returned in the  outter SELECT in 
--			this function's query.
--		individual_w_ontology_terms: view on top of individual_table, which also includes the ontologies values.

DECLARE
	_query text;
	_where_clause text;
	_filters_converted text;
	_joins_clause text;
	_join_variant_table bool;
	_join_individual_pedigree_table bool;
	_join_individual_disease_table bool;
	_join_individual_phenotypic_feature_table bool;
	_join_pedigree_table bool;
	_required_cols text;
	-- Schemas and formats for some fields
	_phf_schema_formats text;
	_dis_schema_formats text;
	_ped_schema_formats text;
	_individual_resources_schema_formats text;
	_handover_schema_format text;
	
BEGIN
	--------------------------
	-- Initialize variables --
	--------------------------
	_join_variant_table = FALSE;
	_join_pedigree_table = FALSE;
	_join_individual_pedigree_table = FALSE;
	_join_individual_disease_table = FALSE;
	_join_individual_phenotypic_feature_table = FALSE;

	-----------------------------------------------------
	-- Get columns to be returned in the outter SELECT --
	-----------------------------------------------------
	SELECT 'ind.'|| string_agg(quote_ident(column_name),', ind.' ORDER BY ordinal_position) INTO _required_cols
	FROM INFORMATION_SCHEMA.COLUMNS 
	WHERE table_name = 'function_fetch_individuals_cols_required';

	---------------------
	-- Prepare filters --
	---------------------
	SELECT * INTO _filters_converted
	FROM public.parse_filters(_filters);
	
	----------------------------
	-- Build the WHERE clause --
	----------------------------
	SELECT * INTO _where_clause
	FROM public.add_where_clause_conditions(_variant_type, _start_min, _end, _reference_bases, 
											_alternate_bases, _dataset_stable_ids, _is_authenticated, 
											_biosample_stable_id, _individual_stable_id, _gvariant_id, 
											_filters_converted);
	RAISE NOTICE 'WHERE=%', _where_clause;
	
	--------------------------------
	-- Find what joins are needed --
	--------------------------------
	IF _where_clause LIKE '%var.%' THEN _join_variant_table=TRUE; END IF;
	IF _where_clause LIKE '%ind_ped.%' THEN _join_individual_pedigree_table=TRUE; END IF;
	IF _where_clause LIKE '%ind_dis.%' THEN _join_individual_disease_table=TRUE; END IF;
	IF _where_clause LIKE '%ind_phf.%' THEN _join_individual_phenotypic_feature_table=TRUE; END IF;
	IF _where_clause LIKE '%ped.%' THEN 
		_join_individual_pedigree_table=TRUE; 
		_join_pedigree_table=TRUE; 
	END IF;
	
	-------------------
	-- Prepare joins --
	-------------------
	_joins_clause = '';
	IF _join_variant_table THEN
		_joins_clause = _joins_clause || '
		INNER JOIN public.variant_sample_table var_sam ON var_sam.sample_id=sam.id
		INNER JOIN public.variant_table var ON var.id=var_sam.variant_id AND var.dataset_id=dat.id';
	END IF;
	
	IF _join_individual_pedigree_table THEN
		_joins_clause = _joins_clause || '
		INNER JOIN public.individual_pedigree_w_ontology_terms ind_ped ON ind_ped.individual_id=ind.id';
	END IF;
	
	IF _join_individual_disease_table THEN
		_joins_clause = _joins_clause || '
		INNER JOIN public.individual_disease_w_ontology_terms ind_dis ON ind_dis.individual_id=ind.id';
	END IF;
	
	IF _join_individual_phenotypic_feature_table THEN
		_joins_clause = _joins_clause || '
		INNER JOIN public.individual_phenotypic_feature_w_ontology_terms ind_phf ON ind_phf.individual_id=ind.id';
	END IF;
	
	IF _join_pedigree_table THEN
		_joins_clause = _joins_clause || '
		INNER JOIN public.pedigree_table ped ON ped.stable_id=ind_ped.pedigree_stable_id';
	END IF;
	
	---------------------------------
	-- Get the schemas and formats --
	---------------------------------
	SELECT COALESCE(_schema_formats, quote_literal('{}')) INTO _phf_schema_formats
	FROM public.find_format(_requested_schemas,'public.individual_table','phenotypic_features');

	IF _phf_schema_formats=quote_literal('{}') THEN 
		RAISE EXCEPTION 'Requested schemas not found! %', _requested_schemas; 
	END IF;

	SELECT COALESCE(_schema_formats, quote_literal('{}')) INTO _dis_schema_formats
	FROM public.find_format(_requested_schemas,'public.individual_table','diseases');

	IF _dis_schema_formats=quote_literal('{}') THEN 
		RAISE EXCEPTION 'Requested schemas not found! %', _requested_schemas; 
	END IF;
	
	SELECT COALESCE(_schema_formats, quote_literal('{}')) INTO _ped_schema_formats
	FROM public.find_format(_requested_schemas,'public.individual_table','pedigrees');

	IF _ped_schema_formats=quote_literal('{}') THEN 
		RAISE EXCEPTION 'Requested schemas not found! %', _requested_schemas; 
	END IF;
	
	SELECT COALESCE(_schema_formats, quote_literal('{}')) INTO _individual_resources_schema_formats
	FROM public.find_format(_requested_schemas,'public.individual_table','individual_resources');

	SELECT COALESCE(_schema_formats, quote_literal('{}')) INTO _handover_schema_format
	FROM public.find_format(ARRAY['beacon-default-v2.0.0-draft.2'],'handover','handover');
	
	---------------------
	-- BUILD THE QUERY --
	---------------------
	_query = '
		SELECT DISTINCT ON (ind.stable_id)
			' || _required_cols || ',
			array_agg(DISTINCT dat.stable_id::text) AS dataset_ids,
			COALESCE(array_agg(DISTINCT ind.alternative_id_ontology) FILTER (WHERE ind.alternative_id_ontology IS NOT NULL), ARRAY[]::text[]) AS alternative_ids,
			COALESCE(array_agg(DISTINCT alt_ids_phenopackets.alternative_id_ontology) FILTER (WHERE alt_ids_phenopackets.alternative_id_ontology IS NOT NULL), ARRAY[]::text[]) AS alterntive_ids_phenopackets,
			ind_hand.individual_handovers,
			COALESCE(jsonb_agg(DISTINCT ind_ped2.pedigrees) FILTER (WHERE ind_ped2.pedigrees IS NOT NULL), ''{}''::jsonb) AS pedigrees,
			COALESCE(jsonb_agg(DISTINCT ind_dis2.diseases) FILTER (WHERE ind_dis2.diseases IS NOT NULL), ''{}''::jsonb) AS diseases,
			COALESCE(jsonb_agg(DISTINCT ind_phf2.phenotypic_features) FILTER (WHERE ind_phf2.phenotypic_features IS NOT NULL), ''{}''::jsonb) AS phenotypic_features,
			COALESCE(jsonb_agg(DISTINCT ontologies.used) FILTER (WHERE ontologies.used IS NOT NULL), ''{}''::jsonb) AS ontologies_used			
		FROM public.individual_w_ontology_terms ind 
		INNER JOIN public.sample_table sam ON sam.individual_id=ind.id
		INNER JOIN public.dataset_sample_table dataset_sam ON dataset_sam.sample_id=sam.id
		INNER JOIN public.dataset_table dat ON dat.id = dataset_sam.dataset_id';
	
	-- Add LEFT JOINs
	_query = _query || '
		LEFT JOIN individual_alternative_id_w_ontology alt_ids_phenopackets ON alt_ids_phenopackets.individual_id=ind.id
		LEFT JOIN ( -- Individual''s handovers
			SELECT hand.individual_id,
				' || _handover_schema_format || ' AS individual_handovers
			FROM individual_handovers hand
			GROUP BY hand.individual_id
		) ind_hand ON ind_hand.individual_id=ind.id
		LEFT JOIN( -- Individual''s pedigrees
			SELECT ind_ped.individual_id,
				' || _ped_schema_formats || ' AS pedigrees
			FROM public.individual_pedigree_w_ontology_terms ind_ped 
		) ind_ped2 ON ind_ped2.individual_id=ind.id
		LEFT JOIN( -- Individual''s diseases
			SELECT ind_dis.individual_id,
				' || _dis_schema_formats || ' AS diseases,
				' || _individual_resources_schema_formats || ' AS ontologies_used
			FROM public.individual_disease_w_ontology_terms ind_dis 
			LEFT JOIN public.ontology_table disease_ontology ON disease_ontology.id=ind_dis.disease_ontology_id
			LEFT JOIN public.ontology_table age_group_ontology ON age_group_ontology.id=ind_dis.age_group_ontology_id
			LEFT JOIN public.ontology_table stage_ontology ON stage_ontology.id=ind_dis.stage_ontology_id
			LEFT JOIN public.ontology_table onset_type_ontology ON onset_type_ontology.id=ind_dis.onset_type_ontology_id
			LEFT JOIN LATERAL (
				values 
				(disease_ontology.ontology_id, disease_ontology.ontology_name, disease_ontology.namespace_prefix,
				disease_ontology.url, disease_ontology.version, disease_ontology.iri_prefix),
				(age_group_ontology.ontology_id, age_group_ontology.ontology_name, age_group_ontology.namespace_prefix,
				age_group_ontology.url, age_group_ontology.version, age_group_ontology.iri_prefix),
				(stage_ontology.ontology_id, stage_ontology.ontology_name, stage_ontology.namespace_prefix,
				stage_ontology.url, stage_ontology.version, stage_ontology.iri_prefix),
				(onset_type_ontology.ontology_id, onset_type_ontology.ontology_name, onset_type_ontology.namespace_prefix,
				onset_type_ontology.url, onset_type_ontology.version, onset_type_ontology.iri_prefix)
			)	AS ot(ontology_id, ontology_name, namespace_prefix, url, version, iri_prefix) ON TRUE
		) ind_dis2 ON ind_dis2.individual_id=ind.id
		LEFT JOIN( -- Individual''s phenotypic features
			SELECT ind_phf.individual_id,
				' || _phf_schema_formats || ' AS phenotypic_features,
				' || _individual_resources_schema_formats || ' AS ontologies_used
			FROM public.individual_phenotypic_feature_w_ontology_terms ind_phf 
			LEFT JOIN public.ontology_table phenotype_ontology ON phenotype_ontology.id=ind_phf.phenotype_ontology_id
			LEFT JOIN public.ontology_table onset_type_ontology ON onset_type_ontology.id=ind_phf.onset_type_ontology_id
			LEFT JOIN public.ontology_table age_group_ontology ON age_group_ontology.id=ind_phf.age_group_ontology_id
			LEFT JOIN public.ontology_table severity_ontology ON severity_ontology.id=ind_phf.severity_ontology_id
			LEFT JOIN LATERAL (
				values 
				(phenotype_ontology.ontology_id, phenotype_ontology.ontology_name, phenotype_ontology.namespace_prefix,
				phenotype_ontology.url, phenotype_ontology.version, phenotype_ontology.iri_prefix),
				(onset_type_ontology.ontology_id, onset_type_ontology.ontology_name, onset_type_ontology.namespace_prefix,
				onset_type_ontology.url, onset_type_ontology.version, age_group_ontology.iri_prefix),
				(age_group_ontology.ontology_id, age_group_ontology.ontology_name, age_group_ontology.namespace_prefix,
				age_group_ontology.url, age_group_ontology.version, age_group_ontology.iri_prefix),
				(severity_ontology.ontology_id, severity_ontology.ontology_name, severity_ontology.namespace_prefix,
				severity_ontology.url, severity_ontology.version, severity_ontology.iri_prefix)
			)	AS ot(ontology_id, ontology_name, namespace_prefix, url, version, iri_prefix) ON TRUE
		) ind_phf2 ON ind_phf2.individual_id=ind.id
		LEFT JOIN LATERAL (
			SELECT ' || _individual_resources_schema_formats || '
				AS ontologies_used
			FROM public.ontology_table ot 
			WHERE ot.id=ind.taxon_ontology_id
			UNION
			SELECT ' || _individual_resources_schema_formats || '
				AS ontologies_used
			FROM public.ontology_table ot 
			WHERE ot.id=ind.sex_ontology_id
			UNION
			SELECT ' || _individual_resources_schema_formats || '
				AS ontologies_used
			FROM public.ontology_table ot 
			WHERE ot.id=alt_ids_phenopackets.alternative_id_ontology_id
		) taxon_sex_alternative_id_ontology ON TRUE
		LEFT JOIN LATERAL (
			VALUES 
			(taxon_sex_alternative_id_ontology.ontologies_used), 
			(ind_dis2.ontologies_used),
			(ind_phf2.ontologies_used)
		) AS ontologies(used) ON TRUE
		';

	_query = _query || _joins_clause || _where_clause;
	
	_query = _query || ' 
		GROUP BY 
			' || _required_cols || ',
			ind_hand.individual_handovers
 		ORDER BY ' || _required_cols;
	
	-- Apply pagination
	_query = _query || '
		LIMIT $16 OFFSET $17';

	RAISE NOTICE '_query: %', _query;

	RETURN QUERY EXECUTE _query
	USING _variant_type, _start, _refseq, _reference_bases, _alternate_bases, 
		_reference_genome, _dataset_stable_ids, _end, _start_min, _start_max, _end_min, _end_max, 
		_biosample_stable_id, _individual_stable_id, _gvariant_id, 
		_limit, _offset;
	-- #1=_variant_type, #2=_start, #3=_refseq, #4=_reference_bases, #5=_alternate_bases, 
	-- #6=_reference_genome, #7=_dataset_stable_ids, #8=_end, #9=_start_min, #10=_start_max, 
	-- #11=_end_min, #12=_end_max, 
	-- #13=_biosample_stable_id, #14=_individual_stable_id, #15=_gvariant_id,
	-- #16=_limit, #17=_offset
END
$_$;
 �  DROP FUNCTION public.fetch_individuals(_variant_type text, _start integer, _start_min integer, _start_max integer, _end integer, _end_min integer, _end_max integer, _refseq text, _reference_bases text, _alternate_bases text, _reference_genome text, _dataset_stable_ids text[], _is_authenticated boolean, _biosample_stable_id text, _individual_stable_id text, _gvariant_id integer, _filters text[], _offset integer, _limit integer, _requested_schemas text[]);
       public          beacon    false    620                       1255    16415 �   fetch_samples(text, integer, integer, integer, integer, integer, integer, text, text, text, text, text[], boolean, text, text, integer, text[], integer, integer, text[])    FUNCTION     �,  CREATE FUNCTION public.fetch_samples(_variant_type text, _start integer, _start_min integer, _start_max integer, _end integer, _end_min integer, _end_max integer, _refseq text, _reference_bases text, _alternate_bases text, _reference_genome text, _dataset_stable_ids text[], _is_authenticated boolean, _biosample_stable_id text, _individual_stable_id text, _gvariant_id integer, _filters text[], _offset integer, _limit integer, _requested_schemas text[]) RETURNS SETOF public.fetch_samples_result_type
    LANGUAGE plpgsql
    AS $_$

-- PRECONDITIONS:
-- _dataset_stable_ids is optional
-- If _is_authenticated=false or _dataset_stable_ids is empty, only PUBLIC datasets will be queried 
--		(regardless there are registered or controlled in _dataset_stable_ids)
-- If _is_authenticated=true, datasets in _dataset_stable_ids will be queried
-- _offset is the number of rows to be skipped
-- _limit is the number of rows to be returned
-- 	If _limit=null & _offset=null, no pagination is applied
-- Expected combinations:
--		* _reference_genome + _refseq + _alternate_bases + _reference_bases + _start
--		* _reference_genome + _refseq + _alternate_bases + (_reference_bases) + _start + _end
--		* _reference_genome + _refseq + (_variant_type) + _start + _end
--		* _reference_genome + _refseq + (_variant_type) + _start_min + _start_max + _end_min + _end_max

-- If your sample_table schema is different, you will have to change:
-- * Type: fetch_samples_result_type: return type of this function. 
--		It must match with the columns returned in the view function_fetch_samples_cols_required (see next).
-- * Views: 
-- 		function_fetch_samples_cols_required: list the columns to be returned in the  outter SELECT in 
--			this function's query.
--		sample_w_ontology_terms: view on top of sample_table, which also includes the ontologies values.

DECLARE
	_query text;
	_joins_clause text;
	_where_clause text;
	_filters_converted text;
	_join_variant_table bool;
	_join_pedigree_table bool;
	_join_individual_pedigree_table bool;
	_join_individual_disease_table bool;
	_join_individual_phenotypic_feature_table bool;
	_required_cols text;
	-- Schemas and formats for some fields
	_origins_schema_names text;
	_origins_schema_formats text;
	_sample_resources_schema_formats text;
	_handover_schema_format text;
BEGIN
	_join_variant_table = FALSE;
	_join_pedigree_table = FALSE;
	_join_individual_pedigree_table = FALSE;
	_join_individual_disease_table = FALSE;
	_join_individual_phenotypic_feature_table = FALSE;

	-----------------------------------------------------
	-- Get columns to be returned in the outter SELECT --
	-----------------------------------------------------
	SELECT 'sam.'|| string_agg(quote_ident(column_name),', sam.' ORDER BY ordinal_position) INTO _required_cols
	FROM INFORMATION_SCHEMA.COLUMNS 
	WHERE table_name = 'function_fetch_samples_cols_required';
	
	---------------------
	-- Prepare filters --
	---------------------
	SELECT * INTO _filters_converted
	FROM public.parse_filters(_filters);

	----------------------------
	-- Build the WHERE clause --
	----------------------------
	SELECT * INTO _where_clause
	FROM public.add_where_clause_conditions(_variant_type, _start_min, _end, _reference_bases, 
											_alternate_bases, _dataset_stable_ids, _is_authenticated, 
											_biosample_stable_id, _individual_stable_id, _gvariant_id, 
											_filters_converted);
	RAISE NOTICE 'WHERE=%', _where_clause;
											
	IF _where_clause LIKE '%var.%' THEN _join_variant_table=TRUE; END IF;
	
	--------------------------------
	-- Find what joins are needed --
	--------------------------------
	IF _where_clause LIKE '%var.%' THEN _join_variant_table=TRUE; END IF;
	IF _where_clause LIKE '%ped.%' THEN 
		_join_individual_pedigree_table=TRUE;
		_join_pedigree_table=TRUE; 
	END IF;
	IF _where_clause LIKE '%ind_ped.%' THEN _join_individual_pedigree_table=TRUE; END IF;
	IF _where_clause LIKE '%ind_dis.%' THEN _join_individual_disease_table=TRUE; END IF;
	IF _where_clause LIKE '%ind_phf.%' THEN _join_individual_phenotypic_feature_table=TRUE; END IF;

	-------------------
	-- Prepare joins --
	-------------------
	_joins_clause = '';
	IF _join_variant_table THEN
		_joins_clause = _joins_clause || '
		INNER JOIN public.variant_sample_table var_sam ON var_sam.sample_id=sam.id
		INNER JOIN public.variant_table var ON var.id=var_sam.variant_id';
	END IF;
	
	IF _join_individual_pedigree_table THEN
		_joins_clause = _joins_clause || '
		INNER JOIN public.individual_pedigree_w_ontology_terms ind_ped ON ind_ped.individual_id=ind.id';
	END IF;
	
	IF _join_pedigree_table THEN
		_joins_clause = _joins_clause || '
		INNER JOIN public.pedigree_table ped ON ped.stable_id=ind_ped.pedigree_stable_id';
	END IF;
	
	IF _join_individual_disease_table THEN
		_joins_clause = _joins_clause || '
		INNER JOIN public.individual_disease_w_ontology_terms ind_dis ON ind_dis.individual_id=ind.id';
	END IF;
	
	IF _join_individual_phenotypic_feature_table THEN
		_joins_clause = _joins_clause || '
		INNER JOIN public.individual_phenotypic_feature_w_ontology_terms ind_phf ON ind_phf.individual_id=ind.id';
	END IF;
	
	---------------------------------
	-- Get the schemas and formats --
	---------------------------------
	SELECT COALESCE(_schema_names, '-'), COALESCE(_schema_formats, quote_literal('{}')) INTO _origins_schema_names, _origins_schema_formats
	FROM public.find_format(_requested_schemas,'public.sample_table','sample_origins_ontology');
	
	IF _origins_schema_formats='{}' THEN RAISE EXCEPTION 'Requested schemas not found! %', _requested_schemas; END IF;
	
	SELECT COALESCE(_schema_formats, quote_literal('{}')) INTO _sample_resources_schema_formats
	FROM public.find_format(_requested_schemas,'public.sample_table','sample_resources');
	
	SELECT COALESCE(_schema_formats, quote_literal('{}')) INTO _handover_schema_format
	FROM public.find_format(ARRAY['beacon-default-v2.0.0-draft.2'],'handover','handover');
	
	---------------------
	-- BUILD THE QUERY --
	---------------------
	_query = '
	SELECT 
		' || _required_cols || ',
		CASE WHEN ' || _origins_schema_names || ' ILIKE ''%phenopacket%'' 
			THEN sam.sample_origins_ontology->0 -- for phenopackets format, only return one value
			ELSE sam.sample_origins_ontology 
		END as sample_origins_ontology
	FROM (
		SELECT DISTINCT ON (sam.stable_id)
			sam.stable_id AS biosample_stable_id,
			ind.stable_id AS individual_stable_id,
			sam.description,
			sam.biosample_status,
			sam.biosample_status_ontology,
			sam.biosample_status_ontology_label,
			sam.individual_age_at_collection,
			sam.obtention_procedure,
			sam.obtention_procedure_ontology,
			sam.obtention_procedure_ontology_label,
			sam.tumor_progression,
			sam.tumor_progression_ontology,
			sam.tumor_progression_ontology_label,
			sam.tumor_grade,
			sam.tumor_grade_ontology,
			sam.tumor_grade_ontology_label,
			sam.collection_date,
			sam_hand.biosample_handovers,
			sam.sample_origins,
			COALESCE(jsonb_agg(DISTINCT sam_origins.sample_origin_descriptors) FILTER (WHERE sam_origins.sample_origin_descriptors IS NOT NULL), ''{}''::jsonb) AS sample_origins_ontology,
			--sam_origins.sample_origin_descriptors AS sample_origins_ontology
			COALESCE(jsonb_agg(DISTINCT ontologies.used) FILTER (WHERE ontologies.used IS NOT NULL), ''{}''::jsonb) AS ontologies_used,
			sam.alternative_ids,
			sam.study_id,
			sam.bioproject_id,
			COALESCE(sam.files,''{}''::jsonb) AS files
		FROM public.sample_w_ontology_terms sam
		INNER JOIN public.individual_w_ontology_terms ind ON ind.id=sam.individual_id
		INNER JOIN public.dataset_sample_table dataset_sam ON dataset_sam.sample_id=sam.id
		INNER JOIN public.dataset_table dat ON dat.id = dataset_sam.dataset_id';
	
	_query = _query || _joins_clause;
	
	-- Add LEFT JOINS
	_query = _query || '
		LEFT JOIN (
			-- Biosample''s handovers
			SELECT sam_hand.sample_id,' || 
				_handover_schema_format || ' AS biosample_handovers
			FROM public.sample_handover_table sam_hand
			LEFT JOIN public.handover_table hand ON hand.id=sam_hand.handover_id
			GROUP BY sam_hand.sample_id
		) sam_hand ON sam_hand.sample_id=ind.id
		LEFT JOIN LATERAL (
			SELECT ' || _origins_schema_formats || '
				AS sample_origin_descriptors,
					' || _sample_resources_schema_formats || '
				AS ontologies_used
			FROM jsonb_array_elements(sam.sample_origins) AS sam_origins(data)
			LEFT JOIN public.ontology_term_table ot_origin_type ON ot_origin_type.target_table=''public.sample_table'' AND ot_origin_type.column_name=''sampleOriginType'' 
					AND lower(ot_origin_type.column_value)=lower(sam_origins.data->>''sampleOriginType'')
			LEFT JOIN public.ontology_term_table ot_origin_detail ON ot_origin_detail.target_table=''public.sample_table'' AND ot_origin_detail.column_name=''sampleOriginDetail'' 
				AND lower(ot_origin_detail.column_value)=lower(sam_origins.data->>''sampleOriginDetail'')
			LEFT JOIN public.ontology_table ot_origin_detail_ontology ON ot_origin_detail_ontology.id=ot_origin_detail.ontology_id
			LEFT JOIN LATERAL (
				values 
				(ot_origin_detail_ontology.ontology_id, ot_origin_detail_ontology.ontology_name, ot_origin_detail_ontology.namespace_prefix,
				ot_origin_detail_ontology.url, ot_origin_detail_ontology.version, ot_origin_detail_ontology.iri_prefix)
			)	AS ot(ontology_id, ontology_name, namespace_prefix, url, version, iri_prefix) ON TRUE
			ORDER BY 
				sam_origins.data->>''sampleOriginType'',
				sam_origins.data->>''sampleOriginDetail''
		)sam_origins ON TRUE
		LEFT JOIN LATERAL (
			VALUES 
			(sam_origins.ontologies_used)
		) AS ontologies(used) ON TRUE';
	
	_query = _query || _where_clause;
	
	_query = _query || ' 
	GROUP BY sam.stable_id,
			ind.stable_id,
			sam.description,
			sam.biosample_status,
			sam.biosample_status_ontology,
			sam.biosample_status_ontology_label,
			sam.individual_age_at_collection,
			sam.obtention_procedure,
			sam.obtention_procedure_ontology,
			sam.obtention_procedure_ontology_label,
			sam.tumor_progression,
			sam.tumor_progression_ontology,
			sam.tumor_progression_ontology_label,
			sam.tumor_grade,
			sam.tumor_grade_ontology,
			sam.tumor_grade_ontology_label,
			sam.collection_date,
			sam_hand.biosample_handovers,
			sam.sample_origins,
			sam.alternative_ids,
			sam.study_id,
			sam.bioproject_id,
			files
	ORDER BY sam.stable_id,
			ind.stable_id,
			sam.description,
			sam.biosample_status,
			sam.biosample_status_ontology,
			sam.individual_age_at_collection,
			sam.obtention_procedure,
			sam.obtention_procedure_ontology,
			sam.tumor_progression,
			sam.tumor_progression_ontology,
			sam.tumor_grade,
			sam.tumor_grade_ontology,
			sam.alternative_ids,
			sam.study_id,
			sam.bioproject_id,
			files';
	
		-- Apply pagination
		_query = _query || '
		LIMIT $16 OFFSET $17
	)sam';

	RAISE NOTICE '_query: %', _query;

	RETURN QUERY EXECUTE _query
	USING _variant_type, _start, _refseq, _reference_bases, _alternate_bases, 
		_reference_genome, _dataset_stable_ids, _end, _start_min, _start_max, _end_min, _end_max, 
		_biosample_stable_id, _individual_stable_id, _gvariant_id, _limit, _offset;
	-- #1=_variant_type, #2=_start, #3=_refseq, #4=_reference_bases, #5=_alternate_bases, 
	-- #6=_reference_genome, #7=_dataset_stable_ids, #8=_end, #9=_start_min, #10=_start_max, 
	-- #11=_end_min, #12=_end_max, 
	-- #13=_biosample_stable_id, #14=_individual_stable_id, #15=_gvariant_id
	-- #16=_limit, #17=_offset
END
$_$;
 �  DROP FUNCTION public.fetch_samples(_variant_type text, _start integer, _start_min integer, _start_max integer, _end integer, _end_min integer, _end_max integer, _refseq text, _reference_bases text, _alternate_bases text, _reference_genome text, _dataset_stable_ids text[], _is_authenticated boolean, _biosample_stable_id text, _individual_stable_id text, _gvariant_id integer, _filters text[], _offset integer, _limit integer, _requested_schemas text[]);
       public          beacon    false    623            "           1255    16417    find_format(text[], text, text)    FUNCTION       CREATE FUNCTION public.find_format(_requested_schemas text[], _table_name text, _field_name text, OUT _schema_names text, OUT _schema_formats text) RETURNS record
    LANGUAGE plpgsql
    AS $$

DECLARE
	_schema_names_tmp text;
	_schema_formats_tmp text;
BEGIN

	select string_agg(quote_literal(schema_name), ','), string_agg(format, ',') INTO _schema_names_tmp, _schema_formats_tmp
	from schema_table
	where field_name=_field_name AND table_name=_table_name AND
		CASE WHEN _requested_schemas IS NULL OR COALESCE(array_length(_requested_schemas, 1), 0)=0 
		THEN is_default=true
		ELSE schema_name = ANY(_requested_schemas)
		END;
	
	IF _schema_names_tmp IS NULL THEN
		RAISE NOTICE '_schema_names_tmp is null';
		select string_agg(quote_literal(schema_name), ','), string_agg(format, ',') INTO _schema_names_tmp, _schema_formats_tmp
		from schema_table
		where field_name=_field_name AND table_name=_table_name AND is_default=true;
	END IF;
	
	_schema_names = _schema_names_tmp;
	_schema_formats = _schema_formats_tmp;
END
$$;
 �   DROP FUNCTION public.find_format(_requested_schemas text[], _table_name text, _field_name text, OUT _schema_names text, OUT _schema_formats text);
       public          beacon    false            #           1255    16418    parse_filters(text[])    FUNCTION     B  CREATE FUNCTION public.parse_filters(_filters text[], OUT _filters_converted text) RETURNS text
    LANGUAGE plpgsql
    AS $$

BEGIN
	-- _filters format: comma separated list of CURIEs
	-- 		Example: NCIT:C46113,NCIT:C17600,GAZ:00001086

	SELECT string_agg(q.my_filter, ' AND ') INTO _filters_converted
	FROM (
		-- Builds regular filter where the term is translated into the value it encodes (e.g. NCIT:C46113 -> ind.sex='female')
		select ot.target_table_alias || '.' || ot.column_name || ot.operator || quote_literal(ot.column_value) as my_filter
		from (
			SELECT trim(split_part(filter_term,':',1)) AS ontology, 
				trim(split_part(filter_term,':',2)) AS term
			FROM unnest(_filters) AS filter_term
		)q
		LEFT JOIN public.ontology_term_table ot ON ot.ontology=q.ontology AND ot.term=q.term
		UNION
		-- Builds numeric filter (e.g. NCIT:C25347<=170 -> ind.height<=170)
		select ot.column_value || q.operator || q.value as my_filter
		from (
			select q.ontology,
				 term2[1] as term,
				unnest(operator) as operator,
				CASE WHEN term2[2] SIMILAR TO 'P[0-9]+Y' THEN date_part('year', term2[2]::interval)::int
					WHEN term2[2] SIMILAR TO '[0-9]+' THEN term2[2]::int
					ELSE null::int
				END as value
			from (
				SELECT trim(split_part(filter_term,':',1)) AS ontology, 
					trim(split_part(filter_term,':',2)) AS term
				FROM unnest(_filters) AS filter_term
			)q,
			regexp_split_to_array(q.term,'>=|<=|=|>|<') as term2,
			regexp_matches(q.term,'>=|<=|=|>|<') AS operator
		)q
		LEFT JOIN public.ontology_term_table ot ON ot.ontology=q.ontology AND ot.term=q.term
	)q
	;

END
$$;
 R   DROP FUNCTION public.parse_filters(_filters text[], OUT _filters_converted text);
       public          beacon    false            $           1255    16419 �   query_gvariants(text, integer, integer, integer, integer, integer, integer, character varying, text, text, text, text, text[], boolean, text, text, integer, text[], integer, integer, text[])    FUNCTION     i  CREATE FUNCTION public.query_gvariants(_variant_type text, _start integer, _start_min integer, _start_max integer, _end integer, _end_min integer, _end_max integer, _refseq character varying, _reference_bases text, _alternate_bases text, _reference_genome text, _include_dataset_responses text, _dataset_stable_ids text[], _is_authenticated boolean, _biosample_stable_id text, _individual_stable_id text, _gvariant_id integer, _filters text[], _offset integer, _limit integer, _requested_schemas text[]) RETURNS SETOF public.query_variants_result_type
    LANGUAGE plpgsql
    AS $_$
DECLARE
	_num_total_results bigint;
	_query text;
	
BEGIN

	SELECT * INTO _num_total_results
	FROM public.count_gvariants(
		_variant_type, 
		_start, 
		_start_min, 
		_start_max, 
		_end, 
		_end_min, 
		_end_max, 
		_refseq, 
		_reference_bases, 
		_alternate_bases, 
		_reference_genome, 
		_dataset_stable_ids, 
		_is_authenticated, 
		_biosample_stable_id, 
		_individual_stable_id, 
		_gvariant_id, 
		_filters
	);
	
	RAISE NOTICE '_num_total_results= %', _num_total_results;

	_query ='SELECT $1, * 
		FROM public.fetch_gvariants($2,$3,$4,$5,$6,$7,$8,$9,$10,$11,$12,$13,$14,$15,$16,$17,$18,$19,$20,$21,$22)';

	RETURN QUERY EXECUTE _query
	USING _num_total_results,
		_variant_type, 
		_start, 
		_start_min, 
		_start_max, 
		_end, 
		_end_min, 
		_end_max, 
		_refseq, 
		_reference_bases, 
		_alternate_bases, 
		_reference_genome, 
		_include_dataset_responses, 
		_dataset_stable_ids, 
		_is_authenticated, 
		_biosample_stable_id, 
		_individual_stable_id, 
		_gvariant_id, 
		_filters, 
		_offset, 
		_limit, 
		_requested_schemas;

END
$_$;
 �  DROP FUNCTION public.query_gvariants(_variant_type text, _start integer, _start_min integer, _start_max integer, _end integer, _end_min integer, _end_max integer, _refseq character varying, _reference_bases text, _alternate_bases text, _reference_genome text, _include_dataset_responses text, _dataset_stable_ids text[], _is_authenticated boolean, _biosample_stable_id text, _individual_stable_id text, _gvariant_id integer, _filters text[], _offset integer, _limit integer, _requested_schemas text[]);
       public          beacon    false    720            %           1255    16420 �   query_individuals(text, integer, integer, integer, integer, integer, integer, character varying, text, text, text, text[], boolean, text, text, integer, text[], integer, integer, text[])    FUNCTION     .  CREATE FUNCTION public.query_individuals(_variant_type text, _start integer, _start_min integer, _start_max integer, _end integer, _end_min integer, _end_max integer, _refseq character varying, _reference_bases text, _alternate_bases text, _reference_genome text, _dataset_stable_ids text[], _is_authenticated boolean, _biosample_stable_id text, _individual_stable_id text, _gvariant_id integer, _filters text[], _offset integer, _limit integer, _requested_schemas text[]) RETURNS SETOF public.query_individuals_result_type
    LANGUAGE plpgsql
    AS $_$
DECLARE
	_num_total_results bigint;
	_query text;
	
BEGIN

	SELECT * INTO _num_total_results
	FROM public.count_individuals(
		_variant_type, 
		_start, 
		_start_min, 
		_start_max, 
		_end, 
		_end_min, 
		_end_max, 
		_refseq, 
		_reference_bases, 
		_alternate_bases, 
		_reference_genome, 
		_dataset_stable_ids, 
		_is_authenticated, 
		_biosample_stable_id, 
		_individual_stable_id, 
		_gvariant_id, 
		_filters
	);
	
	RAISE NOTICE '_num_total_results= %', _num_total_results;

	_query ='SELECT $1, * 
		FROM public.fetch_individuals($2,$3,$4,$5,$6,$7,$8,$9,$10,$11,$12,$13,$14,$15,$16,$17,$18,$19,$20,$21)';

	RETURN QUERY EXECUTE _query
	USING _num_total_results,
		_variant_type, 
		_start, 
		_start_min, 
		_start_max, 
		_end, 
		_end_min, 
		_end_max, 
		_refseq, 
		_reference_bases, 
		_alternate_bases, 
		_reference_genome, 
		_dataset_stable_ids, 
		_is_authenticated, 
		_biosample_stable_id, 
		_individual_stable_id, 
		_gvariant_id, 
		_filters, 
		_offset, 
		_limit, 
		_requested_schemas;

END
$_$;
 �  DROP FUNCTION public.query_individuals(_variant_type text, _start integer, _start_min integer, _start_max integer, _end integer, _end_min integer, _end_max integer, _refseq character varying, _reference_bases text, _alternate_bases text, _reference_genome text, _dataset_stable_ids text[], _is_authenticated boolean, _biosample_stable_id text, _individual_stable_id text, _gvariant_id integer, _filters text[], _offset integer, _limit integer, _requested_schemas text[]);
       public          beacon    false    714            &           1255    16421 �   query_samples(text, integer, integer, integer, integer, integer, integer, character varying, text, text, text, text[], boolean, text, text, integer, text[], integer, integer, text[])    FUNCTION       CREATE FUNCTION public.query_samples(_variant_type text, _start integer, _start_min integer, _start_max integer, _end integer, _end_min integer, _end_max integer, _refseq character varying, _reference_bases text, _alternate_bases text, _reference_genome text, _dataset_stable_ids text[], _is_authenticated boolean, _biosample_stable_id text, _individual_stable_id text, _gvariant_id integer, _filters text[], _offset integer, _limit integer, _requested_schemas text[]) RETURNS SETOF public.query_samples_result_type
    LANGUAGE plpgsql
    AS $_$
DECLARE
	_num_total_results bigint;
	_query text;
	
BEGIN

	SELECT * INTO _num_total_results
	FROM public.count_samples(
		_variant_type, 
		_start, 
		_start_min, 
		_start_max, 
		_end, 
		_end_min, 
		_end_max, 
		_refseq, 
		_reference_bases, 
		_alternate_bases, 
		_reference_genome, 
		_dataset_stable_ids, 
		_is_authenticated, 
		_biosample_stable_id, 
		_individual_stable_id, 
		_gvariant_id, 
		_filters
	);
	
	RAISE NOTICE '_num_total_results= %', _num_total_results;

	_query ='SELECT $1, * 
		FROM public.fetch_samples($2,$3,$4,$5,$6,$7,$8,$9,$10,$11,$12,$13,$14,$15,$16,$17,$18,$19,$20,$21)';

	RETURN QUERY EXECUTE _query
	USING _num_total_results,
		_variant_type, 
		_start, 
		_start_min, 
		_start_max, 
		_end, 
		_end_min, 
		_end_max, 
		_refseq, 
		_reference_bases, 
		_alternate_bases, 
		_reference_genome, 
		_dataset_stable_ids, 
		_is_authenticated, 
		_biosample_stable_id, 
		_individual_stable_id, 
		_gvariant_id, 
		_filters, 
		_offset, 
		_limit, 
		_requested_schemas;

END
$_$;
 �  DROP FUNCTION public.query_samples(_variant_type text, _start integer, _start_min integer, _start_max integer, _end integer, _end_min integer, _end_max integer, _refseq character varying, _reference_bases text, _alternate_bases text, _reference_genome text, _dataset_stable_ids text[], _is_authenticated boolean, _biosample_stable_id text, _individual_stable_id text, _gvariant_id integer, _filters text[], _offset integer, _limit integer, _requested_schemas text[]);
       public          beacon    false    717            '           1255    17593 "   select_individuals_with_criteria()    FUNCTION     �   CREATE FUNCTION public.select_individuals_with_criteria() RETURNS integer[]
    LANGUAGE plpgsql
    AS $$
BEGIN
	return array[1, 2];
END;
$$;
 9   DROP FUNCTION public.select_individuals_with_criteria();
       public          beacon    false            
           1259    17602    cohort_table_id_seq    SEQUENCE     |   CREATE SEQUENCE public.cohort_table_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.cohort_table_id_seq;
       public          beacon    false                       1259    17655    cohort_table    TABLE     �  CREATE TABLE public.cohort_table (
    id integer DEFAULT nextval('public.cohort_table_id_seq'::regclass) NOT NULL,
    cohort_name text,
    cohort_type text,
    cohort_design text,
    cohort_inclusion_criteria jsonb,
    cohort_exclusion_criteria jsonb,
    cohort_license jsonb,
    cohort_contact jsonb,
    cohort_rights jsonb,
    cohort_size integer,
    cohort_data_types jsonb
);
     DROP TABLE public.cohort_table;
       public         heap    beacon    false    266            	           1259    17600    collection_event_table_id_seq    SEQUENCE     �   CREATE SEQUENCE public.collection_event_table_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.collection_event_table_id_seq;
       public          beacon    false                       1259    17664    collection_event_table    TABLE     �  CREATE TABLE public.collection_event_table (
    id integer DEFAULT nextval('public.collection_event_table_id_seq'::regclass) NOT NULL,
    event_num integer,
    event_date date,
    event_timeline jsonb,
    event_size integer,
    event_cases integer,
    event_controls integer,
    event_locations jsonb,
    event_genders jsonb,
    event_ethnicities jsonb,
    event_age_range jsonb,
    event_diseases jsonb,
    event_phenotypes jsonb,
    event_data_types jsonb,
    cohort_id integer
);
 *   DROP TABLE public.collection_event_table;
       public         heap    beacon    false    265                       1259    17678    collection_event    VIEW     �  CREATE VIEW public.collection_event AS
 SELECT collection_event_table.id,
    collection_event_table.event_num,
    collection_event_table.event_date,
    collection_event_table.event_timeline,
    collection_event_table.event_size,
    collection_event_table.event_cases,
    collection_event_table.event_controls,
    collection_event_table.event_locations,
    collection_event_table.event_genders,
    collection_event_table.event_ethnicities,
    collection_event_table.event_age_range,
    collection_event_table.event_diseases,
    collection_event_table.event_phenotypes,
    collection_event_table.event_data_types,
    collection_event_table.cohort_id
   FROM public.collection_event_table;
 #   DROP VIEW public.collection_event;
       public          beacon    false    268    268    268    268    268    268    268    268    268    268    268    268    268    268    268                       1259    17683    cohort    VIEW     :  CREATE VIEW public.cohort AS
 SELECT cohort_table.id,
    cohort_table.cohort_name,
    cohort_table.cohort_type,
    cohort_table.cohort_design,
    cohort_table.cohort_inclusion_criteria,
    cohort_table.cohort_exclusion_criteria,
    cohort_table.cohort_license,
    cohort_table.cohort_contact,
    cohort_table.cohort_rights,
    cohort_table.cohort_size,
    cohort_table.cohort_data_types,
    ( SELECT jsonb_agg(t.*) AS jsonb_agg
           FROM ( SELECT collection_event.id,
                    collection_event.event_num,
                    collection_event.event_date,
                    collection_event.event_timeline,
                    collection_event.event_size,
                    collection_event.event_cases,
                    collection_event.event_controls,
                    collection_event.event_locations,
                    collection_event.event_genders,
                    collection_event.event_ethnicities,
                    collection_event.event_age_range,
                    collection_event.event_diseases,
                    collection_event.event_phenotypes,
                    collection_event.event_data_types
                   FROM public.collection_event
                  WHERE (collection_event.cohort_id = cohort_table.id)) t) AS collection_events
   FROM public.cohort_table;
    DROP VIEW public.cohort;
       public          beacon    false    267    267    267    267    267    267    267    267    269    269    269    269    269    269    269    269    269    269    269    269    269    269    269    267    267    267            �            1259    16422    consent_code_category_table    TABLE     m   CREATE TABLE public.consent_code_category_table (
    id integer NOT NULL,
    name character varying(11)
);
 /   DROP TABLE public.consent_code_category_table;
       public         heap    beacon    false            �            1259    16425    consent_code_table    TABLE       CREATE TABLE public.consent_code_table (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    abbr character varying(20) NOT NULL,
    description character varying(400) NOT NULL,
    additional_constraint_required boolean NOT NULL,
    category_id integer NOT NULL
);
 &   DROP TABLE public.consent_code_table;
       public         heap    beacon    false            �            1259    16431    consent_code_table_id_seq    SEQUENCE     �   CREATE SEQUENCE public.consent_code_table_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.consent_code_table_id_seq;
       public          beacon    false    210                       0    0    consent_code_table_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.consent_code_table_id_seq OWNED BY public.consent_code_table.id;
          public          beacon    false    211            �            1259    16433    dataset_table    TABLE     i  CREATE TABLE public.dataset_table (
    id integer NOT NULL,
    stable_id character varying(50) NOT NULL,
    description character varying(800),
    access_type character varying(10),
    reference_genome character varying(50),
    variant_cnt bigint NOT NULL,
    call_cnt bigint,
    sample_cnt bigint NOT NULL,
    dataset_source text,
    dataset_type text,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    name text,
    CONSTRAINT dataset_table_access_type_check CHECK (((access_type)::text = ANY (ARRAY['PUBLIC'::text, 'REGISTERED'::text, 'CONTROLLED'::text])))
);
 !   DROP TABLE public.dataset_table;
       public         heap    beacon    false            �            1259    16440    dataset    VIEW     �  CREATE VIEW public.dataset AS
 SELECT d.id,
    d.stable_id,
    d.name,
    d.description,
    d.access_type,
    d.reference_genome,
    d.variant_cnt,
    d.call_cnt,
    d.sample_cnt,
    d.dataset_source,
    d.dataset_type,
    d.created_at,
    d.updated_at
   FROM public.dataset_table d
  WHERE (((d.access_type)::text = ANY (ARRAY['PUBLIC'::text, 'REGISTERED'::text, 'CONTROLLED'::text])) AND (d.variant_cnt > 0) AND ((d.reference_genome)::text <> ''::text));
    DROP VIEW public.dataset;
       public          beacon    false    212    212    212    212    212    212    212    212    212    212    212    212    212            �            1259    16445    dataset_access_level_table    TABLE     _  CREATE TABLE public.dataset_access_level_table (
    dataset_id integer NOT NULL,
    parent_field text NOT NULL,
    field text NOT NULL,
    access_level text NOT NULL,
    CONSTRAINT dataset_access_level_table_access_level_check CHECK ((access_level = ANY (ARRAY['NOT_SUPPORTED'::text, 'PUBLIC'::text, 'REGISTERED'::text, 'CONTROLLED'::text])))
);
 .   DROP TABLE public.dataset_access_level_table;
       public         heap    beacon    false            �            1259    16452    dataset_access_level    VIEW       CREATE VIEW public.dataset_access_level AS
 SELECT dat.stable_id AS dataset_stable_id,
    dal.parent_field,
    dal.field,
    dal.access_level
   FROM (public.dataset_access_level_table dal
     JOIN public.dataset_table dat ON ((dat.id = dal.dataset_id)));
 '   DROP VIEW public.dataset_access_level;
       public          beacon    false    212    212    214    214    214    214            �            1259    16456    dataset_consent_code_table    TABLE     �   CREATE TABLE public.dataset_consent_code_table (
    dataset_id integer NOT NULL,
    consent_code_id integer NOT NULL,
    additional_constraint text,
    description text,
    version text
);
 .   DROP TABLE public.dataset_consent_code_table;
       public         heap    beacon    false            �            1259    16462    dataset_consent_code    VIEW     �  CREATE VIEW public.dataset_consent_code AS
 SELECT dc.dataset_id,
    cat.name AS category,
    code.abbr AS code,
    code.description,
    dc.additional_constraint,
    dc.description AS additional_description,
    dc.version
   FROM ((public.dataset_consent_code_table dc
     JOIN public.consent_code_table code ON ((code.id = dc.consent_code_id)))
     JOIN public.consent_code_category_table cat ON ((cat.id = code.category_id)))
  ORDER BY dc.dataset_id, cat.id, code.id;
 '   DROP VIEW public.dataset_consent_code;
       public          beacon    false    210    216    216    209    216    216    216    210    209    210    210            �            1259    16467    dataset_handover_table    TABLE     r   CREATE TABLE public.dataset_handover_table (
    dataset_id integer NOT NULL,
    handover_id integer NOT NULL
);
 *   DROP TABLE public.dataset_handover_table;
       public         heap    beacon    false            �            1259    16470    dataset_sample_table    TABLE     �   CREATE TABLE public.dataset_sample_table (
    id integer NOT NULL,
    dataset_id integer NOT NULL,
    sample_id integer NOT NULL
);
 (   DROP TABLE public.dataset_sample_table;
       public         heap    beacon    false            �            1259    16473    dataset_sample_table_id_seq    SEQUENCE     �   CREATE SEQUENCE public.dataset_sample_table_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.dataset_sample_table_id_seq;
       public          beacon    false    219                       0    0    dataset_sample_table_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.dataset_sample_table_id_seq OWNED BY public.dataset_sample_table.id;
          public          beacon    false    220            �            1259    16475    dataset_table_id_seq    SEQUENCE     }   CREATE SEQUENCE public.dataset_table_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.dataset_table_id_seq;
       public          beacon    false    212                       0    0    dataset_table_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.dataset_table_id_seq OWNED BY public.dataset_table.id;
          public          beacon    false    221            �            1259    16477 (   function_fetch_individuals_cols_required    VIEW     �  CREATE VIEW public.function_fetch_individuals_cols_required AS
 SELECT NULL::text AS stable_id,
    NULL::text AS taxon_id,
    NULL::text AS taxon_id_ontology,
    NULL::text AS taxon_id_ontology_label,
    NULL::text AS sex,
    NULL::text AS sex_ontology,
    NULL::text AS ethnicity,
    NULL::text AS ethnicity_ontology,
    NULL::text AS geographic_origin,
    NULL::text AS geographic_origin_ontology,
    NULL::text AS sra_family_id,
    NULL::text AS race,
    NULL::text AS date_of_birth,
    NULL::text AS weight_kg,
    NULL::text AS height_cm,
    NULL::text AS blood_type,
    NULL::text AS medications,
    NULL::text AS procedures;
 ;   DROP VIEW public.function_fetch_individuals_cols_required;
       public          beacon    false            �            1259    16481 $   function_fetch_samples_cols_required    VIEW     �  CREATE VIEW public.function_fetch_samples_cols_required AS
 SELECT NULL::text AS biosample_stable_id,
    NULL::text AS individual_stable_id,
    NULL::text AS description,
    NULL::text AS biosample_status,
    NULL::text AS biosample_status_ontology,
    NULL::text AS biosample_status_ontology_label,
    NULL::text AS individual_age_at_collection,
    NULL::text AS obtention_procedure,
    NULL::text AS obtention_procedure_ontology,
    NULL::text AS obtention_procedure_ontology_label,
    NULL::text AS tumor_progression,
    NULL::text AS tumor_progression_ontology,
    NULL::text AS tumor_progression_ontology_label,
    NULL::text AS tumor_grade,
    NULL::text AS tumor_grade_ontology,
    NULL::text AS tumor_grade_ontology_label,
    NULL::text AS collection_date,
    NULL::text AS biosample_handovers,
    NULL::text AS ontologies_used,
    NULL::text AS alternative_ids,
    NULL::text AS study_id,
    NULL::text AS bioproject_id,
    NULL::text AS files,
    NULL::text AS sample_origins;
 7   DROP VIEW public.function_fetch_samples_cols_required;
       public          beacon    false            �            1259    16485 %   function_fetch_variants_cols_required    VIEW     �  CREATE VIEW public.function_fetch_variants_cols_required AS
 SELECT NULL::text AS id,
    NULL::text AS assembly_id,
    NULL::text AS chromosome,
    NULL::text AS refseq_id,
    NULL::text AS alternative_id,
    NULL::text AS reference,
    NULL::text AS alternate,
    NULL::text AS start,
    NULL::text AS "end",
    NULL::text AS variant_type,
    NULL::text AS genomic_hgvs_id,
    NULL::text AS transcript_hgvs_ids,
    NULL::text AS protein_hgvs_ids,
    NULL::text AS genomic_regions,
    NULL::text AS molecular_effects,
    NULL::text AS aminoacid_changes,
    NULL::text AS effect_impacts,
    NULL::text AS functional_classes,
    NULL::text AS codon_changes,
    NULL::text AS aminoacid_lengths,
    NULL::text AS gene_names,
    NULL::text AS transcript_biotypes,
    NULL::text AS gene_codings,
    NULL::text AS transcript_ids,
    NULL::text AS exon_ranks,
    NULL::text AS genotypes;
 8   DROP VIEW public.function_fetch_variants_cols_required;
       public          beacon    false            �            1259    16489    handover_table    TABLE     �   CREATE TABLE public.handover_table (
    id integer NOT NULL,
    type_id text NOT NULL,
    type_label text,
    note text,
    url text NOT NULL
);
 "   DROP TABLE public.handover_table;
       public         heap    beacon    false            �            1259    16495    handover_table_id_seq    SEQUENCE     ~   CREATE SEQUENCE public.handover_table_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.handover_table_id_seq;
       public          beacon    false    225                       0    0    handover_table_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.handover_table_id_seq OWNED BY public.handover_table.id;
          public          beacon    false    226            �            1259    16497    individual_table    TABLE     -  CREATE TABLE public.individual_table (
    id integer NOT NULL,
    stable_id text,
    sex text NOT NULL,
    ethnicity text,
    geographic_origin text,
    taxon_id text,
    sra_family_id integer,
    alternative_ids text[],
    race text,
    date_of_birth date,
    weight_kg integer,
    height_cm integer,
    blood_type text,
    medications2 jsonb,
    procedures2 jsonb,
    medications jsonb,
    procedures jsonb,
    CONSTRAINT sex_constraint CHECK ((lower(sex) = ANY (ARRAY['female'::text, 'male'::text, 'other'::text, 'unknown'::text])))
);
 $   DROP TABLE public.individual_table;
       public         heap    beacon    false            �            1259    16504 
   individual    VIEW     �   CREATE VIEW public.individual AS
 SELECT individual_table.id,
    individual_table.stable_id,
    individual_table.sex,
    individual_table.ethnicity,
    individual_table.geographic_origin,
    individual_table.taxon_id
   FROM public.individual_table;
    DROP VIEW public.individual;
       public          beacon    false    227    227    227    227    227    227            �            1259    16508    individual_alternative_id_table    TABLE     �   CREATE TABLE public.individual_alternative_id_table (
    id integer NOT NULL,
    individual_id integer NOT NULL,
    ontology text NOT NULL,
    term text NOT NULL,
    ontology_id integer
);
 3   DROP TABLE public.individual_alternative_id_table;
       public         heap    beacon    false            �            1259    16514 &   individual_alternative_id_table_id_seq    SEQUENCE     �   CREATE SEQUENCE public.individual_alternative_id_table_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 =   DROP SEQUENCE public.individual_alternative_id_table_id_seq;
       public          beacon    false    229                       0    0 &   individual_alternative_id_table_id_seq    SEQUENCE OWNED BY     q   ALTER SEQUENCE public.individual_alternative_id_table_id_seq OWNED BY public.individual_alternative_id_table.id;
          public          beacon    false    230            �            1259    16516    ontology_table    TABLE     �   CREATE TABLE public.ontology_table (
    id integer NOT NULL,
    ontology_id text NOT NULL,
    ontology_name text NOT NULL,
    namespace_prefix text NOT NULL,
    url text,
    version text NOT NULL,
    iri_prefix text
);
 "   DROP TABLE public.ontology_table;
       public         heap    beacon    false            �            1259    16522 $   individual_alternative_id_w_ontology    VIEW     �  CREATE VIEW public.individual_alternative_id_w_ontology AS
 SELECT ind_alt.individual_id,
        CASE
            WHEN (ind_alt.id IS NOT NULL) THEN ((ind_alt.ontology || ':'::text) || ind_alt.term)
            ELSE NULL::text
        END AS alternative_id_ontology,
    alt_ontology.id AS alternative_id_ontology_id
   FROM (public.individual_alternative_id_table ind_alt
     JOIN public.ontology_table alt_ontology ON ((alt_ontology.id = ind_alt.ontology_id)));
 7   DROP VIEW public.individual_alternative_id_w_ontology;
       public          beacon    false    229    229    231    229    229    229            �            1259    16526    individual_disease_table    TABLE       CREATE TABLE public.individual_disease_table (
    id integer NOT NULL,
    individual_id integer NOT NULL,
    disease_id text NOT NULL,
    age text,
    age_group text,
    stage text,
    family_history boolean,
    date_of_onset date,
    onset_type text,
    severity text
);
 ,   DROP TABLE public.individual_disease_table;
       public         heap    beacon    false            �            1259    16532    individual_disease_table_id_seq    SEQUENCE     �   CREATE SEQUENCE public.individual_disease_table_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.individual_disease_table_id_seq;
       public          beacon    false    233                       0    0    individual_disease_table_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.individual_disease_table_id_seq OWNED BY public.individual_disease_table.id;
          public          beacon    false    234            �            1259    16534    ontology_term_table    TABLE     n  CREATE TABLE public.ontology_term_table (
    id integer NOT NULL,
    ontology text NOT NULL,
    term text NOT NULL,
    target_table text NOT NULL,
    column_name text NOT NULL,
    column_value text,
    additional_comments text,
    label text,
    target_table_alias text NOT NULL,
    operator text,
    column_type text,
    ontology_id integer NOT NULL
);
 '   DROP TABLE public.ontology_term_table;
       public         heap    beacon    false            �            1259    16540 #   individual_disease_w_ontology_terms    VIEW     (  CREATE VIEW public.individual_disease_w_ontology_terms AS
 SELECT ind_dis.id,
    ind_dis.individual_id,
    ind_dis.disease_id,
        CASE
            WHEN (ot_disease.id IS NOT NULL) THEN ((ot_disease.ontology || ':'::text) || ot_disease.term)
            ELSE NULL::text
        END AS disease_id_ontology,
        CASE
            WHEN (ot_disease.id IS NOT NULL) THEN ot_disease.label
            ELSE NULL::text
        END AS disease_id_ontology_label,
    disease_ontology.id AS disease_ontology_id,
    ind_dis.age,
    ind_dis.age_group,
        CASE
            WHEN (ot_age_group.id IS NOT NULL) THEN ((ot_age_group.ontology || ':'::text) || ot_age_group.term)
            ELSE NULL::text
        END AS age_group_ontology,
        CASE
            WHEN (ot_age_group.id IS NOT NULL) THEN ot_age_group.label
            ELSE NULL::text
        END AS age_group_ontology_label,
    age_group_ontology.id AS age_group_ontology_id,
    ind_dis.stage,
        CASE
            WHEN (ot_stage.id IS NOT NULL) THEN ((ot_stage.ontology || ':'::text) || ot_stage.term)
            ELSE NULL::text
        END AS stage_ontology,
        CASE
            WHEN (ot_stage.id IS NOT NULL) THEN ot_stage.label
            ELSE NULL::text
        END AS stage_ontology_label,
    stage_ontology.id AS stage_ontology_id,
    ind_dis.family_history,
    ind_dis.date_of_onset,
    ind_dis.onset_type,
        CASE
            WHEN (ot_onset_type.id IS NOT NULL) THEN ((ot_onset_type.ontology || ':'::text) || ot_onset_type.term)
            ELSE NULL::text
        END AS onset_type_ontology,
        CASE
            WHEN (ot_onset_type.id IS NOT NULL) THEN ot_onset_type.label
            ELSE NULL::text
        END AS onset_type_ontology_label,
    onset_type_ontology.id AS onset_type_ontology_id,
    ind_dis.severity,
        CASE
            WHEN (ot_sever.id IS NOT NULL) THEN ((ot_sever.ontology || ':'::text) || ot_sever.term)
            ELSE NULL::text
        END AS severity_ontology,
        CASE
            WHEN (ot_sever.id IS NOT NULL) THEN ((ot_sever.ontology || ':'::text) || ot_sever.term)
            ELSE NULL::text
        END AS severity_ontology_label
   FROM (((((((((public.individual_disease_table ind_dis
     LEFT JOIN public.ontology_term_table ot_disease ON (((ot_disease.target_table = 'public.individual_disease_table'::text) AND (ot_disease.column_name = 'disease_id'::text) AND (lower(ot_disease.column_value) = lower(ind_dis.disease_id)))))
     LEFT JOIN public.ontology_table disease_ontology ON ((disease_ontology.id = ot_disease.ontology_id)))
     LEFT JOIN public.ontology_term_table ot_age_group ON (((ot_age_group.target_table = 'public.individual_disease_table'::text) AND (ot_age_group.column_name = 'age_group'::text) AND (lower(ot_age_group.column_value) = lower(ind_dis.age_group)))))
     LEFT JOIN public.ontology_table age_group_ontology ON ((age_group_ontology.id = ot_age_group.ontology_id)))
     LEFT JOIN public.ontology_term_table ot_stage ON (((ot_stage.target_table = 'public.individual_disease_table'::text) AND (ot_stage.column_name = 'stage'::text) AND (lower(ot_stage.column_value) = lower(ind_dis.stage)))))
     LEFT JOIN public.ontology_table stage_ontology ON ((stage_ontology.id = ot_stage.ontology_id)))
     LEFT JOIN public.ontology_term_table ot_onset_type ON (((ot_onset_type.target_table = 'public.individual_disease_table'::text) AND (ot_onset_type.column_name = 'onset_type'::text) AND (lower(ot_onset_type.column_value) = lower(ind_dis.onset_type)))))
     LEFT JOIN public.ontology_table onset_type_ontology ON ((onset_type_ontology.id = ot_onset_type.ontology_id)))
     LEFT JOIN public.ontology_term_table ot_sever ON (((ot_sever.target_table = 'public.individual_disease_table'::text) AND (ot_sever.column_name = 'severity'::text) AND (lower(ot_sever.column_value) = lower(ind_dis.severity)))));
 6   DROP VIEW public.individual_disease_w_ontology_terms;
       public          beacon    false    235    235    235    235    235    235    235    235    233    233    233    233    233    233    233    233    233    233    231            �            1259    16545    individual_handover_table    TABLE     x   CREATE TABLE public.individual_handover_table (
    individual_id integer NOT NULL,
    handover_id integer NOT NULL
);
 -   DROP TABLE public.individual_handover_table;
       public         heap    beacon    false            �            1259    16548    individual_handovers    VIEW       CREATE VIEW public.individual_handovers AS
 SELECT ind_hand.individual_id,
    hand.type_id,
    hand.type_label,
    hand.note,
    hand.url
   FROM (public.individual_handover_table ind_hand
     LEFT JOIN public.handover_table hand ON ((hand.id = ind_hand.handover_id)));
 '   DROP VIEW public.individual_handovers;
       public          beacon    false    225    225    225    225    225    237    237            �            1259    16552    individual_pedigree_table    TABLE     �   CREATE TABLE public.individual_pedigree_table (
    individual_id integer NOT NULL,
    pedigree_id integer NOT NULL,
    pedigree_role text NOT NULL,
    number_of_individuals_tested integer,
    disease_id text,
    affected_status text
);
 -   DROP TABLE public.individual_pedigree_table;
       public         heap    beacon    false            �            1259    16558    pedigree_table    TABLE     s   CREATE TABLE public.pedigree_table (
    id integer NOT NULL,
    stable_id text NOT NULL,
    description text
);
 "   DROP TABLE public.pedigree_table;
       public         heap    beacon    false            �            1259    16564 $   individual_pedigree_w_ontology_terms    VIEW     �  CREATE VIEW public.individual_pedigree_w_ontology_terms AS
 SELECT ind_ped.individual_id,
    ped.stable_id AS pedigree_stable_id,
    ind_ped.disease_id,
        CASE
            WHEN (ot_disease.id IS NOT NULL) THEN ((ot_disease.ontology || ':'::text) || ot_disease.term)
            ELSE NULL::text
        END AS disease_id_ontology,
        CASE
            WHEN (ot_disease.id IS NOT NULL) THEN ot_disease.label
            ELSE NULL::text
        END AS disease_id_ontology_label,
    ind_ped.pedigree_role,
        CASE
            WHEN (ot_role.id IS NOT NULL) THEN ((ot_role.ontology || ':'::text) || ot_role.term)
            ELSE NULL::text
        END AS pedigree_role_ontology,
        CASE
            WHEN (ot_role.id IS NOT NULL) THEN ot_role.label
            ELSE NULL::text
        END AS pedigree_role_ontology_label,
    ind_ped.affected_status,
    ind_ped.number_of_individuals_tested
   FROM (((public.individual_pedigree_table ind_ped
     JOIN public.pedigree_table ped ON ((ped.id = ind_ped.pedigree_id)))
     LEFT JOIN public.ontology_term_table ot_role ON (((ot_role.target_table = 'public.individual_pedigree_table'::text) AND (ot_role.column_name = 'pedigree_role'::text) AND (lower(ot_role.column_value) = lower(ind_ped.pedigree_role)))))
     LEFT JOIN public.ontology_term_table ot_disease ON (((ot_disease.target_table = 'public.individual_pedigree_table'::text) AND (ot_disease.column_name = 'disease_id'::text) AND (lower(ot_disease.column_value) = lower(ind_ped.disease_id)))));
 7   DROP VIEW public.individual_pedigree_w_ontology_terms;
       public          beacon    false    235    239    235    235    239    239    239    239    239    235    235    235    235    240    240            �            1259    16569 #   individual_phenotypic_feature_table    TABLE     �   CREATE TABLE public.individual_phenotypic_feature_table (
    id integer NOT NULL,
    individual_id integer NOT NULL,
    phenotype_id text NOT NULL,
    date_of_onset date,
    onset_type text,
    age text,
    age_group text,
    severity text
);
 7   DROP TABLE public.individual_phenotypic_feature_table;
       public         heap    beacon    false            �            1259    16575 *   individual_phenotypic_feature_table_id_seq    SEQUENCE     �   CREATE SEQUENCE public.individual_phenotypic_feature_table_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 A   DROP SEQUENCE public.individual_phenotypic_feature_table_id_seq;
       public          beacon    false    242                       0    0 *   individual_phenotypic_feature_table_id_seq    SEQUENCE OWNED BY     y   ALTER SEQUENCE public.individual_phenotypic_feature_table_id_seq OWNED BY public.individual_phenotypic_feature_table.id;
          public          beacon    false    243            �            1259    16577 .   individual_phenotypic_feature_w_ontology_terms    VIEW     J  CREATE VIEW public.individual_phenotypic_feature_w_ontology_terms AS
 SELECT ind_phf.id,
    ind_phf.individual_id,
    ind_phf.phenotype_id,
        CASE
            WHEN (ot_phenotype.id IS NOT NULL) THEN ((ot_phenotype.ontology || ':'::text) || ot_phenotype.term)
            ELSE NULL::text
        END AS phenotype_id_ontology,
        CASE
            WHEN (ot_phenotype.id IS NOT NULL) THEN ot_phenotype.label
            ELSE NULL::text
        END AS phenotype_id_ontology_label,
    phenotype_ontology.id AS phenotype_ontology_id,
    ind_phf.date_of_onset,
    ind_phf.onset_type,
        CASE
            WHEN (ot_onset_type.id IS NOT NULL) THEN ((ot_onset_type.ontology || ':'::text) || ot_onset_type.term)
            ELSE NULL::text
        END AS onset_type_ontology,
        CASE
            WHEN (ot_onset_type.id IS NOT NULL) THEN ot_onset_type.label
            ELSE NULL::text
        END AS onset_type_ontology_label,
    onset_type_ontology.id AS onset_type_ontology_id,
    ind_phf.age,
    ind_phf.age_group,
        CASE
            WHEN (ot_age_group.id IS NOT NULL) THEN ((ot_age_group.ontology || ':'::text) || ot_age_group.term)
            ELSE NULL::text
        END AS age_group_ontology,
        CASE
            WHEN (ot_age_group.id IS NOT NULL) THEN ot_age_group.label
            ELSE NULL::text
        END AS age_group_ontology_label,
    age_group_ontology.id AS age_group_ontology_id,
    ind_phf.severity,
        CASE
            WHEN (ot_severity.id IS NOT NULL) THEN ((ot_severity.ontology || ':'::text) || ot_severity.term)
            ELSE NULL::text
        END AS severity_ontology,
        CASE
            WHEN (ot_severity.id IS NOT NULL) THEN ot_severity.label
            ELSE NULL::text
        END AS severity_ontology_label,
    severity_ontology.id AS severity_ontology_id
   FROM ((((((((public.individual_phenotypic_feature_table ind_phf
     LEFT JOIN public.ontology_term_table ot_phenotype ON (((ot_phenotype.target_table = 'public.individual_phenotypic_feature_table'::text) AND (ot_phenotype.column_name = 'phenotype_id'::text) AND (lower(ot_phenotype.column_value) = lower(ind_phf.phenotype_id)))))
     LEFT JOIN public.ontology_table phenotype_ontology ON ((phenotype_ontology.id = ot_phenotype.ontology_id)))
     LEFT JOIN public.ontology_term_table ot_onset_type ON (((ot_onset_type.target_table = 'public.individual_phenotypic_feature_table'::text) AND (ot_onset_type.column_name = 'onset_type'::text) AND (lower(ot_onset_type.column_value) = lower(ind_phf.onset_type)))))
     LEFT JOIN public.ontology_table onset_type_ontology ON ((onset_type_ontology.id = ot_onset_type.ontology_id)))
     LEFT JOIN public.ontology_term_table ot_age_group ON (((ot_age_group.target_table = 'public.individual_phenotypic_feature_table'::text) AND (ot_age_group.column_name = 'age_group'::text) AND (lower(ot_age_group.column_value) = lower(ind_phf.age_group)))))
     LEFT JOIN public.ontology_table age_group_ontology ON ((age_group_ontology.id = ot_age_group.ontology_id)))
     LEFT JOIN public.ontology_term_table ot_severity ON (((ot_severity.target_table = 'public.individual_phenotypic_feature_table'::text) AND (ot_severity.column_name = 'severity'::text) AND (lower(ot_severity.column_value) = lower(ind_phf.severity)))))
     LEFT JOIN public.ontology_table severity_ontology ON ((severity_ontology.id = ot_severity.ontology_id)));
 A   DROP VIEW public.individual_phenotypic_feature_w_ontology_terms;
       public          beacon    false    242    242    242    242    235    235    235    235    242    242    242    242    235    235    235    235    231            �            1259    16582    individual_table_id_seq    SEQUENCE     �   CREATE SEQUENCE public.individual_table_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.individual_table_id_seq;
       public          beacon    false    227                       0    0    individual_table_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.individual_table_id_seq OWNED BY public.individual_table.id;
          public          beacon    false    245            �            1259    16584    individual_w_ontology_terms    VIEW     �  CREATE VIEW public.individual_w_ontology_terms AS
 SELECT ind.id,
    ind.stable_id,
    ind.taxon_id,
        CASE
            WHEN (ot_taxon.id IS NOT NULL) THEN ((ot_taxon.ontology || ':'::text) || ot_taxon.term)
            ELSE NULL::text
        END AS taxon_id_ontology,
        CASE
            WHEN (ot_taxon.id IS NOT NULL) THEN ot_taxon.label
            ELSE NULL::text
        END AS taxon_id_ontology_label,
    taxon_ontology.id AS taxon_ontology_id,
    ind.sex,
        CASE
            WHEN (ot_sex.id IS NOT NULL) THEN ((ot_sex.ontology || ':'::text) || ot_sex.term)
            ELSE NULL::text
        END AS sex_ontology,
        CASE
            WHEN (ot_sex.id IS NOT NULL) THEN ot_sex.label
            ELSE NULL::text
        END AS sex_ontology_label,
    sex_ontology.id AS sex_ontology_id,
    ind.ethnicity,
        CASE
            WHEN (ot_ethnicity.id IS NOT NULL) THEN ((ot_ethnicity.ontology || ':'::text) || ot_ethnicity.term)
            ELSE NULL::text
        END AS ethnicity_ontology,
        CASE
            WHEN (ot_ethnicity.id IS NOT NULL) THEN ot_ethnicity.label
            ELSE NULL::text
        END AS ethnicity_ontology_label,
    ind.geographic_origin,
        CASE
            WHEN (ot_geo_origin.id IS NOT NULL) THEN ((ot_geo_origin.ontology || ':'::text) || ot_geo_origin.term)
            ELSE NULL::text
        END AS geographic_origin_ontology,
        CASE
            WHEN (ot_geo_origin.id IS NOT NULL) THEN ot_geo_origin.label
            ELSE NULL::text
        END AS geographic_origin_ontology_label,
    ind.sra_family_id,
    ind.race,
    ind.date_of_birth,
    ind.weight_kg,
    ind.height_cm,
    ind.blood_type,
    ind.medications,
    ind.procedures,
        CASE
            WHEN (ind_alt.id IS NOT NULL) THEN ((ind_alt.ontology || ':'::text) || ind_alt.term)
            ELSE NULL::text
        END AS alternative_id_ontology,
    alt_ontology.id AS alternative_id_ontology_id
   FROM ((((((((public.individual_table ind
     LEFT JOIN public.ontology_term_table ot_taxon ON (((ot_taxon.target_table = 'public.individual_table'::text) AND (ot_taxon.column_name = 'taxon_id'::text) AND (lower(ot_taxon.column_value) = lower(ind.taxon_id)))))
     LEFT JOIN public.ontology_table taxon_ontology ON ((taxon_ontology.id = ot_taxon.ontology_id)))
     LEFT JOIN public.ontology_term_table ot_sex ON (((ot_sex.target_table = 'public.individual_table'::text) AND (ot_sex.column_name = 'sex'::text) AND (lower(ot_sex.column_value) = lower(ind.sex)))))
     LEFT JOIN public.ontology_table sex_ontology ON ((sex_ontology.id = ot_sex.ontology_id)))
     LEFT JOIN public.ontology_term_table ot_ethnicity ON (((ot_ethnicity.target_table = 'public.individual_table'::text) AND (ot_ethnicity.column_name = 'ethnicity'::text) AND (lower(ot_ethnicity.column_value) = lower(ind.ethnicity)))))
     LEFT JOIN public.ontology_term_table ot_geo_origin ON (((ot_geo_origin.target_table = 'public.individual_table'::text) AND (ot_geo_origin.column_name = 'geographic_origin'::text) AND (lower(ot_geo_origin.column_value) = lower(ind.geographic_origin)))))
     LEFT JOIN public.individual_alternative_id_table ind_alt ON ((ind_alt.individual_id = ind.id)))
     LEFT JOIN public.ontology_table alt_ontology ON ((alt_ontology.id = ind_alt.ontology_id)));
 .   DROP VIEW public.individual_w_ontology_terms;
       public          beacon    false    235    227    227    227    227    227    227    227    227    227    227    227    227    227    227    229    229    229    229    229    231    235    235    235    235    235    235    235            �            1259    16589    ontology_table_id_seq    SEQUENCE     ~   CREATE SEQUENCE public.ontology_table_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.ontology_table_id_seq;
       public          beacon    false    231                       0    0    ontology_table_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.ontology_table_id_seq OWNED BY public.ontology_table.id;
          public          beacon    false    247            �            1259    16591    ontology_term    VIEW     �  CREATE VIEW public.ontology_term AS
 SELECT ontology_term_table.id,
    ontology_term_table.ontology,
    ontology_term_table.term,
    ontology_term_table.target_table,
    ontology_term_table.column_name,
    ontology_term_table.column_value,
    ontology_term_table.additional_comments,
    ontology_term_table.label,
    ontology_term_table.target_table_alias
   FROM public.ontology_term_table;
     DROP VIEW public.ontology_term;
       public          beacon    false    235    235    235    235    235    235    235    235    235            �            1259    16595    ontology_term_table_id_seq    SEQUENCE     �   CREATE SEQUENCE public.ontology_term_table_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.ontology_term_table_id_seq;
       public          beacon    false    235                       0    0    ontology_term_table_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.ontology_term_table_id_seq OWNED BY public.ontology_term_table.id;
          public          beacon    false    249            �            1259    16597    pedigree_table_id_seq    SEQUENCE     ~   CREATE SEQUENCE public.pedigree_table_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.pedigree_table_id_seq;
       public          beacon    false    240                        0    0    pedigree_table_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.pedigree_table_id_seq OWNED BY public.pedigree_table.id;
          public          beacon    false    250            �            1259    16599    sample_handover_table    TABLE     p   CREATE TABLE public.sample_handover_table (
    sample_id integer NOT NULL,
    handover_id integer NOT NULL
);
 )   DROP TABLE public.sample_handover_table;
       public         heap    beacon    false            �            1259    16602    sample_table    TABLE     �  CREATE TABLE public.sample_table (
    id integer NOT NULL,
    stable_id text NOT NULL,
    individual_id integer,
    description text,
    biosample_status text,
    individual_age_at_collection text,
    obtention_procedure text,
    tumor_progression text,
    tumor_grade text,
    collection_date date,
    sample_origins jsonb,
    alternative_ids text[],
    study_id text,
    bioproject_id text,
    files jsonb
);
     DROP TABLE public.sample_table;
       public         heap    beacon    false            �            1259    16608    sample_table_id_seq    SEQUENCE     |   CREATE SEQUENCE public.sample_table_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.sample_table_id_seq;
       public          beacon    false    252            !           0    0    sample_table_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.sample_table_id_seq OWNED BY public.sample_table.id;
          public          beacon    false    253            �            1259    16610    sample_w_ontology_terms    VIEW     y  CREATE VIEW public.sample_w_ontology_terms AS
 SELECT sam.id,
    sam.stable_id,
    sam.individual_id,
    sam.description,
    sam.biosample_status,
        CASE
            WHEN (ot_status.id IS NOT NULL) THEN ((ot_status.ontology || ':'::text) || ot_status.term)
            ELSE NULL::text
        END AS biosample_status_ontology,
        CASE
            WHEN (ot_status.id IS NOT NULL) THEN ot_status.label
            ELSE NULL::text
        END AS biosample_status_ontology_label,
    sam.individual_age_at_collection,
    sam.obtention_procedure,
        CASE
            WHEN (ot_proc.id IS NOT NULL) THEN ((ot_proc.ontology || ':'::text) || ot_proc.term)
            ELSE NULL::text
        END AS obtention_procedure_ontology,
        CASE
            WHEN (ot_proc.id IS NOT NULL) THEN ot_proc.label
            ELSE NULL::text
        END AS obtention_procedure_ontology_label,
    sam.tumor_progression,
        CASE
            WHEN (ot_t_progress.id IS NOT NULL) THEN ((ot_t_progress.ontology || ':'::text) || ot_t_progress.term)
            ELSE NULL::text
        END AS tumor_progression_ontology,
        CASE
            WHEN (ot_t_progress.id IS NOT NULL) THEN ot_t_progress.label
            ELSE NULL::text
        END AS tumor_progression_ontology_label,
    sam.tumor_grade,
        CASE
            WHEN (ot_t_grade.id IS NOT NULL) THEN ((ot_t_grade.ontology || ':'::text) || ot_t_grade.term)
            ELSE NULL::text
        END AS tumor_grade_ontology,
        CASE
            WHEN (ot_t_grade.id IS NOT NULL) THEN ot_t_grade.label
            ELSE NULL::text
        END AS tumor_grade_ontology_label,
    sam.collection_date,
    sam.sample_origins,
    COALESCE(jsonb_agg(DISTINCT jsonb_build_object(ot_origin_type.column_name,
        CASE
            WHEN (ot_origin_type.id IS NOT NULL) THEN ((ot_origin_type.ontology || ':'::text) || ot_origin_type.term)
            ELSE NULL::text
        END, (ot_origin_type.column_name || 'Label'::text),
        CASE
            WHEN (ot_origin_type.id IS NOT NULL) THEN ot_origin_type.label
            ELSE NULL::text
        END, ot_origin_detail.column_name,
        CASE
            WHEN (ot_origin_detail.id IS NOT NULL) THEN ((ot_origin_detail.ontology || ':'::text) || ot_origin_detail.term)
            ELSE NULL::text
        END, (ot_origin_detail.column_name || 'Label'::text),
        CASE
            WHEN (ot_origin_detail.id IS NOT NULL) THEN ot_origin_detail.label
            ELSE NULL::text
        END)) FILTER (WHERE (ot_origin_type.id IS NOT NULL)), '[]'::jsonb) AS sample_origins_ontology,
    sam.alternative_ids,
    sam.study_id,
    sam.bioproject_id,
    sam.files
   FROM ((((((( SELECT sam_1.id,
            sam_1.stable_id,
            sam_1.individual_id,
            sam_1.description,
            sam_1.biosample_status,
            sam_1.individual_age_at_collection,
            sam_1.obtention_procedure,
            sam_1.tumor_progression,
            sam_1.tumor_grade,
            sam_1.collection_date,
            (sam_origins.data ->> 'sampleOriginType'::text) AS origin_type,
            (sam_origins.data ->> 'sampleOriginDetail'::text) AS origin_detail,
            sam_1.sample_origins,
            sam_1.alternative_ids,
            sam_1.study_id,
            sam_1.bioproject_id,
            sam_1.files
           FROM (public.sample_table sam_1
             LEFT JOIN LATERAL jsonb_array_elements(sam_1.sample_origins) sam_origins(data) ON (true))) sam
     LEFT JOIN public.ontology_term ot_status ON (((ot_status.target_table = 'public.sample_table'::text) AND (ot_status.column_name = 'biosample_status'::text) AND (lower(ot_status.column_value) = lower(sam.biosample_status)))))
     LEFT JOIN public.ontology_term ot_proc ON (((ot_proc.target_table = 'public.sample_table'::text) AND (ot_proc.column_name = 'obtention_procedure'::text) AND (lower(ot_proc.column_value) = lower(sam.obtention_procedure)))))
     LEFT JOIN public.ontology_term ot_t_progress ON (((ot_t_progress.target_table = 'public.sample_table'::text) AND (ot_t_progress.column_name = 'tumor_progression'::text) AND (lower(ot_t_progress.column_value) = lower(sam.tumor_progression)))))
     LEFT JOIN public.ontology_term ot_t_grade ON (((ot_t_grade.target_table = 'public.sample_table'::text) AND (ot_t_grade.column_name = 'tumor_grade'::text) AND (lower(ot_t_grade.column_value) = lower(sam.tumor_grade)))))
     LEFT JOIN public.ontology_term ot_origin_type ON (((ot_origin_type.target_table = 'public.sample_table'::text) AND (ot_origin_type.column_name = 'sampleOriginType'::text) AND (lower(ot_origin_type.column_value) = lower(sam.origin_type)))))
     LEFT JOIN public.ontology_term ot_origin_detail ON (((ot_origin_detail.target_table = 'public.sample_table'::text) AND (ot_origin_detail.column_name = 'sampleOriginDetail'::text) AND (lower(ot_origin_detail.column_value) = lower(sam.origin_detail)))))
  GROUP BY sam.id, sam.stable_id, sam.individual_id, sam.description, sam.biosample_status, ot_status.id, ot_status.ontology, ot_status.label, ot_status.term, sam.individual_age_at_collection, sam.obtention_procedure, ot_proc.id, ot_proc.ontology, ot_proc.label, ot_proc.term, sam.tumor_progression, ot_t_progress.id, ot_t_progress.ontology, ot_t_progress.label, ot_t_progress.term, sam.tumor_grade, ot_t_grade.id, ot_t_grade.ontology, ot_t_grade.label, ot_t_grade.term, sam.collection_date, sam.sample_origins, sam.alternative_ids, sam.study_id, sam.bioproject_id, sam.files;
 *   DROP VIEW public.sample_w_ontology_terms;
       public          beacon    false    252    252    252    252    252    252    252    252    248    252    252    252    248    248    252    248    248    248    252    252    252    248            �            1259    16615    schema_table    TABLE     �   CREATE TABLE public.schema_table (
    id integer NOT NULL,
    schema_name text NOT NULL,
    table_name text NOT NULL,
    field_name text NOT NULL,
    format text NOT NULL,
    is_default boolean DEFAULT false NOT NULL
);
     DROP TABLE public.schema_table;
       public         heap    beacon    false                        1259    16622    schema_table_id_seq    SEQUENCE     �   CREATE SEQUENCE public.schema_table_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.schema_table_id_seq;
       public          beacon    false    255            "           0    0    schema_table_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.schema_table_id_seq OWNED BY public.schema_table.id;
          public          beacon    false    256                       1259    16624    variant_table    TABLE     �  CREATE TABLE public.variant_table (
    id integer NOT NULL,
    dataset_id integer NOT NULL,
    chromosome text NOT NULL,
    alternative_id text,
    reference text NOT NULL,
    alternate text NOT NULL,
    start integer NOT NULL,
    "end" integer,
    variant_type text,
    sv_length integer,
    variant_cnt integer,
    call_cnt integer,
    sample_cnt integer,
    matching_sample_cnt integer,
    frequency numeric,
    allele text[],
    annotation text[],
    annotation_impact text[],
    gene_name text[],
    transcript_biotype text[],
    rank text[],
    aa_pos_aa_length text[],
    custom_id bigint,
    refseq_id text
);
 !   DROP TABLE public.variant_table;
       public         heap    beacon    false                       1259    16630    variant    VIEW     ?  CREATE VIEW public.variant AS
 SELECT variant_table.id,
    variant_table.dataset_id,
    variant_table.chromosome,
    variant_table.refseq_id,
    variant_table.alternative_id,
    variant_table.reference,
    variant_table.alternate,
    variant_table.start,
    variant_table."end",
    variant_table.variant_type,
    variant_table.sv_length,
    variant_table.variant_cnt,
    variant_table.call_cnt,
    variant_table.sample_cnt,
    variant_table.matching_sample_cnt,
    variant_table.frequency,
    COALESCE(variant_table.allele, ARRAY[]::text[]) AS transcript_hgvs_ids,
    COALESCE(variant_table.annotation, ARRAY[]::text[]) AS protein_hgvs_ids,
    COALESCE(variant_table.annotation_impact, ARRAY[]::text[]) AS genomic_regions,
    COALESCE(variant_table.gene_name, ARRAY[]::text[]) AS molecular_effects,
    COALESCE(variant_table.transcript_biotype, ARRAY[]::text[]) AS aminoacid_changes,
    COALESCE(variant_table.rank, ARRAY[]::text[]) AS effect_impacts,
    COALESCE(variant_table.aa_pos_aa_length, ARRAY[]::text[]) AS functional_classes
   FROM public.variant_table;
    DROP VIEW public.variant;
       public          beacon    false    257    257    257    257    257    257    257    257    257    257    257    257    257    257    257    257    257    257    257    257    257    257    257                       1259    16635    variant_sample_table    TABLE     �   CREATE TABLE public.variant_sample_table (
    variant_id integer NOT NULL,
    sample_id integer NOT NULL,
    frequency numeric,
    zygosity text,
    allele_origin text
);
 (   DROP TABLE public.variant_sample_table;
       public         heap    beacon    false                       1259    16641    variant_table_id_seq    SEQUENCE     �   CREATE SEQUENCE public.variant_table_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.variant_table_id_seq;
       public          beacon    false    257            #           0    0    variant_table_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.variant_table_id_seq OWNED BY public.variant_table.id;
          public          beacon    false    260                       1259    16643    tmp_sample_table    TABLE     �   CREATE TABLE tmp.tmp_sample_table (
    id integer NOT NULL,
    sample_stable_id text NOT NULL,
    dataset_id integer NOT NULL
);
 !   DROP TABLE tmp.tmp_sample_table;
       tmp         heap    beacon    false    8                       1259    16649    tmp_sample_table_id_seq    SEQUENCE     }   CREATE SEQUENCE tmp.tmp_sample_table_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE tmp.tmp_sample_table_id_seq;
       tmp          beacon    false    261    8            $           0    0    tmp_sample_table_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE tmp.tmp_sample_table_id_seq OWNED BY tmp.tmp_sample_table.id;
          tmp          beacon    false    262                       1259    16651    tmp_variant_sample_table    TABLE     �   CREATE TABLE tmp.tmp_variant_sample_table (
    id integer NOT NULL,
    dataset_id integer NOT NULL,
    sample_ids text[] NOT NULL,
    custom_id integer NOT NULL
);
 )   DROP TABLE tmp.tmp_variant_sample_table;
       tmp         heap    beacon    false    8                       1259    16657    tmp_variant_sample_table_id_seq    SEQUENCE     �   CREATE SEQUENCE tmp.tmp_variant_sample_table_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE tmp.tmp_variant_sample_table_id_seq;
       tmp          beacon    false    263    8            %           0    0    tmp_variant_sample_table_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE tmp.tmp_variant_sample_table_id_seq OWNED BY tmp.tmp_variant_sample_table.id;
          tmp          beacon    false    264                       2604    16659    consent_code_table id    DEFAULT     ~   ALTER TABLE ONLY public.consent_code_table ALTER COLUMN id SET DEFAULT nextval('public.consent_code_table_id_seq'::regclass);
 D   ALTER TABLE public.consent_code_table ALTER COLUMN id DROP DEFAULT;
       public          beacon    false    211    210                       2604    16660    dataset_sample_table id    DEFAULT     �   ALTER TABLE ONLY public.dataset_sample_table ALTER COLUMN id SET DEFAULT nextval('public.dataset_sample_table_id_seq'::regclass);
 F   ALTER TABLE public.dataset_sample_table ALTER COLUMN id DROP DEFAULT;
       public          beacon    false    220    219                       2604    16661    dataset_table id    DEFAULT     t   ALTER TABLE ONLY public.dataset_table ALTER COLUMN id SET DEFAULT nextval('public.dataset_table_id_seq'::regclass);
 ?   ALTER TABLE public.dataset_table ALTER COLUMN id DROP DEFAULT;
       public          beacon    false    221    212                       2604    16662    handover_table id    DEFAULT     v   ALTER TABLE ONLY public.handover_table ALTER COLUMN id SET DEFAULT nextval('public.handover_table_id_seq'::regclass);
 @   ALTER TABLE public.handover_table ALTER COLUMN id DROP DEFAULT;
       public          beacon    false    226    225                       2604    16663 "   individual_alternative_id_table id    DEFAULT     �   ALTER TABLE ONLY public.individual_alternative_id_table ALTER COLUMN id SET DEFAULT nextval('public.individual_alternative_id_table_id_seq'::regclass);
 Q   ALTER TABLE public.individual_alternative_id_table ALTER COLUMN id DROP DEFAULT;
       public          beacon    false    230    229                       2604    16664    individual_disease_table id    DEFAULT     �   ALTER TABLE ONLY public.individual_disease_table ALTER COLUMN id SET DEFAULT nextval('public.individual_disease_table_id_seq'::regclass);
 J   ALTER TABLE public.individual_disease_table ALTER COLUMN id DROP DEFAULT;
       public          beacon    false    234    233            !           2604    16665 &   individual_phenotypic_feature_table id    DEFAULT     �   ALTER TABLE ONLY public.individual_phenotypic_feature_table ALTER COLUMN id SET DEFAULT nextval('public.individual_phenotypic_feature_table_id_seq'::regclass);
 U   ALTER TABLE public.individual_phenotypic_feature_table ALTER COLUMN id DROP DEFAULT;
       public          beacon    false    243    242                       2604    16666    individual_table id    DEFAULT     z   ALTER TABLE ONLY public.individual_table ALTER COLUMN id SET DEFAULT nextval('public.individual_table_id_seq'::regclass);
 B   ALTER TABLE public.individual_table ALTER COLUMN id DROP DEFAULT;
       public          beacon    false    245    227                       2604    16667    ontology_table id    DEFAULT     v   ALTER TABLE ONLY public.ontology_table ALTER COLUMN id SET DEFAULT nextval('public.ontology_table_id_seq'::regclass);
 @   ALTER TABLE public.ontology_table ALTER COLUMN id DROP DEFAULT;
       public          beacon    false    247    231                       2604    16668    ontology_term_table id    DEFAULT     �   ALTER TABLE ONLY public.ontology_term_table ALTER COLUMN id SET DEFAULT nextval('public.ontology_term_table_id_seq'::regclass);
 E   ALTER TABLE public.ontology_term_table ALTER COLUMN id DROP DEFAULT;
       public          beacon    false    249    235                        2604    16669    pedigree_table id    DEFAULT     v   ALTER TABLE ONLY public.pedigree_table ALTER COLUMN id SET DEFAULT nextval('public.pedigree_table_id_seq'::regclass);
 @   ALTER TABLE public.pedigree_table ALTER COLUMN id DROP DEFAULT;
       public          beacon    false    250    240            "           2604    16670    sample_table id    DEFAULT     r   ALTER TABLE ONLY public.sample_table ALTER COLUMN id SET DEFAULT nextval('public.sample_table_id_seq'::regclass);
 >   ALTER TABLE public.sample_table ALTER COLUMN id DROP DEFAULT;
       public          beacon    false    253    252            $           2604    16671    schema_table id    DEFAULT     r   ALTER TABLE ONLY public.schema_table ALTER COLUMN id SET DEFAULT nextval('public.schema_table_id_seq'::regclass);
 >   ALTER TABLE public.schema_table ALTER COLUMN id DROP DEFAULT;
       public          beacon    false    256    255            %           2604    16672    variant_table id    DEFAULT     t   ALTER TABLE ONLY public.variant_table ALTER COLUMN id SET DEFAULT nextval('public.variant_table_id_seq'::regclass);
 ?   ALTER TABLE public.variant_table ALTER COLUMN id DROP DEFAULT;
       public          beacon    false    260    257            &           2604    16673    tmp_sample_table id    DEFAULT     t   ALTER TABLE ONLY tmp.tmp_sample_table ALTER COLUMN id SET DEFAULT nextval('tmp.tmp_sample_table_id_seq'::regclass);
 ?   ALTER TABLE tmp.tmp_sample_table ALTER COLUMN id DROP DEFAULT;
       tmp          beacon    false    262    261            '           2604    16674    tmp_variant_sample_table id    DEFAULT     �   ALTER TABLE ONLY tmp.tmp_variant_sample_table ALTER COLUMN id SET DEFAULT nextval('tmp.tmp_variant_sample_table_id_seq'::regclass);
 G   ALTER TABLE tmp.tmp_variant_sample_table ALTER COLUMN id DROP DEFAULT;
       tmp          beacon    false    264    263            `           2606    16676 2   variant_sample_table beacon_data_sample_table_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.variant_sample_table
    ADD CONSTRAINT beacon_data_sample_table_pkey PRIMARY KEY (variant_id, sample_id);
 \   ALTER TABLE ONLY public.variant_sample_table DROP CONSTRAINT beacon_data_sample_table_pkey;
       public            beacon    false    259    259            \           2606    16678 $   variant_table beacon_data_table_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.variant_table
    ADD CONSTRAINT beacon_data_table_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.variant_table DROP CONSTRAINT beacon_data_table_pkey;
       public            beacon    false    257            S           2606    16680 %   sample_table beacon_sample_table_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.sample_table
    ADD CONSTRAINT beacon_sample_table_pkey PRIMARY KEY (id);
 O   ALTER TABLE ONLY public.sample_table DROP CONSTRAINT beacon_sample_table_pkey;
       public            beacon    false    252            d           2606    17663    cohort_table cohort_table_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.cohort_table
    ADD CONSTRAINT cohort_table_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.cohort_table DROP CONSTRAINT cohort_table_pkey;
       public            beacon    false    267            f           2606    17672 2   collection_event_table collection_event_table_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.collection_event_table
    ADD CONSTRAINT collection_event_table_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.collection_event_table DROP CONSTRAINT collection_event_table_pkey;
       public            beacon    false    268            +           2606    16682 <   consent_code_category_table consent_code_category_table_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.consent_code_category_table
    ADD CONSTRAINT consent_code_category_table_pkey PRIMARY KEY (id);
 f   ALTER TABLE ONLY public.consent_code_category_table DROP CONSTRAINT consent_code_category_table_pkey;
       public            beacon    false    209            -           2606    16684 *   consent_code_table consent_code_table_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.consent_code_table
    ADD CONSTRAINT consent_code_table_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.consent_code_table DROP CONSTRAINT consent_code_table_pkey;
       public            beacon    false    210            3           2606    16686 :   dataset_access_level_table dataset_access_level_table_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.dataset_access_level_table
    ADD CONSTRAINT dataset_access_level_table_pkey PRIMARY KEY (dataset_id, parent_field, field);
 d   ALTER TABLE ONLY public.dataset_access_level_table DROP CONSTRAINT dataset_access_level_table_pkey;
       public            beacon    false    214    214    214            5           2606    16688 :   dataset_consent_code_table dataset_consent_code_table_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.dataset_consent_code_table
    ADD CONSTRAINT dataset_consent_code_table_pkey PRIMARY KEY (dataset_id, consent_code_id);
 d   ALTER TABLE ONLY public.dataset_consent_code_table DROP CONSTRAINT dataset_consent_code_table_pkey;
       public            beacon    false    216    216            7           2606    16690 B   dataset_sample_table dataset_sample_table_dataset_id_sample_id_key 
   CONSTRAINT     �   ALTER TABLE ONLY public.dataset_sample_table
    ADD CONSTRAINT dataset_sample_table_dataset_id_sample_id_key UNIQUE (dataset_id, sample_id);
 l   ALTER TABLE ONLY public.dataset_sample_table DROP CONSTRAINT dataset_sample_table_dataset_id_sample_id_key;
       public            beacon    false    219    219            9           2606    16692 .   dataset_sample_table dataset_sample_table_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.dataset_sample_table
    ADD CONSTRAINT dataset_sample_table_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.dataset_sample_table DROP CONSTRAINT dataset_sample_table_pkey;
       public            beacon    false    219            /           2606    16694     dataset_table dataset_table_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.dataset_table
    ADD CONSTRAINT dataset_table_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.dataset_table DROP CONSTRAINT dataset_table_pkey;
       public            beacon    false    212            ;           2606    16696 "   handover_table handover_table_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.handover_table
    ADD CONSTRAINT handover_table_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.handover_table DROP CONSTRAINT handover_table_pkey;
       public            beacon    false    225            ?           2606    16698 D   individual_alternative_id_table individual_alternative_id_table_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.individual_alternative_id_table
    ADD CONSTRAINT individual_alternative_id_table_pkey PRIMARY KEY (id);
 n   ALTER TABLE ONLY public.individual_alternative_id_table DROP CONSTRAINT individual_alternative_id_table_pkey;
       public            beacon    false    229            Q           2606    16700 L   individual_phenotypic_feature_table individual_phenotypic_feature_table_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.individual_phenotypic_feature_table
    ADD CONSTRAINT individual_phenotypic_feature_table_pkey PRIMARY KEY (id);
 v   ALTER TABLE ONLY public.individual_phenotypic_feature_table DROP CONSTRAINT individual_phenotypic_feature_table_pkey;
       public            beacon    false    242            A           2606    16702 "   ontology_table ontology_table_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.ontology_table
    ADD CONSTRAINT ontology_table_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.ontology_table DROP CONSTRAINT ontology_table_pkey;
       public            beacon    false    231            G           2606    16704 R   ontology_term_table ontology_term_table_ontology_term_target_table_column_name_key 
   CONSTRAINT     �   ALTER TABLE ONLY public.ontology_term_table
    ADD CONSTRAINT ontology_term_table_ontology_term_target_table_column_name_key UNIQUE (ontology, term, target_table, column_name);
 |   ALTER TABLE ONLY public.ontology_term_table DROP CONSTRAINT ontology_term_table_ontology_term_target_table_column_name_key;
       public            beacon    false    235    235    235    235            I           2606    16706 ,   ontology_term_table ontology_term_table_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.ontology_term_table
    ADD CONSTRAINT ontology_term_table_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.ontology_term_table DROP CONSTRAINT ontology_term_table_pkey;
       public            beacon    false    235            C           2606    16708 3   individual_disease_table patient_disease_table_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY public.individual_disease_table
    ADD CONSTRAINT patient_disease_table_pkey PRIMARY KEY (id);
 ]   ALTER TABLE ONLY public.individual_disease_table DROP CONSTRAINT patient_disease_table_pkey;
       public            beacon    false    233            K           2606    16710 5   individual_pedigree_table patient_pedigree_table_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.individual_pedigree_table
    ADD CONSTRAINT patient_pedigree_table_pkey PRIMARY KEY (individual_id, pedigree_id);
 _   ALTER TABLE ONLY public.individual_pedigree_table DROP CONSTRAINT patient_pedigree_table_pkey;
       public            beacon    false    239    239            =           2606    16712 #   individual_table patient_table_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY public.individual_table
    ADD CONSTRAINT patient_table_pkey PRIMARY KEY (id);
 M   ALTER TABLE ONLY public.individual_table DROP CONSTRAINT patient_table_pkey;
       public            beacon    false    227            M           2606    16714 "   pedigree_table pedigree_table_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.pedigree_table
    ADD CONSTRAINT pedigree_table_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.pedigree_table DROP CONSTRAINT pedigree_table_pkey;
       public            beacon    false    240            O           2606    16716 +   pedigree_table pedigree_table_stable_id_key 
   CONSTRAINT     k   ALTER TABLE ONLY public.pedigree_table
    ADD CONSTRAINT pedigree_table_stable_id_key UNIQUE (stable_id);
 U   ALTER TABLE ONLY public.pedigree_table DROP CONSTRAINT pedigree_table_stable_id_key;
       public            beacon    false    240            V           2606    16718    sample_table sample_unique 
   CONSTRAINT     Z   ALTER TABLE ONLY public.sample_table
    ADD CONSTRAINT sample_unique UNIQUE (stable_id);
 D   ALTER TABLE ONLY public.sample_table DROP CONSTRAINT sample_unique;
       public            beacon    false    252            X           2606    16720    schema_table schema_table_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.schema_table
    ADD CONSTRAINT schema_table_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.schema_table DROP CONSTRAINT schema_table_pkey;
       public            beacon    false    255            Z           2606    16722 J   schema_table schema_table_schema_name_table_name_field_name_is_default_key 
   CONSTRAINT     �   ALTER TABLE ONLY public.schema_table
    ADD CONSTRAINT schema_table_schema_name_table_name_field_name_is_default_key UNIQUE (schema_name, table_name, field_name, is_default);
 t   ALTER TABLE ONLY public.schema_table DROP CONSTRAINT schema_table_schema_name_table_name_field_name_is_default_key;
       public            beacon    false    255    255    255    255            1           2606    16724 C   dataset_table unique_dataset_stable_id_reference_genome_access_type 
   CONSTRAINT     �   ALTER TABLE ONLY public.dataset_table
    ADD CONSTRAINT unique_dataset_stable_id_reference_genome_access_type UNIQUE (stable_id, access_type, reference_genome);
 m   ALTER TABLE ONLY public.dataset_table DROP CONSTRAINT unique_dataset_stable_id_reference_genome_access_type;
       public            beacon    false    212    212    212            b           2606    16726 6   tmp_variant_sample_table tmp_variant_sample_table_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY tmp.tmp_variant_sample_table
    ADD CONSTRAINT tmp_variant_sample_table_pkey PRIMARY KEY (id);
 ]   ALTER TABLE ONLY tmp.tmp_variant_sample_table DROP CONSTRAINT tmp_variant_sample_table_pkey;
       tmp            beacon    false    263            D           1259    16727 #   idx_ontology_term_table_ontology_id    INDEX     j   CREATE INDEX idx_ontology_term_table_ontology_id ON public.ontology_term_table USING btree (ontology_id);
 7   DROP INDEX public.idx_ontology_term_table_ontology_id;
       public            beacon    false    235            E           1259    16728 6   idx_ontology_term_table_target_table_column_name_label    INDEX     �   CREATE INDEX idx_ontology_term_table_target_table_column_name_label ON public.ontology_term_table USING btree (target_table, column_name, label);
 J   DROP INDEX public.idx_ontology_term_table_target_table_column_name_label;
       public            beacon    false    235    235    235            T           1259    16729    idx_sample_table_stable_id    INDEX     X   CREATE INDEX idx_sample_table_stable_id ON public.sample_table USING btree (stable_id);
 .   DROP INDEX public.idx_sample_table_stable_id;
       public            beacon    false    252            ]           1259    16730     idx_variant_table_region_columns    INDEX     z   CREATE INDEX idx_variant_table_region_columns ON public.variant_table USING btree (dataset_id, chromosome, start, "end");
 4   DROP INDEX public.idx_variant_table_region_columns;
       public            beacon    false    257    257    257    257            ^           1259    16731    idx_variant_table_snp_columns    INDEX     �   CREATE INDEX idx_variant_table_snp_columns ON public.variant_table USING btree (dataset_id, chromosome, reference, alternate, start);
 1   DROP INDEX public.idx_variant_table_snp_columns;
       public            beacon    false    257    257    257    257    257                       2606    17673 <   collection_event_table collection_event_table_cohort_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.collection_event_table
    ADD CONSTRAINT collection_event_table_cohort_id_fkey FOREIGN KEY (cohort_id) REFERENCES public.cohort_table(id);
 f   ALTER TABLE ONLY public.collection_event_table DROP CONSTRAINT collection_event_table_cohort_id_fkey;
       public          beacon    false    268    267    3172            g           2606    16732 6   consent_code_table consent_code_table_category_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.consent_code_table
    ADD CONSTRAINT consent_code_table_category_id_fkey FOREIGN KEY (category_id) REFERENCES public.consent_code_category_table(id);
 `   ALTER TABLE ONLY public.consent_code_table DROP CONSTRAINT consent_code_table_category_id_fkey;
       public          beacon    false    3115    209    210            h           2606    16737 E   dataset_access_level_table dataset_access_level_table_dataset_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.dataset_access_level_table
    ADD CONSTRAINT dataset_access_level_table_dataset_id_fkey FOREIGN KEY (dataset_id) REFERENCES public.dataset_table(id);
 o   ALTER TABLE ONLY public.dataset_access_level_table DROP CONSTRAINT dataset_access_level_table_dataset_id_fkey;
       public          beacon    false    214    3119    212            i           2606    16742 J   dataset_consent_code_table dataset_consent_code_table_consent_code_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.dataset_consent_code_table
    ADD CONSTRAINT dataset_consent_code_table_consent_code_id_fkey FOREIGN KEY (consent_code_id) REFERENCES public.consent_code_table(id);
 t   ALTER TABLE ONLY public.dataset_consent_code_table DROP CONSTRAINT dataset_consent_code_table_consent_code_id_fkey;
       public          beacon    false    3117    216    210            j           2606    16747 E   dataset_consent_code_table dataset_consent_code_table_dataset_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.dataset_consent_code_table
    ADD CONSTRAINT dataset_consent_code_table_dataset_id_fkey FOREIGN KEY (dataset_id) REFERENCES public.dataset_table(id);
 o   ALTER TABLE ONLY public.dataset_consent_code_table DROP CONSTRAINT dataset_consent_code_table_dataset_id_fkey;
       public          beacon    false    216    212    3119            k           2606    16752 =   dataset_handover_table dataset_handover_table_dataset_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.dataset_handover_table
    ADD CONSTRAINT dataset_handover_table_dataset_id_fkey FOREIGN KEY (dataset_id) REFERENCES public.dataset_table(id);
 g   ALTER TABLE ONLY public.dataset_handover_table DROP CONSTRAINT dataset_handover_table_dataset_id_fkey;
       public          beacon    false    218    212    3119            l           2606    16757 >   dataset_handover_table dataset_handover_table_handover_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.dataset_handover_table
    ADD CONSTRAINT dataset_handover_table_handover_id_fkey FOREIGN KEY (handover_id) REFERENCES public.handover_table(id);
 h   ALTER TABLE ONLY public.dataset_handover_table DROP CONSTRAINT dataset_handover_table_handover_id_fkey;
       public          beacon    false    218    3131    225            m           2606    16762 9   dataset_sample_table dataset_sample_table_dataset_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.dataset_sample_table
    ADD CONSTRAINT dataset_sample_table_dataset_id_fkey FOREIGN KEY (dataset_id) REFERENCES public.dataset_table(id);
 c   ALTER TABLE ONLY public.dataset_sample_table DROP CONSTRAINT dataset_sample_table_dataset_id_fkey;
       public          beacon    false    212    3119    219            n           2606    16767 8   dataset_sample_table dataset_sample_table_sample_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.dataset_sample_table
    ADD CONSTRAINT dataset_sample_table_sample_id_fkey FOREIGN KEY (sample_id) REFERENCES public.sample_table(id);
 b   ALTER TABLE ONLY public.dataset_sample_table DROP CONSTRAINT dataset_sample_table_sample_id_fkey;
       public          beacon    false    219    3155    252            o           2606    16772 R   individual_alternative_id_table individual_alternative_id_table_individual_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.individual_alternative_id_table
    ADD CONSTRAINT individual_alternative_id_table_individual_id_fkey FOREIGN KEY (individual_id) REFERENCES public.individual_table(id);
 |   ALTER TABLE ONLY public.individual_alternative_id_table DROP CONSTRAINT individual_alternative_id_table_individual_id_fkey;
       public          beacon    false    3133    227    229            p           2606    16777 P   individual_alternative_id_table individual_alternative_id_table_ontology_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.individual_alternative_id_table
    ADD CONSTRAINT individual_alternative_id_table_ontology_id_fkey FOREIGN KEY (ontology_id) REFERENCES public.ontology_table(id);
 z   ALTER TABLE ONLY public.individual_alternative_id_table DROP CONSTRAINT individual_alternative_id_table_ontology_id_fkey;
       public          beacon    false    229    3137    231            s           2606    16782 D   individual_handover_table individual_handover_table_handover_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.individual_handover_table
    ADD CONSTRAINT individual_handover_table_handover_id_fkey FOREIGN KEY (handover_id) REFERENCES public.handover_table(id);
 n   ALTER TABLE ONLY public.individual_handover_table DROP CONSTRAINT individual_handover_table_handover_id_fkey;
       public          beacon    false    225    3131    237            t           2606    16787 F   individual_handover_table individual_handover_table_individual_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.individual_handover_table
    ADD CONSTRAINT individual_handover_table_individual_id_fkey FOREIGN KEY (individual_id) REFERENCES public.individual_table(id);
 p   ALTER TABLE ONLY public.individual_handover_table DROP CONSTRAINT individual_handover_table_individual_id_fkey;
       public          beacon    false    227    237    3133            w           2606    16792 Z   individual_phenotypic_feature_table individual_phenotypic_feature_table_individual_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.individual_phenotypic_feature_table
    ADD CONSTRAINT individual_phenotypic_feature_table_individual_id_fkey FOREIGN KEY (individual_id) REFERENCES public.individual_table(id);
 �   ALTER TABLE ONLY public.individual_phenotypic_feature_table DROP CONSTRAINT individual_phenotypic_feature_table_individual_id_fkey;
       public          beacon    false    242    3133    227            r           2606    16797 8   ontology_term_table ontology_term_table_ontology_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.ontology_term_table
    ADD CONSTRAINT ontology_term_table_ontology_id_fkey FOREIGN KEY (ontology_id) REFERENCES public.ontology_table(id);
 b   ALTER TABLE ONLY public.ontology_term_table DROP CONSTRAINT ontology_term_table_ontology_id_fkey;
       public          beacon    false    235    231    3137            q           2606    16802 >   individual_disease_table patient_disease_table_patient_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.individual_disease_table
    ADD CONSTRAINT patient_disease_table_patient_id_fkey FOREIGN KEY (individual_id) REFERENCES public.individual_table(id);
 h   ALTER TABLE ONLY public.individual_disease_table DROP CONSTRAINT patient_disease_table_patient_id_fkey;
       public          beacon    false    227    3133    233            z           2606    16807    sample_table patient_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.sample_table
    ADD CONSTRAINT patient_id FOREIGN KEY (individual_id) REFERENCES public.individual_table(id);
 A   ALTER TABLE ONLY public.sample_table DROP CONSTRAINT patient_id;
       public          beacon    false    252    3133    227            u           2606    16812 @   individual_pedigree_table patient_pedigree_table_patient_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.individual_pedigree_table
    ADD CONSTRAINT patient_pedigree_table_patient_id_fkey FOREIGN KEY (individual_id) REFERENCES public.individual_table(id);
 j   ALTER TABLE ONLY public.individual_pedigree_table DROP CONSTRAINT patient_pedigree_table_patient_id_fkey;
       public          beacon    false    227    3133    239            v           2606    16817 A   individual_pedigree_table patient_pedigree_table_pedigree_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.individual_pedigree_table
    ADD CONSTRAINT patient_pedigree_table_pedigree_id_fkey FOREIGN KEY (pedigree_id) REFERENCES public.pedigree_table(id);
 k   ALTER TABLE ONLY public.individual_pedigree_table DROP CONSTRAINT patient_pedigree_table_pedigree_id_fkey;
       public          beacon    false    240    3149    239            x           2606    16822 <   sample_handover_table sample_handover_table_handover_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.sample_handover_table
    ADD CONSTRAINT sample_handover_table_handover_id_fkey FOREIGN KEY (handover_id) REFERENCES public.handover_table(id);
 f   ALTER TABLE ONLY public.sample_handover_table DROP CONSTRAINT sample_handover_table_handover_id_fkey;
       public          beacon    false    251    225    3131            y           2606    16827 :   sample_handover_table sample_handover_table_sample_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.sample_handover_table
    ADD CONSTRAINT sample_handover_table_sample_id_fkey FOREIGN KEY (sample_id) REFERENCES public.sample_table(id);
 d   ALTER TABLE ONLY public.sample_handover_table DROP CONSTRAINT sample_handover_table_sample_id_fkey;
       public          beacon    false    251    252    3155            |           2606    16832 8   variant_sample_table variant_sample_table_sample_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.variant_sample_table
    ADD CONSTRAINT variant_sample_table_sample_id_fkey FOREIGN KEY (sample_id) REFERENCES public.sample_table(id);
 b   ALTER TABLE ONLY public.variant_sample_table DROP CONSTRAINT variant_sample_table_sample_id_fkey;
       public          beacon    false    259    3155    252            }           2606    16837 9   variant_sample_table variant_sample_table_variant_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.variant_sample_table
    ADD CONSTRAINT variant_sample_table_variant_id_fkey FOREIGN KEY (variant_id) REFERENCES public.variant_table(id);
 c   ALTER TABLE ONLY public.variant_sample_table DROP CONSTRAINT variant_sample_table_variant_id_fkey;
       public          beacon    false    259    257    3164            {           2606    16842 +   variant_table variant_table_dataset_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.variant_table
    ADD CONSTRAINT variant_table_dataset_id_fkey FOREIGN KEY (dataset_id) REFERENCES public.dataset_table(id);
 U   ALTER TABLE ONLY public.variant_table DROP CONSTRAINT variant_table_dataset_id_fkey;
       public          beacon    false    257    212    3119            ~           2606    16847 1   tmp_sample_table tmp_sample_table_dataset_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY tmp.tmp_sample_table
    ADD CONSTRAINT tmp_sample_table_dataset_id_fkey FOREIGN KEY (dataset_id) REFERENCES public.dataset_table(id);
 X   ALTER TABLE ONLY tmp.tmp_sample_table DROP CONSTRAINT tmp_sample_table_dataset_id_fkey;
       tmp          beacon    false    3119    212    261           