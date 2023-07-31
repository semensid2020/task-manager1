import React from 'react';
import PropTypes from 'prop-types';

import Card from '@material-ui/core/Card';
import CardHeader from '@material-ui/core/CardHeader';
import CardContent from '@material-ui/core/CardContent';
import Typography from '@material-ui/core/Typography';

import useStyles from './useStyles.js';

function Task({ task }) {
  const styles = useStyles();

  return (
    <Card className={styles.root}>
      <CardHeader title={task.name} />
      <CardContent>
        <Typography variant="body2" color="textSecondary" component="p">
          {task.description}
        </Typography>
      </CardContent>
    </Card>
  );
}

Task.propTypes = {
  task: PropTypes.shape().isRequired,
};

export default Task;
