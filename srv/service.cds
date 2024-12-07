using {quota_arrangement_api} from '../db/schema.cds';

service QuotaArrSrv {
    entity QuotaArrangements as projection on quota_arrangement_api.QuotaArrangements;
}