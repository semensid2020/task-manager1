import { pick, propOr } from 'ramda';
import TaskPresenter from 'presenters/TaskPresenter';

export default {
  defaultAttributes(attributes) {
    return {
      name: '',
      description: '',
      ...attributes,
    };
  },

  attributesToSubmit(task) {
    const pertmittedKeys = ['id', 'name', 'description'];

    return {
      ...pick(pertmittedKeys, task),
      assigneeId: propOr(null, 'id', TaskPresenter.assignee(task)),
      authorId: propOr(null, 'id', TaskPresenter.author(task)),
    };
  },
};
