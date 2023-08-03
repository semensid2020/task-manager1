import PropTypes from 'prop-types';
import PropTypesPresenter from 'utils/PropTypesPresenter';
import UserPresenter from './UserPresenter';

export default new PropTypesPresenter({
  id: PropTypes.number,
  name: PropTypes.string.isRequired,
  description: PropTypes.string.isRequired,
  state: PropTypes.string,
  transitions: PropTypes.arrayOf(PropTypes.shape()),
  author: UserPresenter.shape(),
  assignee: UserPresenter.shape(),
});
