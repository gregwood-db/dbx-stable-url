async function handler(event) {

    // these should be stored in a KeyValueStore
    const warehouseID = "<insert warehouse ID";
    const WSID = "<insert databricks workspace URL (no https://)>";
    const newurl = `https://${WSID}/sql/1.0/warehouses/${warehouseID}`;

    const response = {
        statusCode: 302,
        statusDescription: 'Found',
        headers:
            { "location": { "value": newurl } }
        }

    return response;
}