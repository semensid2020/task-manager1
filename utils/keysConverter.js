import humps from 'humps';

export const decamelize = (obj) => humps.decamelizeKeys(obj);
export const camelize = (obj) => humps.camelizeKeys(obj);
