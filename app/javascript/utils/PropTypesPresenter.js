import PropTypes from 'prop-types';
import { prop, keys, forEach, pipe, forEachObjIndexed } from 'ramda';

export default class PropTypesPresenter {
  constructor(propTypes, methods) {
    this.ownPropTypes = propTypes;

    pipe(
      keys,
      forEach((name) => {
        this[name] = prop(name);
      }),
    )(propTypes);

    forEachObjIndexed((method, name) => {
      this[name] = method.bind(this);
    })(methods);
  }

  shape() {
    return PropTypes.shape(this.ownPropTypes);
  }
}
