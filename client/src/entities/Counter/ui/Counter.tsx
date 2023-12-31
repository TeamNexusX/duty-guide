import { classNames } from 'shared/lib/classNames/classNames';
import { memo } from 'react';
import { Button } from 'shared/UI/Button/Button';
import { useDispatch, useSelector } from 'react-redux';
import { CounterActions } from '../model/slices/CounterSlice';
import { getCounterValue } from '../model/selectors/CounterSelector';

interface CounterUIProps {
    className?: string;
}

export const Counter = memo((props: CounterUIProps) => {
    const {
        className,
    } = props;

    const dispatch = useDispatch();
    const value = useSelector(getCounterValue);

    const increment = () => {
        dispatch(CounterActions.increment());
    };
    const decrement = () => {
        dispatch(CounterActions.decrement());
    };

    return (
        <div className={classNames('', {}, [className])}>
            <h1>
                Счет:
                {` ${value}`}
            </h1>
            <Button onClick={decrement}>Уменьшить</Button>
            <Button onClick={increment}>Увеличить</Button>
        </div>
    );
});
