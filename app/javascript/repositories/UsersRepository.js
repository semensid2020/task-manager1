import routes from 'routes';
import FetchHelper from 'utils/fetchHelper';

export default {
  index(params) {
    const path = routes.apiV1UsersPath();
    return FetchHelper.get(path, params);
  },

  show(id) {
    const path = routes.apiV1UserPath(id);
    return FetchHelper.get(path);
  },
};
