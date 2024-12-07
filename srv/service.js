const cds = require('@sap/cds');

module.exports = cds.service.impl( async function () {
    const QASrv = await cds.connect.to("API_PUR_QUOTA_ARRANGEMENT_SRV");
    this.on("READ", "QuotaArrangements", async (req) => {
        return await QASrv.transaction(req).send({
            query: req.query,
            headers: {
                apikey: process.env.apikey
            }
        })
    })
})