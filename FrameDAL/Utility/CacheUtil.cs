using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace FrameDAL.Utility
{
    public static class CacheUtil
    {
        public delegate bool CacheGetter<TData>(out TData data);

        public static TValue Get<TValue>(CacheGetter<TValue> cacheGetter, Action<TValue> cacheSetter, Func<TValue> sourceGetter)
        {
            TValue data;
            if (cacheGetter(out data))
            {
                return data;
            }
            data = sourceGetter();
            cacheSetter(data);
            return data;
        }

        public static TValue GetSync<TValue>(CacheGetter<TValue> cacheGetter, Action<TValue> cacheSetter, Func<TValue> sourceGetter, object mutex)
        {
            lock (mutex)
            {
                TValue data;
                if (cacheGetter(out data))
                {
                    return data;
                }
                data = sourceGetter();
                cacheSetter(data);
                return data;
            }
        }

        public static TValue TryGet<TKey, TValue>(this Dictionary<TKey, TValue> cache, TKey key, Func<TValue> sourceGetter)
        {
            return GetSync(
                delegate(out TValue value)
                {
                    bool contains = cache.ContainsKey(key);
                    value = contains ? cache[key] : default(TValue);
                    return contains;
                },
                value => cache.Add(key, value),
                sourceGetter,
                cache);
        }
    }
}
