import makeStyles from '@material-ui/core/styles/makeStyles';

const useStyles = makeStyles({
  modal: {
    display: 'flex',
    alignItems: 'center',
    justifyContent: 'center',
    outline: 0,
  },

  root: {
    width: 465,
  },

  actions: {
    display: 'flex',
    justifyContent: 'right',
  },

  form: {
    display: 'flex',
    flexDirection: 'column',
  },
});

export default useStyles;
