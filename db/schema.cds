namespace quota_arrangement_api;

using { API_PUR_QUOTA_ARRANGEMENT_SRV as qa } from '../srv/external/API_PUR_QUOTA_ARRANGEMENT_SRV.csn';

entity QuotaArrangements as projection on qa.A_PurchasingQuotaArrangement {
    key QuotaArrangement,
        Material,
        Plant,
        UserDescription
}
