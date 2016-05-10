/*
Copyright 2016 Bowler Hat LLC

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to
deal in the Software without restriction, including without limitation the
rights to use, copy, modify, merge, publish, distribute, sublicense, and/or
sell copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS
IN THE SOFTWARE.
*/
package nextgenas
{
	/**
	 * Utilities for manipulating untyped JavaScript objects in ActionScript.
	 */
	public class Unsafe
	{
		/**
		 * An alternative to normal ActionScript casting that completely
		 * bypasses type coercion. In other words, the result may be assigned to
		 * any type without generating a compile-time error. Useful for
		 * converting untyped JavaScript objects into typed ActionScript
		 * objects.
		 *
		 * <listing version="3.0">
		 * var point:Object = { x: 2, y: 10 };
		 * var result:IPoint = Unsafe.cast( point );</listing>
		 *
		 * <p><strong>Warning:</strong> Take extra caution when using
		 * <code>Unsafe.cast()</code> because it will completely bypass both
		 * compile-time and run-time type checks. If the result is assigned to
		 * an incompatible type, the error may not be immediately apparent. The
		 * symptoms may manifest far away from where the cast occurred as the
		 * object silently propagates into other code.</p>
		 *
		 * <p>While the return value of <code>Unsafe.cast()</code> may be
		 * assigned to any type, that does not mean that the object's actual
		 * type has been modified in any way. If the same object and the same
		 * type are passed to the <code>is</code> operator after the cast, the
		 * result may be <code>false</code>. Similarly, if they are passed to
		 * the <code>as</code> operator, the result may be
		 * <code>null</code>.</p>
		 */
		public static function cast(target:*):*
		{
			return target;
		}
	}
}
